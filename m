Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D7D1876
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742525995; cv=none; b=GYdu6cBYv6FPSA2MioaK53XXyUDVPiCFOJWX/pqwm+TF/tPBTKbI+Gl3LMFVZubsCQVkByFIPUP0PyC9ltAJciAJHF1T1KfdHq2Tr/rTCgvss0PcBnZWlfd11xgD6cvPTUq29B4eG67stpgPMssgGN53BDGjcAUrlOFkoJ3Zdh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742525995; c=relaxed/simple;
	bh=GapX34VSnppqHT4LV7q9L5Io+4c58wpEGrnLmmClLLM=;
	h=To:Subject:From:Message-Id:Date; b=koMi6hO7Hw2MSWgXD4KrCcrPPuLLYxDFGHSGkpcWgHkZUbxQK94wjIpu8CaUbHCe7ab14p4WSnBQkDfrQHJtQDYPvbiR7EbNQ3Tr2gN2uoeR/Z54oUkk7kGfxodOW7dm8c0mGiKC5w+TW47aD3RWKd5Gs/OOkdnam6KrENlshJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUJQCkFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUJQCkFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F75C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742525993;
	bh=GapX34VSnppqHT4LV7q9L5Io+4c58wpEGrnLmmClLLM=;
	h=To:Subject:From:Date:From;
	b=ZUJQCkFhmeBUCFUUtgFFTyPhW611kOyCMcCjd4epMQPk7s3IEzogAZI1AqFzp4SOh
	 lRcPu5Fbb1L3IYt497YAgJ2DQR4q4LpStJtTFyS6YBt97OjBSU5bYVUjtV6dfvyC16
	 US/Tv9iCyX11itByR7LIoseK40mVWZjnbfcUVEXTUHK7mfVNOMT3iTzZ4lLBSCXYQY
	 6U0922j0+4Q8TGSX8Zib0GWC2cdEIkLNEwk/3bZGGcUiZhkq3XbxzocoBq+87+2mlm
	 Fvc6ypg8zWREPtKB/Ictmnf6LqTLbe8r9m9soN6GZ0JUGoDNKl2c/RWpC142rX0FoV
	 3P/tJ1uIdh4eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92381C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252599359.25330.2158574437833775055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: effbb079b80de123a55f2b14d4061a14b3b40e130905e72f255e7af6d01ca07d
Date: Fri, 21 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742525993
