Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1FA280328
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752330594; cv=none; b=iVmsyCDfTU0sJa0XPGcvMlajg1qPupFLC0ijW+Vf7f6lTgiI1TxYfTtlVUNLQv8nH3uciiRyvyR6RSPbKidK2pca9EV8iw1OgxnYTCFerVbTMedSDo3DxCpFXgkctuiwU1N4iUXacphbuc8jUafIz0RrRd8LP0hpPtOaF3Tt+Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752330594; c=relaxed/simple;
	bh=otzq4PtazQpYzZfgQbo770aExw3ZPSsF1kqh18xogPA=;
	h=To:Subject:From:Message-Id:Date; b=XYPPiIyMsp3QbFvUwgxzF92kj1/1/lPcQWAWri5DVYJZFJP1bpDT7NeVe3rnvUHrb3qlPA30onHEy9zK/qXV6Lq4Jng8kn8oz9RI0V9CL5Gcc/8K8/WW2e2Ser6yERzm8S6wFkZP8W//pGKYUz7uKPkLdNAu0GxliH+k6fpOsp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfUw+3Jy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfUw+3Jy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FB5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752330593;
	bh=otzq4PtazQpYzZfgQbo770aExw3ZPSsF1kqh18xogPA=;
	h=To:Subject:From:Date:From;
	b=NfUw+3JyN8WdH37WNfHAYpT2NtOhbKsYZGafbtnTx73anMSptHjF1YseQjAkATx3E
	 PPzA8O5eauGD/+6IXyPDNOQnCj6Z5Ya6jNTaFSAmP3QMtKcOPUtejwk0rw60AQsGAd
	 8UzGw9zOECpEsGSoDG6+xGLlHMUWcLgu5uc7U+bRtHaxJSoWWECfUcccvZ10L3SBX0
	 +D2yEUV5qDP09PVIstzRMtKD7Bz+hGeoNGYjgALiUn3dPWNiGCa/WEvw2Xrk6GqCYa
	 7PEedi2mRzQ0TzDuY6wqg+03Jcs9x9LAgK1Tvwm0FcA87ldSEufxZAws9eYdgPb9jy
	 IS34P/naJa6eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949C4C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233059357.6397.1929275746759125930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b00e0cb23c7f3f14322ce5f1e6e60237c3c25afc3bd36c7ec8921258b533be
Date: Sat, 12 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752330593
