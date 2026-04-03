Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2333C8702
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775236534; cv=none; b=UYGRfkMGZTQwBtd6z7hzcM+QlW58ZbfGodLTFLWpV/u3Y3eNczIPMoZiNmhEMiXrgqvcmaeeVw/PNoM6DoUTw0ko3R3AbCyYL50z4IZsDWuIDwGMWv7qC2oomlnJTRyaVpeQ6yErm3R7qQ1RuM2tSs4IuttW8RAU14MKpJINKek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775236534; c=relaxed/simple;
	bh=VPLWemA1MvLp3pmgUyItU1ZerYrG1FMrIMQo/Dq/HOg=;
	h=To:Subject:From:Message-Id:Date; b=KG3Qaz0aC+JRQZe/YHgbJaB0iaBSagVVO9ut+m2ZQVOrIs6YyZN+vRn/WuwzKaseJTT0/OFX8SUvI9x88ng4omFfWC/WJBFpmTsGvey3Ri7vqXx+wHMJwZQnRh316RecKgE/6dsbUpgTmJ6tpXG/sb/BdUfjkglBKFIDeiVGbvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaE/r4xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaE/r4xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B28C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775236533;
	bh=VPLWemA1MvLp3pmgUyItU1ZerYrG1FMrIMQo/Dq/HOg=;
	h=To:Subject:From:Date:From;
	b=aaE/r4xeBMAQZF3qTg2aIn2oomlCzCpZIREilBNdM9xVJEHPcl4+wtjniieDmK7pW
	 e9qvAQTTBlZTOth6CmIWY6Ie7U7QloCMBWCJ9C/bGzWzANptPeVIyU+eFJ6es8nQve
	 zkHVE4XsE70Qp4WgBZcR02rNutkEWew50OsHVUH3wNchhUPxh/OwRTVoti6SRZEXlR
	 PupzAAfGb2Z3ifw7TRhJiaECYdv3XY94FzYi9kDyspgRSoh873+zLEd+7RoRBoqhRr
	 UNAN6lXfot6S07GO/IXWXi0q+dP/pBtqilrxq5m0xpyoKkyGUacr9NyL6szvZ20Sgk
	 qwXnKZIlWsuIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7533E8537A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523653374.30106.4136162876746921287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca3aa4a505c5054640c2b57aeb846cb58fcc749b21f97a3d15626a8e98dfd41
Date: Fri, 03 Apr 2026 17:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775236533
