Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D635275AC
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790068234; cv=none; b=rGfLlH2yKCXpm8hhwOMzwpu7iYVOmrWjhlUTjqx8Daa5zu83KBhuw+zVtfn+IEMrIj0enQJmvYprgh504SRpZqMFLia1ca4Sl0wpzZ/5csVixxukOkqtpWR4mcC15VDLAdDE+4lOs37Pf5wBLehjsGVhIGoCHpSe+TGpRu57CYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790068234; c=relaxed/simple;
	bh=Ubu7Cxfaa0u6i+0QgSi/BEZWgTZ2D/La//0zcCViik4=;
	h=To:Subject:From:Message-Id:Date; b=J10uLBR/OIxd3Y+4q5IIZGomuHz/BWZr92PyBHCRLIQYRXiVY0B8lHxyhrU13Uu13NNQj5Ts/PwREEuPdBi/FD2IN3TNiTGruRkMBEE/eXI20ng104hm3nvxS2ASRwAYdKlIx5zsum1ynv7YTemTNLJdOapps1nFpFmN5XPZBbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2JWAmUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2JWAmUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD249C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790068233;
	bh=Ubu7Cxfaa0u6i+0QgSi/BEZWgTZ2D/La//0zcCViik4=;
	h=To:Subject:From:Date:From;
	b=m2JWAmUi1fHLGLcb+dNF+ypRml1jnX7RAwbtHueO5K+NaFA7tgFLw8A+Q/HUzZrvQ
	 Q6LjcsQOF6cU3yJfW6ylgdSW0JrigJCbMm6h7mVwqHAAfEyizTWaB+LYUBXP+XH/tp
	 zExf5CjUp8IumT6Fp5ktaUMos9E3uT23we3jq3TmHOg3Ns+3o6/+jv6ENRmVN6oCHf
	 7dVXAWvIJEuvuu6BEbifTSF0prbUbjMpwU+lZdz/qus1Q3GiIkDIS34oKcm2bEcWgO
	 ul28Ht1A4ueLr1D22NZwAK2ZJIWsCVZlU21xneylbP4LzzCYOMLmpWmDKoGCRXe+RY
	 TFcVSbsidZkMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB577C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006823369.27708.3878954276534574416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b03ff596380bfab2e649e5cdff3fc15297c531244a933f854bf87c25d3cf38e
Date: Tue, 22 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790068233
