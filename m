Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3171D27E7EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750235395; cv=none; b=Lg6m9SuDPHltbyG/MNI/moAQ4YqSx3RiZIcl2GgyTHwzMeZM95KkLuph/diD8ZhHlA2r2kB35mERJf8y91vvDCfCHD9PIk3kC1ujd8R3G7wRD5x3fVL+9+oB8B14XZNJ3Qq2HI1LHk9zbIbXu9XrRtocNxLRqkY4gvsJlVpgT4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750235395; c=relaxed/simple;
	bh=Kiej4VQH2ArCaOrK/oYCiic1ICZkjadU6IgIvCt+UDg=;
	h=To:Subject:From:Message-Id:Date; b=PHYEM6TUFGXkzkkRK3JhrrlvWqrf1OJipWPx9OkBqa2277alw1Gi+5st+9AwzaMtDR4P+rPapLUraTZhlcisElGKv4NOzdwJS4e3JIoR6/kNGDMCYT0FAVWKpyJvdlq4PfXW/+5wlLzUXhXgFwmHakPyeVgElgGHnriIaVvY63A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKmFpArh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKmFpArh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8460C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750235393;
	bh=Kiej4VQH2ArCaOrK/oYCiic1ICZkjadU6IgIvCt+UDg=;
	h=To:Subject:From:Date:From;
	b=dKmFpArhIsway1FjvhjPxqJxkBZIh8nN9kZ5GtfSbr9VAV7G24VpCnjcrpknLvHfp
	 CQDo8DHlb7jlDy4sHguUIbgB76zoNdopZ6gBkSBSDK6dKCs/sX5NtDkXtQqDjuccfn
	 TyFnL1wELztsxJCqmrsmIYBMbEuwRRHSPBYNDuJUnZA1z6e0P8gg+9ASmJtgEyMTZ+
	 d67BfTetMycYRT2CvAFPLCuJpYhtxPK7g/ECmS2K7lzoIahFNi39ociQHpUCQZEMpw
	 GmKtMEdWniGfjPo74pZ+x2Gy2TARWM7zntK5d1KcbuNKeaTvr/xZdMEzhSOg+WO/yY
	 62OKuefoUPFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F2C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023539360.32338.15650015031162943009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc129f723cf1db00c4c0696de01f859304d5379814edf0afcec2498853b8a99d
Date: Wed, 18 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750235393
