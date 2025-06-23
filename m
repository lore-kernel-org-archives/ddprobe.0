Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEA7235BEE
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750675794; cv=none; b=mADi3sbMTLE1pCx2LCbmLC3/hc8VeVsWDvD0Tw+J/hV5e3GMtrMk3gbIM/dZQm5LIqlGXcJe3fFb3YC2zHgHbXBDkjk3ynD8MYYJFzpB0fUjUaxMcNV4o1c/wpHCFzZDvAm2cb0YfcfdIW71i3T6QHoT64EWPln1Mhpnf92K/BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750675794; c=relaxed/simple;
	bh=iea5ZVzDUEbFXK3x0m/rFKxxQ16Z4ioHoun0pFV+mNE=;
	h=To:Subject:From:Message-Id:Date; b=glxJZe50lnUSs/aUskH4d/LM5zrL36DysvAd0PPk9cuIX3azMLa+JXvPAfNbE57Kq+jaKWbuuWDGomRH6ZhmpGJi56quPQ8v+EFjNA37B4Zeu4a0ZYcQo0IsVZqn42X1cRa8HNl/PncfVW4DCfTsz59yyd1Niw0MhSdZo9j2a8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA3bPvA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA3bPvA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CDDC4CEF3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750675793;
	bh=iea5ZVzDUEbFXK3x0m/rFKxxQ16Z4ioHoun0pFV+mNE=;
	h=To:Subject:From:Date:From;
	b=kA3bPvA2Eotdn86KmS1P1NnHkjxXn1YXktdiuYl+BvFSPqdnosVCiOwI8xkl3OOya
	 B4cZyp9qcLUQIwyRudLycwDaAyGYnSouSbcdXF+BTW4tJfmN2Gl+oEfevCCwToVGIZ
	 H2WbA5DbWu6k7sPgETAHAr4CDfG+iL9NH3x847m1DzhNos0w7zldimeBncwd18wH30
	 5qdpY85RiXnoqQ9NnSS+Z7lGGpFUt5ug+u4pjJSMT+a+XFzf8gIDIOMB9vkvNK3Fms
	 Vg8ROFiz4/U7oDrmFUEpdP537vbKlw6NAjBotBM/k6+y8MeEZ2IYiXG2H3oDMLNF3G
	 HDIekkKN22x2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910CFC77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067579358.7930.10191968754405020438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e298b3ed3d8af5e585961be3a66074c2b2a38093010f7ebefa292f0036313d
Date: Mon, 23 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750675793
