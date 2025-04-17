Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64F225743F
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744915793; cv=none; b=EdGEskzMgzF/4Wt085av2Rkj5eHGrOO2wWjsOf3KAhNH0JRKBRyoQRp9cbx0hNPmr9pm7zIp9avpidVTQl9yaV7gAUtpZ14pOd2qI5kyd+yCLrrciGER39EgRNlunCis4J+A9hbzcvxRzXC9O6n7bXvXKIZIb4/JvEyhT9OJOdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744915793; c=relaxed/simple;
	bh=5cgz4LsLjaIzy9WVER/xw56FuMMxnEAkMPyqn9Eknb8=;
	h=To:Subject:From:Message-Id:Date; b=kWcCMYAgE61lZeaEsX/ry5wE/ipctGDAZaylujSGylcG2MdyHoXYl/7kciGCfEveE3E2guXO2heLzNRtVxVQ7GzleiVMVMyzItsr+mv4T7cvEsYVA430mOTaO4oS4SZm9p/3aShG/7GR4GbgCEewrOw2/+GtNlOREfScjgPsgoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fsm9WArU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fsm9WArU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DF2C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744915793;
	bh=5cgz4LsLjaIzy9WVER/xw56FuMMxnEAkMPyqn9Eknb8=;
	h=To:Subject:From:Date:From;
	b=Fsm9WArU14i9V3ToTAeiYhcqis9VIuYMGoIWHvT/CjGOBWaGg9v+XY5m2HjweNjrG
	 xn6PvyCusonjuzA6u0BC74Dj3MtkAdfNoNJQ2ij0miVNlA4z9AQcb87osl7WKGucQo
	 6h4f2fAVoDkCDJW6Slg8Vr6aW9gDRXEJE2LV5KYGyaSVYLCPVcVp555FU5V33RnhT4
	 XRbiKyUgbhIHHuiWsMbvvv59eEjwKjCU32JoLcgZ9cL6mFaGfpY+EocOm8sizVTg70
	 oJBedXjxd06jRmYy5GAdKOqIjjuhdP9au+pnnuG9a2k+PdTMqOMZ5I42QPmzOI49Ec
	 KTBAcT2m4vYIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91456C369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174491579358.11349.369572511211629133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832941fad2e7c8042d2b99f4c768df4f182a9fe6a3134a73e3e4ba16989aa62a
Date: Thu, 17 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744915793
