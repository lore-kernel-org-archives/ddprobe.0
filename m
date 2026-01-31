Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED332139C9
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769852034; cv=none; b=WaSzHJB/3Rg/yaE+oNEsVKsjXBxvcqXZaNuVpu/lpBplbcr99JbGZTnsxan86AXlQ8Gck7cGttYDoKA59mfAtWNZE+1XoP84fVcOSiFbWVoukPLYLoslfPB9YKfoCzWuUCkv+SLR1h7pRZmrUA9+DcxCZft9bIo2NhZf5oQhr6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769852034; c=relaxed/simple;
	bh=56qTybccmsytrQYYPWPechqsEtt3TNhSlEBewbAh60c=;
	h=To:Subject:From:Message-Id:Date; b=eqk0ovSDgJcBqggJ50qgz+IH46el3SVUffte25AH8DLTCYGx/VG5mwoWORdrfWCJp1PiQhfLTLwAB/PWVEzeVfPtc8eVqMFryENyS2fxNqwPfH/g7GiQnqKYreu1Rz9ERhrRQmnlZ1EmSKu4ULRtIWQbz03PiTZKjvmcBoo6JlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpXz7kV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpXz7kV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E58C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769852033;
	bh=56qTybccmsytrQYYPWPechqsEtt3TNhSlEBewbAh60c=;
	h=To:Subject:From:Date:From;
	b=tpXz7kV/L3gZByqFaTYDFkREAa5F0OLHa/d7KLR+J1QjOFx9pnkNS7J7LxIz8+eum
	 9F6kwzKv+hLIUwM9sDIqebVCFWhf8f+mIRbdUBcBH8lO0kgUXXBt8Ewfvvc57KLcld
	 WZMp8fQ7WdNmv//T8QguvWdJYJSPWlpeS/U1escOrQSS4Ro0bHClPeoy+0sUn0nnAF
	 6y+nuKvZ70B2RvgqD8eIr2ECoSrnqhIZvQN9odcU6sxP8DrC3yso6rT7vYO0H0nF6G
	 kP0wrbKFvBZhJHtO3FFBygyl0LoVCLKH2ayLQwVmIY4/y5ZKEsYcjU+LzPJHbPohJB
	 liakbzWBZUAfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDAD79768
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985203358.548.9502005698719359246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8829e5eb9471014c44548b1c8022a4ac6cc634122347e3040ed4b79110383b31
Date: Sat, 31 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769852033
