Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20992254AE1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760179794; cv=none; b=tRXryGYnuAr6tMEFVVHqR7lXJ/l7DYYJK4lkmRN5WHbPHnfZ3sWLQ20epuHdJc5Aa48OrJX8I7HA7hu1Ih+QSsXKMPhdIktesTuIyGu3F5m1tO2U+gAljTVTuUBYQIejeaSab7omziue9LBAAlQsPxM0nZm6YQCSmE8gFUnQc9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760179794; c=relaxed/simple;
	bh=8j+HjljGRB6nr3kIfpgMxNCdLZYyS7UeOMr8GVRmcos=;
	h=To:Subject:From:Message-Id:Date; b=hKvkHaUWeWw7vgTKXOfOK79boW6vOjKwjIuRV/xOLELZ/JYBBgPXdS2qOmtkXoe6KOrjJPQDYKafXWcZunQ59raqbWSPEbijq2Ig3gvAMnqWNelbeMmnjlRaeYUGH6sfJOIudiHAwtlgso0cX9B6xBJaEmmTbv/DfNAoRXvWpAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhihKV/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhihKV/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3999C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760179793;
	bh=8j+HjljGRB6nr3kIfpgMxNCdLZYyS7UeOMr8GVRmcos=;
	h=To:Subject:From:Date:From;
	b=XhihKV/ns5ZMEaDmlRFnuRTaXwCmhcW4T9cXJnxutVpgIf3eYn4Pv6GKVXPYDZuEf
	 AQdIiMW1AtOf68/PI3Mn2oLz5I47Rb0tRB+z+5DOd9Uil4KFhp7wIr1hXy68sMwbwQ
	 pz20q2dHW1e3W3G/EBJjISjx4MPYOxvS18xc/qIdao6A+1S3C40wMNjnj1vbuXc66e
	 n3l2ASrUENGRJ5FQSc54YGH5zoAIr6EhVaL50fpOQcnKzMQUvn0v8QZ51iBEXM+2IR
	 PjEE0S+ERF8onFCkbB8nBBw8DOS2xFIVV1JE1GdySrsXnArBGnNUukrcXZqWiwmiMu
	 XTQLF1hb4gRwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247CCCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017979359.25457.4872011406764488949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4fc1182676c5fb16a65d083184d42415df3a9552e5980b862b041208b4697f
Date: Sat, 11 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760179793
