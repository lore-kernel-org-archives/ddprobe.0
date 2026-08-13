Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C95623909F
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786626034; cv=none; b=SXq0eXPFPcbObD9c63W4WBelf4Q23v2YkPFL9eEm2H4r84UTa3FsH1hrXOdPRHfCECNB7K3wDdrvBRvLkKHRTLPZQDBQPaXiT5wkQEEqNxeIA9LK62USy0Ix1is9POVGJMDEX6lWfkCazpeSApow2XVKjo3M3LV2KQa7LkLWagU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786626034; c=relaxed/simple;
	bh=EX3fbbpQ4INZ88Ed7QyySglMu5pJbTzVgfJq3uWVUJg=;
	h=To:Subject:From:Message-Id:Date; b=NRK7Hr6gHqQ2pYV45A6yWgyEDLpmgqM1Y3ThQvexgEh6F2IEPwSW/kLRH/nc1PLUbwjLeiftbaFaaTQcXtVgazfBgLmskFy+ZvvmF/QtseZB7K+EiIIREbpmKaxIfA48Ki28C8Fc28arwzRUSip8r+JIb0LXqNuV12R8L9/p/5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVhjo6gp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVhjo6gp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF514C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786626033;
	bh=EX3fbbpQ4INZ88Ed7QyySglMu5pJbTzVgfJq3uWVUJg=;
	h=To:Subject:From:Date:From;
	b=pVhjo6gp4Ni/UoUCQxIrnMU4S2rJaEF56HsWHWNSWetLL6C9doPa9V0BlfM6ViMmN
	 9stCVwTlc7GZ0aV1lvtcBnlZWL797MS/iWas8HjNLF/Kq+IuX5+s56UdWFOeNgJGcW
	 u8HQopKlptdlIeU3FTMlca8RqpOfwbmixdRFi1Enf/Z466uBJHG1tS8syvT+KOnyt/
	 H+ooTKGu733lD+0LScoc80/hvMmJ8En3MiufZZLxP/Ft9ethnIhGc9uHukxUzxn1Jp
	 OIUpIa/cSOO2pqHv3k5I5XZSEKRfo4P7piA19RUf09qvAQCgq+xVEWnKck2mMDjS41
	 2GcoaM3rn6i8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9793C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662603368.8059.5007021352260155366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe744362d91ab4c19edb35838d48fe593c37f52108654f2c5f3a0607bf8a5c5f
Date: Thu, 13 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786626033
