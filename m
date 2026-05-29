Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2843AA9D4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780087954; cv=none; b=E0NO8xKops62uAAJ9keZcIjp+eUwUMhYbt2ybjkMxI0UHKWOGgEbXS8XyJI4tw1LhulR6tfOYEyY+XHii0zUY4bmtyXAaUMgq+oscxQBVEX83Ue7KW2HU3yGlfMec6PnJ67xgyDpP4YwLz6tDWs4cSEVFwt8umeOQaIDv7Wl5ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780087954; c=relaxed/simple;
	bh=Gi4TwZHtRaEWIwwZ2Inkp3H9fHFgS2aJugZ4QTNGeZk=;
	h=To:Subject:From:Message-Id:Date; b=tj9fwQZ8Cf4FbrDmylQuiH00p4innFsJZKWw5d5h/EMBvY8bOsS9yi2VM8atIaG/boV8cfUoL+Ay5QmsC4M6K1yVpBj3XK/AzOna3elwy02G9tlfF3iylaqaCC9nrB/G3TOxtevG40qfxx0s8lvTHYJ5qEhPT6L2Tm+2cLkzZFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaTAqzTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaTAqzTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD09DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780087953;
	bh=Gi4TwZHtRaEWIwwZ2Inkp3H9fHFgS2aJugZ4QTNGeZk=;
	h=To:Subject:From:Date:From;
	b=RaTAqzTutniFwQleTYdutrKAYT5j50d0zr52UGrs0bXqThNYbAbZrBF1hJBp7hZRY
	 ov3HMgaamFB2IIQWZJIf2aYEn+TeI8Knejk0qURXSuWSdQSo7y9umxKbABMumYlRPA
	 1ke6HuvZ8prtGYVV11EjOTTtaOkymCDj7I6bcQT7ijfEZYtZv5jfHrs9XFLOl0ol6+
	 33/Y6hoMuRr02MPJAMgFbFzI4YVUOs1B0eKTTOu7EpqdPa/w0F8Eb9BXREWzUyZZiM
	 bgmAnq2FGo9nkI6Y47mGbF+6IUtsdobdMFFDZs/8TDjG7LkcXNOfxfD9W5mkYZbC3S
	 BLGsPUV1/TCrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDD1CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008795369.2194.10306625222782244639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ffc76b1a39ce15edb48fa89f242bc8eefe85dc11f95744644db14d727bd356e
Date: Fri, 29 May 2026 20:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780087953
