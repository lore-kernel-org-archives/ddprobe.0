Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C842F22D9ED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750722593; cv=none; b=cVav+Ywm3T9NefU0VCimblbMpl2aIoF2TTqhTe48qeQi+ZBn+qfH9QtXBlMpsJNXKWh86hEEe36gI25zoIS7W36SqZ3RZzYHXhBNKGRdZfGv9QO3TfGQB5dM9O4gAIK+tQcvYRoQtFhXgb4plVaF4Hm5Avq+BMT6Ct5dKar8h+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750722593; c=relaxed/simple;
	bh=TVeQYPXnsP03ZiFXw8fclYq8zgPCOYRKhLd9TsM0lII=;
	h=To:Subject:From:Message-Id:Date; b=OCXEamSBwwzsVi+6FJL0ESCXVjY7IX45uKG4Gn3K9OsxccO+vya4k38UBmc0R3koNIulRlqH+djsdK2+W0d3HfhtN22vba5W9BMJUbe0hUMFcHNp5Un1vhMZ1JHcOmsWAEPxix8GpO+NodV8tD8/GUx2K7nBetWryGxdArzuFr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBxOBpQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBxOBpQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A66C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750722593;
	bh=TVeQYPXnsP03ZiFXw8fclYq8zgPCOYRKhLd9TsM0lII=;
	h=To:Subject:From:Date:From;
	b=oBxOBpQbc1y9IH/XHeIr6TlSAMO2M5g0507H0yKM3AEP/c3nvJWBlLOZSlR1zyMvY
	 4I79JvPgQ015IDlWg9ZxSifh2mkUAKWYoaaE68TO4iipqD5bKJfHd6Miw0ZRd6aGjX
	 x15bvswdO+WkDX6wmsB2Z9EaRy8VjzkhvFl88jo8H33MnbHAEj2WjaJYypV8rD8KWk
	 vRUn1klLrZ4pMnWOwV0mGcDE2ahWCYHEwYaQvambzV/B1IZ/yy3fUnYuakKl4+8wqm
	 XgIhbX88yakeCD1HMBAIAJDPzdBERnO1TmlRkD+2wJ4KvGn98I2FhiTwovR/A2BkMA
	 v2J4uV8WQyd4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98468C7EE30
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072259358.11847.15342841383879775261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6382f5d15bf518ebd5372d0ef6c197b82c1de24e81e20f512e589ec3da56004
Date: Mon, 23 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750722593
