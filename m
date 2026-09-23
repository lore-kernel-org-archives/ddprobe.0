Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E749497B8B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790162434; cv=none; b=FT7B+Y205OLf2QU+2HReDLNh2CkVjZ+SPHuF4u5Gs5hGBIGP5hpVXIZx3ndCuuKeYqHoRuX5otXNyDWcTEQHXD6KHh2CJi+m3TehNNIfUYyFYqKIUxJQk+9KyunCqikP2YuKrmWR5ou+VksfrVnOsR+FMesS/2aN7RUpJjq2voc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790162434; c=relaxed/simple;
	bh=WWPaBdFnoOBWOx3E3vJV4eJXCESVbYDyLlU6bfXO2FU=;
	h=To:Subject:From:Message-Id:Date; b=HFIt13k8LsX21NHpYS+kZeFaUlDgBYUCf1XbeXDawxOV+s2OvYq9slqbOYpknzmjZrIczBMxBFEbbtzDYKZlFhzh7YReUGHmNFiDrKVP8UgCkucMS8kwh35xcwBo+UKBI4nr291vL7s6N2hOdrl1O0ADDsy/Ft2FAGR1GyzokRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLab2A5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLab2A5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D276DC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790162433;
	bh=WWPaBdFnoOBWOx3E3vJV4eJXCESVbYDyLlU6bfXO2FU=;
	h=To:Subject:From:Date:From;
	b=WLab2A5ibSDHC/sWzGseiCaeaHs5ccJrnJERHESGhPx7PTwoN8uJYBRdjO1hRcMFv
	 40cCbB7URcH77CQ+35kXZNfDokneaq3NyXAabQK+O7qicTVPzTwdVM8dK2NT/8gkLr
	 OStF7CpPSqVy+e2BMlm0DB8569SwGNta6qx/cBEITYpmsCONUiMBIgSMxcLfcdvEEl
	 Af5JcndsgYadLcHv2GmJndZofpNahszFhn8v1i0DXIZRNE044dGr3/HqvZAb9wqZRA
	 WnGtaG9ltWk2mJjRLswbqdPI8A4TOjLHgE90NAPXZaZOIEiKNkniEAUbCigUahHpNI
	 MNq82Q2SqcUfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAFDC982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016243370.18598.13602152504192529199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c497e7700d113241a641255f98c83bcdc44fcc16fb9976223ecf3e393a172c
Date: Wed, 23 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790162433
