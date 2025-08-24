Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EB75661
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756010994; cv=none; b=Sph1eI8/N2kbIb9ihLgBvBPSGemY4EYnI4XxQPHbeTE7f3H9gUscfRnD5YOFn5w2iNgAR+VaZosWPk7jShDRB5IX6BvFzI/Ey+ENIbxTKoPmPCYz7jjNHXw28yegyF+j2LDBmhB9KB/2asA0zassGmjgSFXeiKTQ8O4VmP0ZrLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756010994; c=relaxed/simple;
	bh=w59coStoOUYXtjWwT0CYepazmPsu/fzeEMvfu2famWU=;
	h=To:Subject:From:Message-Id:Date; b=fCvaIJNG1CAmHktviBGVXPXYzwd/nxqYs/cr7XzyFI2xfQXuaF7uLe+U5p142xWbI3WnxLXcncPUrstVFFYClXjCTkNQs27KsKx38Yc66lYmr3Pdzy6oD+OR0ZHGuj1IXN1OW3saqnZ63zUkYJgtgppLpPtb/vubrUtKVzJ5Xwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3h8zm/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3h8zm/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA18C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756010993;
	bh=w59coStoOUYXtjWwT0CYepazmPsu/fzeEMvfu2famWU=;
	h=To:Subject:From:Date:From;
	b=Y3h8zm/kp+JMNi4TZGupNaspu5+WlE0wUT0eKMTQOTuuFgBuiRLCXoIw0VykA+0n1
	 jhRKRpZNUcKT+arTGO5Mh5IaalmtUqoENXXnERht2W9wdw7V91Ir7lPWQTtoAxxUFl
	 EuZ644ZE8f7yNNguI7C7+CRzMm8T8IABUFJhooDv94GS8C7PReo5AX3wfsuxOD3agW
	 zthbpvjgz0WKGwrb1a39azjOfv/AyzaFuylIgpxYqDqltv0RQp1HKlYqNN4HOkrDX0
	 lSwe2d6Fo7wFmNSTW/9Hz0icKLOcqiIYcBBrTn58xwGV4Y9+RVgjX4QRpZuLhho0nT
	 T+RlwumVkcOZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9793ECA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601099361.29587.17328006804771818816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0642289df202c93ca4fe014d95288fe1d3f8c7157e18813ce9f4535f8e5b24
Date: Sun, 24 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756010993
