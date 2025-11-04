Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5DE338900
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762280994; cv=none; b=M4XbCR3wTfYFNNrtbCXZx0yhpz3vrY2XLULDCWPJu+O7AG6kcVQ7JUS1nhyhmx+RWxTd5edOI9kWfq6/Mcv/isn1eu32z1aAQl+lmOFzm64zgyxynT7vIQnsM3XafpT+Gjniqnzsj9zWtcQhqm5IvIy8sPKUxx7sGIbBEyiyKnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762280994; c=relaxed/simple;
	bh=cUEdAy4VWA1Gh1dlNsvOhOGI4ijnK7HURutHfNrpwSI=;
	h=To:Subject:From:Message-Id:Date; b=J5W14GcaCAO7JZ3WCF2dLrFS2GzuMKpyN+JzCIZGODLQXcoykAc6UEKnLcFrLus2Bfk2Ncb9l5Tqcu0rup4HuYDKOgTIm5s1ri9HVRufJ/YwMD3IM+e8Jgpsja6PVujEMIrAQp+qDetQfrRfFaz7pobeOaGytgYx3Jou/tNXgc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLnLusOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLnLusOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAD5C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762280993;
	bh=cUEdAy4VWA1Gh1dlNsvOhOGI4ijnK7HURutHfNrpwSI=;
	h=To:Subject:From:Date:From;
	b=MLnLusOHhs1RTMY4z84TkH26B28QNAxXYMz1yqYcYGiuWgJcaXznIWaOsffcwkUoV
	 wkTOdFagjCLVxEk3aSXM4MlS36N15PrC8TDsk7bWwp7eEaTJv8GzUFVxNoq9/8/UzT
	 pkOMYEmyGhom+OHdAuzySi5yuspvA7ZPkY05MbdYjl5Q06fHgF0AiDPaLAvEmEpXyH
	 qA2u7JMhNn9kuPv87TKBTcJq6LmPPxhf0C0qvwyXgWumKm/epFtKqAkJPV03aScEr+
	 Sgjx/QkBjl7etgQhEgQYAgjAYnJaPP9Bb+D5r+PsxfO3aBLfxTBOwU/cvA1hNCjUo2
	 wkm2SO7Bkz2ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C5ACCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228099358.12909.15425748653194364837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1792470c5e5e48433caba6c0ba491fe3224f6fb005b554095974955e2e6989ab
Date: Tue, 04 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762280993
