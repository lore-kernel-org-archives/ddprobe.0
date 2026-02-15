Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371AE2D5C91
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771170294; cv=none; b=nOFfxOi/MlcidJsmbgSe1lGW9+BIyMqoX4qye0HUVTNPjtJSafw/lPFyiweBV8e+HI4wcRDVmuF5tB3HfSDOXR4Q8oBLUryOd087MMPgyxcs4Zu8uier5egzndiPj7aS1E+DmQIzUSn2KzH9qXFfpgcp2zEqibG5iacyRdP/W+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771170294; c=relaxed/simple;
	bh=5QB/np9eSVRzhyjq17X3SL/9/zzGxutdvsicrdYeeS8=;
	h=To:Subject:From:Message-Id:Date; b=LIC4S0hxs8aNauS8ny51KPhN6wzLUxkljoop9RxuhvycStweJMLWGf2xupNDKEPPU57LaCxbanWI1+H8uz0UjqulBGNu8R3TX1G5UzQaRpWkoBhng0TzALUtr2HnmKZ1UG12NlSIx9ajeBQLV2FakPHaSGOSsXx+HApUySrYesM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7f/rISn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7f/rISn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D22C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771170293;
	bh=5QB/np9eSVRzhyjq17X3SL/9/zzGxutdvsicrdYeeS8=;
	h=To:Subject:From:Date:From;
	b=N7f/rISn85+SOFq+jHG0sjvWMlL/B9Wt/ZaH3aDVR5zksJgd3RBGstiK3pGfTwjem
	 pgSRwbO/eZzk+o6wlomsEmOoMGwHyFJ3Y2r3CXsqO5t2iyg5ktSXjYq5QlkTZWAKK+
	 /p6lvfXLq7QMHAks41Lk5zAAzsmnxXq1cC1Z/fkoj0l3ErWCt3XtnfDpdBsTTYDLs5
	 WTQTE0h4gM4RV/Zta4StlT4hg1w2VmOgfHq54jGasOwFU12W5A0RKQNVVLj09hipCP
	 xPSmUtUEj2FKyTWPDfYQXZL08Ckz+Mrbqmw8dr9PtH/r1oji0o3kcUBVR42mEspdK8
	 YxvdsD4AI1Hcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9966EEF587B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117029359.10826.13443338696620590008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b9ba691b2f8cbe2d0ff16e0c91fc0e51c80773d17c54ed606be3b4c367e5e65
Date: Sun, 15 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771170293
