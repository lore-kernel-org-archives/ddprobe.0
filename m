Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234878F6C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721411754; cv=none; b=lpSa+fLdm6SHdVP33hDrjffXQEWZFB/xCM0/Maw0ZBOqGO6IoElf5HFN638tBQElqo6PC776mQm750P098Z8Miq1Y1omaHD09zmCPrVecbZKR7M3s1JuvP0yfzm0iE2NcTSiTLP76Wa1jDwSTYS4keaVKmuNAhX6JGNa0MDWyVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721411754; c=relaxed/simple;
	bh=8VFMXf8Y5oAtKYjTlWxOQdRcinqozQKlBdnCQsSCUlo=;
	h=To:Subject:From:Message-Id:Date; b=owdbd0F8tCBFspkVZ0f8xgG2LvxtG5DGCagBfkFsEMf/pBfzzct8EVBoUMdk4zUph+JC8B2b7PzDKb1V6SoQU3Ik6tanbioKVe82PLlI1YF0lZ8Xdx5PCG6G9ufP8lK/JNeOyng6pzKbRxQ6crxyTXVQ59caE2KBdmf9AlVZta8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khZAJMmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khZAJMmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA71C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721411753;
	bh=8VFMXf8Y5oAtKYjTlWxOQdRcinqozQKlBdnCQsSCUlo=;
	h=To:Subject:From:Date:From;
	b=khZAJMmcJpBDtX0t+x9Gg+oWL8z/otLO+VeDrJeCDC1IgoVDEPyHTOFYUjkbNpYqb
	 3T1TVzXVKhQCoZrwzT7kP9eX4e6Wq2HxSsDHT0S8ODpwc+L3sXkKsMflYlaxajp/8I
	 OvOBaIVvL9eY68m38hDhaIGyNJlInUh1Cha5RuWFKJEygeGpn1LzoVmp+jN2jWjiML
	 IT4IhVXCzp59Yd0bqRCRWMjpFGUEKglD8HaWmWMQTlet/RHp3jaYjij2TWHAjzjAEj
	 wKKE6u7olY9UTdpOemkt3WCYxkc8bjLHQzOu/+g6/rghK6pxGa6VvPuh6GJRtNyPy9
	 pFTpzkBlBTfNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959B1C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172141175359.29340.16506570575951513137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36dedb2427ccb093a713aa900e789b9b5b3a6bf575d0fd87209f9ab96cebbd2f
Date: Fri, 19 Jul 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721411753
