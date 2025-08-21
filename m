Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47797194124
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755742194; cv=none; b=eVBlb6Eb7BivjQMDSDjsdZeBBfRJXzoM9HWeykko82OqMHvuy67rvcc+4JLFXK7kX5vGaF+dqqaL7/47quKKS7sIFwARaHiLsU38i+DvP4EiWUXJKwBq0/fglMgZ48PF7TD4HTWDRbsTmozT8J+ImP2Jp7kia/6D2Ee5YxqqcTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755742194; c=relaxed/simple;
	bh=xlrL5RIv3+PS9hNL6EgHEAGETgGFt6IPk4UqTR6twXo=;
	h=To:Subject:From:Message-Id:Date; b=cKGJZHRBrzDieYFeVvO4FP7J5e9u/FoPPg5cVSeNjHRYTAsAMOCLt90Tg+y13ihnctmUYhxx6d/k4WlrkbudlJ0XMguNvHUDj3CaYEp7awDpfGcmvD3Vn63y5sKqsx/W7m6gZP3/0sglzgD6qW194ohzyGQ9ydCKpvOlH9ocw/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtTKug8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtTKug8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755742193;
	bh=xlrL5RIv3+PS9hNL6EgHEAGETgGFt6IPk4UqTR6twXo=;
	h=To:Subject:From:Date:From;
	b=qtTKug8zthUhPLV2hDHQ1s1SzlTtMEirMSa+UdGvmwG29oHh7ReIaJoHnSbJ+H2mC
	 AclZmK/FtPYg6VBf0miri7K8K86Ff4Bg1mOIA2fbnDNmem5eGM8EBv7eAm3zQi0XKg
	 GyMIohQoABZzI4HRxI3e4wvMCBdR8kmzvnGfWoTHWg30kBdkjLzn5/g/04MoDfbHS/
	 e3WmX6C7seiLLeWgMhyNX7TDxVshzT5Gww8jHtZqhjBGvx2C5hPdSkssUFaRTTXHA/
	 MjGGtTkZyiYxMHZuW+oYnCuInuh7T719DHryyDhtCogbs4eValKn0cFXUdJC55jOMm
	 AgO1ksDNc6d1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FF7CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574219357.18378.11821951110917985970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e94b1821ef8e4af47745d0059e9bf3aadb7b019f667114aafb6fd9ed9671eb
Date: Thu, 21 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755742193
