Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3DAEEBA
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772781294; cv=none; b=RpBMhxdkKoDjuDyEFUwvYg9KGI9QrJjBm0GBExDNkLVH8EZUVeLwdjCFa2ymiXNfX0z8ThbFs+Ov1CUYMvls7MBuzNWbbXM14nmYMMHGCqs5kiqtrgITZHtfEsJRNPpCVwsXXnF+4Hit7LA8NRHmJj5NNX7HU6loW2JjtOZ77gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772781294; c=relaxed/simple;
	bh=gMyyDk0MLfE/z1kA31Mb/+b9EqV9bNXFAiP29oSYmt0=;
	h=To:Subject:From:Message-Id:Date; b=NucJFRoR1D2aRg8cdyc0gg0X8C8XQ6wdhhRL6eU45ajPCAcu55nenwS6f0e4aRFqV/55pGe62RA96h731WBKgpkbE4Ed8HgpAEG3GltMs6r7yQwjT1dbF6PYIdl3tYBOYU8F/8grQEdmvUs3Nbfz5uDllS4ivO8Pm53cGvU1ADs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3dRUoXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3dRUoXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4217C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772781293;
	bh=gMyyDk0MLfE/z1kA31Mb/+b9EqV9bNXFAiP29oSYmt0=;
	h=To:Subject:From:Date:From;
	b=D3dRUoXwTl5qkGnU3dofDE1rd1L+KDLeNB/aP6bCnjfhgQe2iPB2njkH53pwbB40e
	 KQMTQpBty56sBY9jzIGCEB/qSUFtZYjKx6YabvVjCLgJzuvI8DO3CiTuA6uA6fXvKQ
	 Nz4pHakE517K+jQoBC9Qb5oo9EPWTC0TjHNRcji0z2RCM+TprpPU510Q6pcnY+qY2B
	 uEtoLNJdric+6GS8p0tnKdO1JvY8pdYcsR9ISj98k3gHccOjbTVQlG/ucQvUW787j1
	 zzWrXdxKpSne6D5bmmLdvSSEse+helolXXNyajEnV+1kloF7iI2qbhcwkNZdBMeePF
	 o2RrKZIPZxHXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90573F5140F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278129358.15799.9342103191054363192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d0bc8b3c4b6e138af897d55bce168b4745a192a541b2b3f89d90d06330f811
Date: Fri, 06 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772781293
