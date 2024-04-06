Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F184418C1F
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712435897; cv=none; b=hFdaG12Mc04jFORVQV/AlcABgJWC5TtUC0e+p9+9QQ954YZ8gCi2+xheXhbEthr18IhS1nXVi+v63IQnrvhuuuz+8ZJX5hGWEaoGgYYesBC8rQCOp587T8hjqQU8KSyo2eqJ2oxt2ZK+IDvANbaqsuYQ4pnq14X0hHE6/MgHnHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712435897; c=relaxed/simple;
	bh=U2PJlWltHv4npEd2DJcvxZ19MXmqrdNuyPlUitkEXi8=;
	h=To:Subject:From:Message-Id:Date; b=nFj96ziRXD3QhWIipW3yM98ZM9VV37FMuGrlUesV673Afjc6uMMDZduBKUHmFsXFV/Th5FhnIOvM7rnJar9SyiZqeI4ztpeQmtC7rekrvVOGk9WhQee+PpAVSOgxMWPc9AqssvMcK3+iiQeoUNH1eDXNA5Cp/uUDYKwLjPRvoSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnFvtflf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnFvtflf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79909C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712435896;
	bh=U2PJlWltHv4npEd2DJcvxZ19MXmqrdNuyPlUitkEXi8=;
	h=To:Subject:From:Date:From;
	b=LnFvtflfFCbaXJxs6WfmgPF8D19apLBtbw9s24dKJR9qRHC+L0nC1yWQsWneHwt0E
	 2TIkyNoIHpKv4eK1cd+nSSoMePQwfHtEzIMxAllSHuAiuHVRcvc/49fPElxXNrnI9Y
	 +jZGl6+xYzP22A/rDyitksGy/7LFCHVSBMWaRcOA1er9UvDOlWNvDP72djd4n500km
	 usSFaJKDt30E6KHdQXH4srJHSMxye4sdnEpqtgYQQVwU+s1WkD3Wsm9u2g6veHjF1i
	 jRy6NgNTTNEHIFljjs5mjhGL19v+/bGTq9JS2wf0mLnnCEwvsY0HFIeKrLmwalEtqO
	 Tun2mnRTib9mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606CFC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171243589636.9641.14567644016742256332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e643a34754d37667c0b3729d2807bfbfb3fb2890576795b6389d5160b1af75f3
Date: Sat, 06 Apr 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712435896
