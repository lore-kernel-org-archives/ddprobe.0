Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A61139B
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714026683; cv=none; b=GARtsOZnLaOsvpDyME9hCKgpg52sS9eXwDSw02SRyszOW4GwApYVNr3I9180UvDku0KoKHnQjx65byr1hU6/rHWynQhzNeFj5UhXT3vxwtRhgq99hB2c8KWsVUa+knt8UaLXjyijc5oh/6Uouz84wfVngKu4yQrRqHdv0OqOU/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714026683; c=relaxed/simple;
	bh=FemXk/HqA7vdknJA0MDGAWhlxOhLUF9eco+1Yw2jMvI=;
	h=To:Subject:From:Message-Id:Date; b=ncf/PV4nF8tmBAg/9BuVu980V7XBabS7vDIk4APCxWEfIwMgpyKlUV9GJ/28428+dWT7hAc8XrStjfj0ra+VyBjLvQwbpsqTyQiIsi5ia9HHOvzPrCtP0L4EA7COykn58DeXdXV+rkntwibkjccQDve32LzvgNyrdwwSQFiTcb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/fClX9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/fClX9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF69AC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714026682;
	bh=FemXk/HqA7vdknJA0MDGAWhlxOhLUF9eco+1Yw2jMvI=;
	h=To:Subject:From:Date:From;
	b=L/fClX9VnPwU7FlcY1sHG4TVG5tqqiRlCLmAyYMHgklWtItxWZPfSm0xUTFbEZYW2
	 YfAevo8S7G9ok0h7D1Umdfv2E+Vgpd5UnJ6yC2TQDSESFZ6uyxX7J4l8TJAbKXTIbf
	 E9GFas3rrZAMkV7xMaRHn5OmRKi/tqTpqoCLSo98NwqoLcHLegT6rpQfVCHTH2pr11
	 s+RLW4wWruO6weSRjXXWz610u9swklfVa/nggSxHNe+rnb1JLaDZct/DgHfl23ma8X
	 TcpH+Rm1k6SweqlBwfp4VK8W47Tn+azupTXu5wU7iRj1GrLQbt9yyk8V3RvF3X0ixQ
	 hbpt7xXwEpgjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC675C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402668282.2983.15952844874102867242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38554e7c2292d6f6253d922bbd9c85fd30b95fb1c36d5b4a15b38ae087ec058
Date: Thu, 25 Apr 2024 06:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714026682
