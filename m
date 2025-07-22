Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3450821FF28
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753199394; cv=none; b=Dg6KNdFD39LEaXP717a9/2KDOlRIjKqbvaVlsmIaK4agNhDKAJxCJGNDNA4z6LE2LVlh38nIOh3ysQuQqAMbOpeKKkvaNYyvYazPUQGUL0Km3Ik42/Eh/zXdAUNdpWIg6csmuF2JbnwBTlIvLlrtKnoZ69+0Dxh+5zXv0Ab7JqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753199394; c=relaxed/simple;
	bh=PF3oQk6GzIXhCtSkVItvLCabbcZo4GdyYFLt7nfborA=;
	h=To:Subject:From:Message-Id:Date; b=VJjx1MMv4si4KoBFrmH12vNW6JkOoEIQEmJ3/b1sMnFIdmfZrGy0kDTFZNeRX8mVF4F5odNohX1NErR9EbZQBcF8xNKBn9C3S6U3uIce9uWedDSzYqB3l/t5N1KIYwms7qs8TKEJPSYEj5h2OuKNgv/+HoxqysLk8wFPNP+pB3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIE9+ex7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIE9+ex7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF324C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753199393;
	bh=PF3oQk6GzIXhCtSkVItvLCabbcZo4GdyYFLt7nfborA=;
	h=To:Subject:From:Date:From;
	b=rIE9+ex76NrlZoSmUkG45GZ3zSpa5Lg6z+ixtPQUIxpiLFhPssykAWpVJVsMnWp/4
	 yeNfG5IdkQPV9x83ma7PfZ3c0cegjxHffCT57Chrxgf6SskUeS83cOt6M+i9MdGpda
	 GLmilNGF6ibwFk4Wf4j9NrJnmUK2JON1iOn5ETOoZ687eS95SFUcOpt8LXuMGxOQ7y
	 NbwMspicNautKdXlnLpclTD9EwxD/uNFdLFKRas24qipzjCfnNuTTaAYtU6PSsgNrn
	 6BAy0wAvxLO683UAqAbZKX5nTsGNWtSEfSlNijh40c+HhzWN8ltR82qtD5lYvSX5yN
	 +0/xbw/1qPJ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96871C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319939358.26780.10056000368019314743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e495a1674f99541726448b6bed7f9dbe0ecc2d2579d85945a1eda788a6cfeb
Date: Tue, 22 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753199393
