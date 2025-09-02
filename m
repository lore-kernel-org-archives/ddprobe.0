Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361C8146D45
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756787394; cv=none; b=JAhs4m3FTwV0dWdn4FAgZldw3hRjta4PZq6qDt8gPvs0w851s6xzbevSE4OvLdcS3UPh6OQwd74UOGH6UN3J/Rq8Vdwuq/8Bux7OBgM8onoVhsD1uLdvRcCwFeojWQxVJxBDbZ2pE9t/+sBRxj5kPeYcQFLsnezXSzfmDiZOnao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756787394; c=relaxed/simple;
	bh=ryGGWzboVHZ7MI7C8HwWI4a5+WWYP/5XOvPHprJ5lbg=;
	h=To:Subject:From:Message-Id:Date; b=O2D8hf8OlB8mD7sMVPVnpk7xz/ZzDrGhZA0+zxziRNV8Xy3JMs5G5bg7FCLJApFxAR8TlmxxXcwJzhZmBhGJxMr+G82nN4LJb0vU0lCJ7jB1qMwBeOycG81WE6diHP7CWh84+dpNS168hR2ev6WoqCXETRsPJxF1jEhG9+mKBNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlUUEPdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlUUEPdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A697DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756787393;
	bh=ryGGWzboVHZ7MI7C8HwWI4a5+WWYP/5XOvPHprJ5lbg=;
	h=To:Subject:From:Date:From;
	b=PlUUEPdp/TcNQkECFBJPwT/OxrSWYM73M5Bido0cRPNDxVYP2pNLoqvcXiPnSVWAj
	 qDq+nZeKAybcSWLsDDGq2JmKU1GHBUCqMUOS0ip/yS+sxDfqtogY8Yp/5hpqsaFZ5G
	 2Rid8hOFezfGMxfsMsBHCH7S/lyipje/6Y1baDbkUvEkSxm1/qxUhdAPqbRb2F0JrN
	 t9Jb19wgKBWyEhj/jMNuKMyB9V9o/lpxZS8mC8xCC4aL2/4Hy7mY7+VHUXEud6yt3D
	 NylYWHPgBahqVoiSo3u68x3U82Df/uRUOjuR86LwSQ4mBeoOZ2x/czYVTx+kcGTVT+
	 T7siaGdT1YXqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D2CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678739357.24525.2696204819709712096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554e4b2a73b203cd5088ed38d7e25395abf26814d86273b177e1d6b55fea8cd5
Date: Tue, 02 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756787393
