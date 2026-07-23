Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE3739AD55
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784783974; cv=none; b=KpIzKE1fIV+XNVhj6/3vs0OfSSt6mz0NabCfRBV+Le7Be7Q3/x6xoJRvDrz2GH8eYGMIUqPNUGEBtPuUE8v1qyXrAy/QLvLNXowV0izch2UBIDuea7u1CZOVibuMIzbnJiSd5E84Nb4QNut8EbEssV87/JU9MeQqIwHelUnRBdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784783974; c=relaxed/simple;
	bh=2usxYQ4tOzWpvC2djQCpEYqozxYohyG1Penddav38xY=;
	h=To:Subject:From:Message-Id:Date; b=CtDkUIIJdwCbtQiEhblUMLD142WrkAbp53MYkLTmTFC12ONC4bD4xbH8/tHr+eDLWnUmnbYKYxrvmqZrdrdldY1u2M06ShiuYWFXza10BELJ1ckN280bw6PmSEgQHtPq5IId2Am9Qs/bbPBuTX/M/P61/FzWoMaleiUrsiVfn54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksxiCfyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksxiCfyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1070C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784783974;
	bh=2usxYQ4tOzWpvC2djQCpEYqozxYohyG1Penddav38xY=;
	h=To:Subject:From:Date:From;
	b=ksxiCfykTTQX/jEFcH6+S0q9cKIoq0izzVdHQdjtfgJY9rWfjM97Kahu3tXxtM7Wt
	 MeMmLNgx/3BaGOo95GyMy/Ew6S5kNOO77nTyr9t8s2FWGS65SUMQXJPjh/wM2+MN/S
	 vgS4zug+S3xQzpjSpr5gw9U5BU84OtnuQ300v9Rib2NakcuAwp8Uz4+lNvOBJ90q7D
	 EUzpwuHmcb7Ort1MV7ArfTDMu+YRCwIuxRSf3Nk6W+FUQsQgnPpTktJN66Qr26g8DY
	 nVpzm6PqL5OjLb51vxgV2zfQtrTt5YZpST12G1tyDrSPuUCbI5kZ8wVDCLBN8JNN3/
	 pOMqgx/Lei0Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D2FC44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478397375.8216.5338146685695008243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0e35c19e363bf2dac6af98ccecf55b06f47db212662e2a3f6a0edd6116df9b
Date: Thu, 23 Jul 2026 05:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784783973
