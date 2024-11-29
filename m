Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A51713D619
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732895754; cv=none; b=a/5xNpRtmta1bCmp47fdpYZL6M2Hpz9mtBEaF6gBcCDqWbI913VlmzFCb/ha25BCnl43MqZKH2PmSPZtWi9A9GJlu9MJ06h0RtQ+7Wo/Hog94PnrV28rCZHIK6/2cm2KnqLBVBPzmyj+JU4yvwEpCuXssmaTuqiZixoOO6Q+hA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732895754; c=relaxed/simple;
	bh=2kgMGboJH8kmlMMIhV2PF1YRl1IV0B0xlR+sScj7nIA=;
	h=To:Subject:From:Message-Id:Date; b=FF2w+hM4LergDLrZhOV/0uE5i0vsNQufWxEz9z8Fv6bWP0iMGGSjdSTsJ8Xrje4UItYoYB1VdlGTruhy4X0V9a1dtWac0ntkJae3NrK81mBgGL3rklOnZBhEQTvWI10hSxd2F4JIbvFbby3W1koBhcjTlWv+m091ZwfX8oHLSEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhTSxoiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhTSxoiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B066CC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732895753;
	bh=2kgMGboJH8kmlMMIhV2PF1YRl1IV0B0xlR+sScj7nIA=;
	h=To:Subject:From:Date:From;
	b=JhTSxoiU8q/dVm2nQRgDGOSdz7++JorqjQXpG0ej0t2ARTd9CO5opGU86JB6TSTnx
	 he17lt5l+H+iC2xIR15KPOTRUp1AGUS/3DFZ4g0w/AtyK6zRsSn4Urm71V3s+rcAwe
	 vw3cnEO1JgnAfcwC82CxpW71peakI3sC2pda2c4YeKNNRVivJhIhuQOA148bszTXKQ
	 PzdUkA5fJH4yNJ3nH2thnuZH+bAc+wfANbFcxi+tzWm6S6IJfV6n3HDAPsH9ajNXbT
	 QvbnGVzb+tN36c/JxAv771GNWXOVMBBS4EQ5i30cfkRdz6sQBbc9khOoYjj9RXVSfe
	 /uXxkWP73AfYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99401D729E7
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289575361.19259.10741653767841949271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b646a9295ebea6b783079f12a7a4f5294c4f96fce7d2d315a4b1e70fbf0da3ec
Date: Fri, 29 Nov 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732895753
