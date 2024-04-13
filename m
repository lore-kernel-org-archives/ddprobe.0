Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531432576B
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713001763; cv=none; b=Cj0Z2vXduNFwklkms2QBjyCOdLzCYNMdu7UEKhaNeEebr556v+UEMjnKD+KADHivOSxNwAZ+3eNKL/c4W2LQLE/lllsB6XMB1/UFfrhLveOfl33qqywuzYaz1mdaIiwXBjqUipM0SRQjZNP9vQDVJqVoorEIzn00sjuQW9wWkyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713001763; c=relaxed/simple;
	bh=xMU0DBjOFhCSaCAqg0RjVA1M6v+23jRCRhSfApL6F3A=;
	h=To:Subject:From:Message-Id:Date; b=S4HREiLPmx94whsKYovyeSDUL4z1keMEM5BAWNFq/dTOsNU0OI1wJzoiDN0Pz0yM8oBN+KYwIge5qH259ed+iL6Zcl4kEvx4P60kosZFEZskm4TtT6tetmWrcvGkIIeeatjMTnXnU4goQLJAbz0eitM94mpnbxoLSVF3cqIsGT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dh6k3VJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dh6k3VJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0B8C4AF19
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713001762;
	bh=xMU0DBjOFhCSaCAqg0RjVA1M6v+23jRCRhSfApL6F3A=;
	h=To:Subject:From:Date:From;
	b=dh6k3VJcNNI04Amu846xn7htCfED5Ec8W6OcoYNQl40a56R7cbX5+mXFzSQc2eA6R
	 rrtzCu8qfNnDCXZkLhbML2Wdf00iRhWZiVsnN0hjmZpF3e3t9nGrqvAU0JSKX/6T8P
	 d5sO/oUXxUkxlUtWds7YjSZipmmYHFTn4z5iaXjAlm6Zb8uv8aQhK6q6m/iDJNnZjS
	 PeQ27PNfk3VPRzdvs8fxlAfhB2Tge+45fBolMjJxBHEjC+Z5Jn2HBetxHh40p1Ah6a
	 4YLxv3S9uL8hx/rsuLa2SvD70uKZ7VNWKBOZeMvVmva9yabCYIqujq2dTB1MqsFM2Y
	 jA1KWj+dwkJmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB112C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171300176275.21044.17541921040824224027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fed486fc6d7c628244c648cea09a522f15e0dea2fb0e98f0909258eb5e6dc4
Date: Sat, 13 Apr 2024 09:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713001762
