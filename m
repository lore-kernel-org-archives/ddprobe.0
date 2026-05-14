Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AE83D7D65
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778747434; cv=none; b=EQ+4XaPG7rSAiROWzU8OhNd4nvrMT4mME/m5q3WK/0GElneNiG0sE8+X5P4KLRCuuUYKbUZRXDwumfUPFtLSYbEOsieDgX+wq1aoHXoqus/Umt3egofhwBVk6s12+zA7XlHdQlLXRCkn066vuPs1kW9Ek6gBNet9jeEPe8tuBy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778747434; c=relaxed/simple;
	bh=vwpQD/EQ4rZlbyIKK7PLFf/cJ31H7pLJoajpURi3cow=;
	h=To:Subject:From:Message-Id:Date; b=ZViwZ9aR/xuclImfshPQXPdD4h3bwyPoSLijTUeNAdZAeWpuLgTRAIuCPSdraQtk2hNc92MUqE9HjJtVLTIq71+9PPJ/7vEiRcgVXuXD2Xf93/x+ahSFv2OfNiveSMcAkJDiDicMYdir6yeN8+KF19REkJSVuOl0Gx05Wbk/cJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsK0L4Mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsK0L4Mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C130CC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778747433;
	bh=vwpQD/EQ4rZlbyIKK7PLFf/cJ31H7pLJoajpURi3cow=;
	h=To:Subject:From:Date:From;
	b=KsK0L4Mi6VHmGE6wJnNtr/bfFPJnwHuXpCf3stzG/msyAK23TMaVPUTLQ7ACPuDc3
	 S26kZuefuAv3CsagxqE6KjPS/NfqThQ/KqI67BGR5tPCEa8pPBSezEjoqRvM8jnHp3
	 Mt8cT0wWToXtHBVAM6/WC+gSHpmx4eLOM3hIwC6Z6VL1b5hY2+ZCk1Pb0joMKvM6Sg
	 WCIuUHVwZLRAcDIEmWmGue5OhP8uMmRnnpY2ZgjRGKRNeGHqKH0fnZ6NDG/7U2M8B4
	 lnC9ZkF2/JgT3TJzg/ONlEfINty7CvWHBR+MFk21KPKMEQo6aRSXpmyPB+e2pZ8HFd
	 f4Rt0OwvS333w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9CFCD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874743368.26901.10998081452573654737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c40bc9cb8bbe63f5dfbf89556c61ba3ca1c986d9aabe85e1d5200bdc53ccef
Date: Thu, 14 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778747433
