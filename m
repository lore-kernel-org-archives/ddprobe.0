Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4D92EBDEB
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771023894; cv=none; b=Ox1F4IDA7GFU4rN0U8RUwIDCqFcrkc/+JIkplrRwLrHm67LYXM0nsgX266fxasSI8HGkW52jQW/Wr4zsOi0QxJorsiL2QK+zVWt/m6r0pnrQt0wGpZEAidO42BSrFmBcpJrQ6IFnywiFkSOhM3APOB/Dw6KpvqSTceYM1szZ9iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771023894; c=relaxed/simple;
	bh=x5CDH4BCiyOOuPIw8BQSZCtfU8N5sBorXpjL/yT1arI=;
	h=To:Subject:From:Message-Id:Date; b=XUOE8u1h3qwtkMGatDkbbug56mIBTYtsOU+pVgQSxsRA/Fk0ZOkR+r9DrwzyWBfRzoXoXa/pNKEGesVZIiPWF8qoRLoAO7Gg0eciNqm1hQYKHE+MLuqtIsCVosYDyzzlU4NCoFyZHGlOCKT34PPXNqbwfQ38MTsZn7knJxZKhJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlPJto/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlPJto/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E78C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771023893;
	bh=x5CDH4BCiyOOuPIw8BQSZCtfU8N5sBorXpjL/yT1arI=;
	h=To:Subject:From:Date:From;
	b=qlPJto/PkmEYhoqdgijpC4GzxuDcs2hcxJUPYGckNMzPpTCwfD9Svi2rKlEynd0Rh
	 PW+BihqmcD70bqWjDIynm7se+TBpKunpyVzrKVsBjWbNWR8yoB2xus8N8EndrdiWCf
	 BZLwsyuzUXuVM9ed47B+Cw9++IJ/HWWXu9DFCnphPLEIATO+AXpMtpRt7FFKkxo8/K
	 7zZxH5LUXjECO3dGuS0CgpwX7gHsv7D4QX9523hZBBBvca0eont3u6dIzR4CAdxP0L
	 Dx867/0CZi28z24qGDpfXbq6YceLLT9F20Ie+HMQLFB2tZmgXy5ewXNEXzqOGQqxnz
	 CnSZt1kbU53qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950F6EF99E7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102389360.27638.6831663033538180782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e66eb07f24da6c31789da11eb8f0d6d3c5f05ce93f085b1be05084255eb0cc
Date: Fri, 13 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771023893
