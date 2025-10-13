Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7002EACE2
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760386794; cv=none; b=XmGAL5SR3+tPihgm7kDpMNLMlPdrV4pdVMgsa+OCgvSdYo1EwweHQYiyGcuYzQeD9c81To8nixgnKCXAo7z4Gnjr0Llpb88pnY8z4wa8CMcENKwtA6k3LXjntrTpTmj0ZQPnssOqKDPz46QgrScaGHvH40iOCesugpANe69KzZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760386794; c=relaxed/simple;
	bh=gdF9y48NEBEyWoMS3M6BToYB4q4RL2hugt9V5sufPMA=;
	h=To:Subject:From:Message-Id:Date; b=M2i9HVFCy9Bq0X/cz6W3hxN3AbI5pDnXiXzTjquvqv2PBiqF8fKn7Nud/lj42QVEifeYHubjPcyNbFhgFODL9EBeILk9abnJfAOws5+yhdHoQC8OyvStVTPfjBbRVTro8FbMSPU/zpunBEpg39jv31bhaXIza6Q6j2xf1vIVYwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Llxn9u09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Llxn9u09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F20FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760386793;
	bh=gdF9y48NEBEyWoMS3M6BToYB4q4RL2hugt9V5sufPMA=;
	h=To:Subject:From:Date:From;
	b=Llxn9u094/R+8Ivw0CbhAukHNL9jhd7mdhdrtHNvISeJ0VKDDfkQ7CmK/Scn+S35b
	 CH+8WKtlVjRdg5OAlr85W6/BMSy1dckhIyIgSPCn7EIpOBee+MqRb+IALzZvsixzNM
	 mJomniG84xrHEV56FpEoQ4LnQebuK0yp06qNRuVrMGy5f7VtZsNgPbu8NLpL1jrVD4
	 kb476oqENuWRP0NdIqu6pCCYQ9RppaBtAdZ/YihpZ1mDssdJPAUYjI1V6tebqoyjN7
	 Ragc5sWe23HaqwK6DycMlJfQ+c3reNipU3anJ5RkamJKL2EiYyQwJySBwHPJlAh6xx
	 ndlg9c/CzC5MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B5CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176038679357.27383.7108413021995707005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84760c5daa9c7c8734bdcaa30f7a69978ef1bcbfb97e215c3d253357c1ff062
Date: Mon, 13 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760386793
