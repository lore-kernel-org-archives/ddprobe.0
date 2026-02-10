Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1172C19EED3
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770709434; cv=none; b=Ml/F0soJdusd7q6C9fbQHd00lFHWro8cbDC+JhhfJ6pKzkwuLZ1Xb71Z0SHjso7hhKSXRTR1Y52/wzMVVoPaFvuk1914Cj4QPGjlc/DBYzoAQhfuBOzGB/2iwTpjSHtYMhWH2P3/eGWHr820j1dTUC256fFgK0wUkPAVHEbHW9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770709434; c=relaxed/simple;
	bh=kxcdnctjIIbJJfAvryzx+WyRBIi6EJii7fPPnrMST1U=;
	h=To:Subject:From:Message-Id:Date; b=nRUUEWVSBzb6xoI2O+vrz38UQLfY1XN41CxllNvkzxoxTIEixRhmeNNqlmWAs24eAkkxIMpXJJzauQJdwwqqez++6VXcnK0uViXmQQYnBwb8OrWNANoiooZh9HU//JkngiyHEa0A7TurXBOdwOSrdZ1/vwrcPvxstQTR/0UtN5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ozu91wrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ozu91wrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8D1C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770709433;
	bh=kxcdnctjIIbJJfAvryzx+WyRBIi6EJii7fPPnrMST1U=;
	h=To:Subject:From:Date:From;
	b=Ozu91wrqOCm3r6mKCEaGsL24FZvcgG0Scei6GeD6SvmjazD26DOSLgeHzm9Y7QW6N
	 pmFb7qLVZkYbv27SSz1XOU+tpBGnvxKZtQpda9Z6/ttmc3WcKtaNH7Op2ch3426Afb
	 GdnCDGmrV5o0CsddmidSHHNQPA9RRayNErHAidgrAUYvtZzctjXY0LI3C5mmp2wF4C
	 PmMcHRaudD5Wk5CcEWyjC4yxFWI4wrCsHgDS592n2AV9XPFJEJBIh/q2UUaLVHSVvg
	 ZOcKykZaudrafpGZtFe88v1qWAgdNiSlg2J4UV/7lgCClNTk/ejW3qVVpLvWB93yZl
	 o+E5q2OK7luhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9157CEA3F14
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070943358.30969.17160881060338615463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538141d175eb36cf95336a3557cfed6a18b9829da59efa9dd21c62dc074e57ef
Date: Tue, 10 Feb 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770709433
