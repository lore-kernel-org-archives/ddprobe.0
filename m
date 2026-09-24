Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B5E412C0D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790277634; cv=none; b=hfUQp7OZkD9Bx6CQMM+WZ8/nloIWPNBNPV5GMGAu7PTs/YigyvBU14889QFJzYhznC+lmPllJ5lYwtQZPB+SO3ult2t/1sVT+aRZq+UeGw9h9yczyJar3xXhm5Qs7VrbNXSXAwwTx16qH3bLYAIbkfFMNFXD1TmqwrwX25DxceA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790277634; c=relaxed/simple;
	bh=9p67DViSHNSHmPHUTYzPRX2HmdJd2aAnljDegn8NHT0=;
	h=To:Subject:From:Message-Id:Date; b=hM1xXTjr7LuRETXU58s4A+dypSoGFBEu1NgIfJJAxBNKbTszrbXmSldS2CbYQ5PY1r4MV/nX7IchREwmRjajO19l1AjC9b9gl6I9KAVUcPvjjjCMTN4ViqpR50w5IlCDDaPGCJHzmC/uHRXBgYhdfJuma3BoiMDUt8RskAfkrYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAoBKiub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAoBKiub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6C3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790277633;
	bh=9p67DViSHNSHmPHUTYzPRX2HmdJd2aAnljDegn8NHT0=;
	h=To:Subject:From:Date:From;
	b=sAoBKiubOuSy1/UlCpcUPPF8ICCx9fjw8lOLp+yhjqHap1OVHZkYciWllR82drpfW
	 WgrW+mBCXgagyWGZiBl/TjAMyJKqt0JTs1KPjl+Sopm4Wgpj80opJgITwTid+CG5Sa
	 uY7oGlEhtr+v8BugPaas3skRt2AmwXSUf/BUdM9w7rZKopY5oWBWINtgCMXahLi+Fj
	 a/H8r7xxv+rMxgSzo3MoUwGEg3kvnnA6PPrwkMLVqB4KIEV7lBU1v05bTn/jlmEWZH
	 iJa1D4bnCPszb3v1lo8q/QI5NjTJ6ITXBsP2adt3fFF094EYH+TE3s4WFXb/DGZac5
	 R0L8T8dOU6gEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0AAC98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027763370.13854.5384859040942037413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997c20c8f66b04670d0f4396c25336ef8c6ca84eb0e0b546ff14d8dadfbf270f
Date: Thu, 24 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790277633
