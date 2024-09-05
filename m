Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379B314BF85
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725534954; cv=none; b=kuVpbasgmjbCnz7YyrW9isv88xBK3SQ7L8hKyb4oQkxEdF+rudvaZU0bBsmLYH/HY9NX7xjPsAsFeKhIpnKiLAfKIbyvKMzYYR990l+Uq8yMa8fPcUWzRNQinshKGBbyUBd2W9YDzu9HVqUTdi6nostclKldhYjVu3igj1yqLTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725534954; c=relaxed/simple;
	bh=VBrfZvUSn00z9WFvg4mUNCzAytnhgO8OoLCLmb96/H4=;
	h=To:Subject:From:Message-Id:Date; b=MUaCtCOJqtqvc4eDCqyqBu87jkmBhvav+qX66qyu6I5GvsoPEkdC9yzlO4QOjgKW8869JvXjb/anIbVbqqmncf29ItBzJHVoYIfAP8nHVMPp1N0dBz9MbNHY69oSxdLqHQ6jbDBtxgdghoHbKrIbKhD/DAPKQ/olW50KRoyQioQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fu7sZQ+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fu7sZQ+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEF3C4CEC4
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725534953;
	bh=VBrfZvUSn00z9WFvg4mUNCzAytnhgO8OoLCLmb96/H4=;
	h=To:Subject:From:Date:From;
	b=fu7sZQ+sXgwIajPcMcOHGnShJ2YbzeoXOPzC/tzH8KfV5YKwjIPzDeOsqew5111+h
	 MKYGcb+DDNjKWC9gD+sz2FbfZYcZhjg+GBR7/wKq6Aug9Ecqj8w35xwXjqaH/vNhRH
	 2BLjN4CP7JCR/kDT1IVUzDLg+2jTaamZDTfgobTIDr3yumWoHmbvyqWZ/OSuhZYmt1
	 gnOjMQWO/Rg8VJI/B920VZG1Hn+GQ+BZZj6weYmMN4zWCHyUkiQXOcrncoZB4pfkX2
	 OBwCRJHmD0y6herOQNaU1gVLFtYY5EeDCgyKJpBCm3ZtpNnAZANQeiHFFsCPxHoOQL
	 coIihSAq1Z9lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98406CD5BA9
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172553495361.24634.1482404291578751232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0075d84896651e1525b5bd71e23284190c3e739fc77a8951acfb657405f16a2f
Date: Thu, 05 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725534953
