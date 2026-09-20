Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4DF36D9FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789897234; cv=none; b=l6K+ENYqMygPwxBLvHtaBqOM/qIcTSS2WnfOdGUrmSwYcJtDsRxiS9QAHFbYMMmYOcmLTu9AeDVDodaCOIq2mZSkkwsA8VktWEizbaz2FO7IN9EnsE/dO5eQ36Tigo5bv4mrNwB4DOKbQ37Z1pJK9JHArtSrHy0MPNCLpC8Lh0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789897234; c=relaxed/simple;
	bh=UhXMeNeh0USrYYivdtEqUFqsz5PET58WL2PTJjA6Hds=;
	h=To:Subject:From:Message-Id:Date; b=YoXkyaOT4eSenAh+eWQ8JDvb9Bz1zOgSGoqbDuxDOji170/YdQ9We4cvh29Qnb7hSTitD44qhYs2tS0ODLg+BYctHXPV2FJHmoPO/ruaBfAaYsDgnOcnuv2d7CM2wtbHGiFaqgzqHBJ0xua5Ozue63bYyp259G6eGkaI2WET6zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xl7dXRII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xl7dXRII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE110C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789897233;
	bh=UhXMeNeh0USrYYivdtEqUFqsz5PET58WL2PTJjA6Hds=;
	h=To:Subject:From:Date:From;
	b=Xl7dXRIIBwYnLzgTUYqUqyG0y6/+fB1iIpj4HlqktSRCoC5yCEKIOSYiANuhAA/3C
	 MKnDlyZaNyLNwhciBt/CLMWgZWpdRUwGoLeLqPuKYwPmAfRACLtEokHRpcYJrKHSHC
	 snpXgFyY90sT3NDa6UC5aoOKIlLTlCeMGFfNwrGV3XoIL9t4Yv/6HfIN8dGjNGzrih
	 I19R2kMjYYwBLuS9JxZhUm77W62Ax4X6G1TcUX1UtQc0LScnPl+XP1wQJqBdllScMz
	 K2jRnnZb6C2UraBpQoYNmbMfb+yG2czk3jBsnTt0tvc0zTFTfdU8658CmYRMJIjsiU
	 ySWUj0kBVyw+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA142C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989723368.20031.1652817490326189853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0ee0dfd54ceca643e97c16f1cc48809063f2956602a34c1ff008fd9f45bf06
Date: Sun, 20 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789897233
