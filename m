Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DB7343882
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780994674; cv=none; b=WrnbqhJZmDMsEAnZk4QjN05XiFf0xSRjZnshMjC3qQU0IrbUukT5msgAhw4BxcvWTMI8BFLn/b+QZYhQT1jL1rs6iwrrGE41y2cC+DHFRgCcrFb7Wa1eJSdBzEkAgS9v15EQEh0J6/yNTQXlrmr33hLteUG5oIzBaQk5JyRF3HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780994674; c=relaxed/simple;
	bh=/AnCedBpMp1uMgFsaMz8EWRzMeVCh+8fdMyK1FMgSz0=;
	h=To:Subject:From:Message-Id:Date; b=GjE1ZM/LTuQeFqOL/jahE/oPk6nnJ0plBPkfPhTVQQKAKo/owghECS8jzhJopq05DJv2+KKcYpV+ctqckL8GD9tVyN/ak3Ukl/Dd4ueYtgB4CRA09FvHeAmDx7o8ZXmOvI0RnwypyaGSdaEcFPA4DTTYVbaJSgM/AnnmqnghcFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Emf9j9fu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Emf9j9fu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D394BC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780994673;
	bh=/AnCedBpMp1uMgFsaMz8EWRzMeVCh+8fdMyK1FMgSz0=;
	h=To:Subject:From:Date:From;
	b=Emf9j9fu3rvtxmkH3HQut1LB+vHfMK938XWhwCqv4R6n+W7TbcWMtafdU2p8swV9d
	 o6xvHcpdmwowWqoNXwD55BoWOhnwTU099fce2rE1SB9NM0yxE7AG+Y1vHtuMRltwlV
	 xs3sNaS8/VzRNH2YDZzsTfc4NAHMhN1mBj2eDTw5wa1KoIUDsxy+4qM+asu2eI7c03
	 HWvo3PBcNEwHHuVceACQoFCn0B1Pta4M9Hj4zOCQ+IxQWJwhlzck26QHAKgUfHM5Sj
	 pWl01FKweKc9yeDs5NtkdVYzC6Z2KKJXBHlqg1EKiNMiPHqL4gkt78kpfmIiU6V2+R
	 zEKQpS2A1wuQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5533CD8CAC
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099467372.18430.8744002384920420386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c76116d36b058940f2f101133db03835f56fed8c39df118ab3c88d5c0ebfd9
Date: Tue, 09 Jun 2026 08:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780994673
