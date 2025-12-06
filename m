Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB8E3BB40
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765053774; cv=none; b=oUFXHejn89Oc9JoPWoY5zw33jXm7VGCq/5IoRBDK9+H8T7vwVrbgxmIlNRsapo8O69YD4NeCGQJwR+A3diVQkJEIMyJ3CmxxTViZ3+NnfHHuql3cRZFRQtyd9nixxH5sjskBri4eScIWWcb1A0Nlit63ckgvN+DkseWV2bTrzoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765053774; c=relaxed/simple;
	bh=BwvJPfag1mgm6J5o/1JIrr1bEveAghxeeIf183gn0/g=;
	h=To:Subject:From:Message-Id:Date; b=AMd3lyqlaPKpQ0G14zbQs/lkI14GhfMoRG+OS29L8Na6KXiIGDA/HczdYFEK0HeemSibO5703YXqk/rfcOzq6Ucbjodw4L0MOY/0KvKPou2ZIzexWhPgb5XpSedjVjrAwl/R6+BaonW16/I+nypdWoMeRdUyyKctXWG3JERzd0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti7V7YvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti7V7YvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D56C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765053773;
	bh=BwvJPfag1mgm6J5o/1JIrr1bEveAghxeeIf183gn0/g=;
	h=To:Subject:From:Date:From;
	b=ti7V7YvGqq1aBMkMvhQrA1crshOqMuxrrQ63ZSGCtJuxsjkCu+mL6LdHff5QHiWH3
	 9Tv0Z326FmuVPOyz4fVFR4kVHLEDlpt95vchUHsl0t2cyWAsZu4Ul2DDxHsXRM4bL9
	 GlnLC1x9hpPulooFXYF6F09yJqdVOHB6fVxceiCm4075cHuayKcG9lvyvVF0gLks5+
	 t3Uk0STAtnQfAeCFRVMmJhBLA4CIc7RP8oYeEtQnhhyKc5BLbo+q13PJWuuyYJzcTb
	 geMEzggEO5hCB84LsfJeHLD5XW7emEDP9nnZY+q+x2vS+YOQPEAguQqsmE7zW3F4LQ
	 7RUDo801zaf+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A2D3B7D8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505377358.13893.12079457916672767647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d0a8f71514805bb98407eb5ac4568090f4dd04ba92c5f863cc59f99e26f6de
Date: Sat, 06 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765053773
