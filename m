Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2FB6FC5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764560574; cv=none; b=WfnIBshW/o//UmFiwQICdYyiwCQlZobTjoKNr0XBzJxApOmg5kpQ6FSgs7soDEwl6G/rLAP/Ty1v6F/B2QkBEqG/vbmvgBk9ox+6coXQWx8CC3Hqw2I1QliEnWp50hoJ723dWHh7wW/nDj9O2r7xQ3DnvO8p2CifvUpEXnMsYG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764560574; c=relaxed/simple;
	bh=pQY03qFsVfeuZIeZIs2FroF7/1meYVGEUxDj++TeC6E=;
	h=To:Subject:From:Message-Id:Date; b=PmcnKmuYaw2ty1T/aO6QLG2pQ2Nb4uK026l2K07cY+eHH21u0xgJAr3vYfTVw0rQfACPJ7Dh/sq6DtQGPDkB0BAUZrCGNBHqFjkf7rsHbKDeZ0ysju9I7yl160fAWiUnfa+XpBR2RhuvTtAF2iz0t9WDbHxnhSbxBtk9TOULoB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6l1Unea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6l1Unea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3869C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764560573;
	bh=pQY03qFsVfeuZIeZIs2FroF7/1meYVGEUxDj++TeC6E=;
	h=To:Subject:From:Date:From;
	b=f6l1UneaPOy79Z/EeW/sIt0ooxyq+hyD55D6draHcv5IoaBDuz1gTAXAPyTM2FKTW
	 qVyq+aYWPyuui57RwNxWmyFs+ud4scw7rE7Jvfev/afNHpog0Ak4wEG5GpG2paH0d2
	 +6RQVpBeZfe7oIxmii2oMOdUh2LAOOuNzKoWGaC2GBWlnIHIBZGKgQPgMxvKDE0K3Z
	 nGOwidV6/X+Mv7Y5is8yfK+Tvp1/hPLRvewvPQjTR7+EUbCbsxH8HHi5N5JX+7Idy+
	 PEZipTawyABdgcVdKUpqKS4gGIeFTjT6ZoIis4dvHEToa20boFFfP7rmBFbhnp80Cm
	 Mv9hi524Jk1Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154DD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456057358.10345.14065503966263627880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f97b3a53155c8583802322da5b68e28907c6db0ffa8565444c68da8c68e1d3a
Date: Mon, 01 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764560573
