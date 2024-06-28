Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5246C1DFFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719588863; cv=none; b=Qi7bcTtUp3+jnWC+oEukZq1Pd+qx/N9kHfVI7N2dIpYZga2WM4TbiXm3C8H1I75nZRTyDWc/+P/UiBqgMNLiv+qwql/lfpWSDjESnZCYHxNPRl9/+8r+74ElEFK35+W2RcjnKmwp9itoChFqUWKynFtJxm0R3Fsu6Js3NE3gkBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719588863; c=relaxed/simple;
	bh=zwpDegZXfuFox4sdQBmjI/g1intxAyy4cRKJADZUKPY=;
	h=To:Subject:From:Message-Id:Date; b=D8w1qP0IPCTVrdjeIApGw3hoGxtJ4y/qc2d45b6G9DXoqpTJN7m3hkAl8rmCPZvC9FvTkOdlxEdtlCcDUCsn/muQV+QMOX1Qu3nvFzbR1uoj4ZEXYTxfGZDcFEt0S4O0tVbm3wws5e/xnh6EGdonoCusSLhyykKgdPt/Wwf9PIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfP94Nmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfP94Nmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC359C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719588862;
	bh=zwpDegZXfuFox4sdQBmjI/g1intxAyy4cRKJADZUKPY=;
	h=To:Subject:From:Date:From;
	b=XfP94Nmg86L00ZgcojP39yt/fTDAs8dwLtn5Pi7WdhIGHpTuNWqk49uZ3Q3gU0z3R
	 m2N8JzKRUxe7IroRG6BUXxRXHetfsCKLtJD0KjtZeLXlz6PqqUhSrgCKMDabj0opst
	 UeT4zlT386XWgl/79c85klMeZtSKt7MqFnDOFCElHCxx89PUW+ToAVhrjqE5ADbeeM
	 jhreKokmmId8ucszy1myXKis5eI1KIfvt5CNvN9a7P19t+AvhcHIBUSLMvDxtVo7Be
	 U/q7KrzuPvuSk6JGAhyGEzNGMyjOhCv9fMSdocCK2677h/g/AEkT5SfR54VrVDuCv7
	 ynnqlucbiY1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5118C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 15:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958886279.9710.6552702303872543229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f325dc53db8b14ee16d0304b1e10f8566ae9032e752965aa112b8323c31c9951
Date: Fri, 28 Jun 2024 15:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719588862
