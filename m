Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01EE34FF62
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772745294; cv=none; b=ub9tKPtugGLo0Rnvp+YoK83kJ8Elcg6aN0j2ahRNXDpG5IguAyonZhc6XJ7qizgvE02ibc3Cb84kI9za6CvaY4xYTY2wG20H5PT6QMeVKbJG7FjsILXTHZ/Lkha9WdLYGMIn2s2GvYYw+c8hDPYj4uzh5rtlyFjWWaW2o2yNQKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772745294; c=relaxed/simple;
	bh=i3in/eyhakoDnkMEPJBqJ5UUZpMJHJZs8pmGFK5MSvc=;
	h=To:Subject:From:Message-Id:Date; b=VccERFXMBmgPMFKevTxbb6i6TI+WnE9Upb+DPQbtJHOWBTE4b+b31Om0aPS1iU4Q7bQ59MSANYt91XeawtPM0D7DDSJLjld8a4qFnTwTOZB5yB8wBsjpDFl5OBvbJ26L26d+hRyeVKiDRTPNJ9XNa77XIdSMy/BcotSJue75PJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwDaqmVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwDaqmVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15BCC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772745293;
	bh=i3in/eyhakoDnkMEPJBqJ5UUZpMJHJZs8pmGFK5MSvc=;
	h=To:Subject:From:Date:From;
	b=DwDaqmVrOYFhNEotRwFHQVEFfPQ+wkbprL3mI77FGbmA8Ia5RHjf3AnGajYybbScO
	 OxBxv5LrjtCzck4Owd2xB2Vkr2EWDFZ+yk/S8pgzgyBpjWeKokGlzYLabO7KsDWgeg
	 zH2LJf0SSmWIi/Cwmodw8qhfOO0x9JRiy8bO5jLVAo288TvyecHwCW3gCgtztrglhu
	 lSs6NCufKvQbFvZ45maeIK52byFSfGX5S1LQ8W5BrrX9OV1h1B/dYn5ATff5e20RQu
	 FfzhQVgYZtKf2qCfXfacmRoyXhmRBOMkvKBzVstWS6CTEQSbhJHfxWEM7lnf9xDhCD
	 fvhDfpglRaMTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160AF47CDC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274529358.22065.7552210826669295863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9714d8ef05bb2f5e520a4ab8d0463b2f98d209ca7ab781ca3abcda22d36687d2
Date: Thu, 05 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772745293
