Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5B42E8E16
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750438794; cv=none; b=FcKx4LdRBwst1Xkny8/7mLh0W+NyUf55lUN+7gBAwwFf74MTEl1hHdn0KfMiUEAWq+edCnOuhgMoLixBaq/r+r8Vl0A8TrmPCgkILaiRs2kSKrHot3vtcGe3cto2D3FgPWuZGKjVHpyRjED/9mby3RuKESpdQ2CyPJ34ypNhom4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750438794; c=relaxed/simple;
	bh=p+bXFOCGhzBz2Hc6XRxehzQg0DF0TTUPTDt4x1QfMIY=;
	h=To:Subject:From:Message-Id:Date; b=mkjr8uKkWeUiZ/X+RgRa4kvuCL3Zi66KWOrq4hh+QvAojGidLy7s41SSbe8/VRQrCXNiRMCVEBBjLs6E/AaOuwRAJ8OwSCjGUdFoGw0Vk6sqy0SQYNED7hUau95A1MDzTDsnnDUekEu5G7IDIE/5qUl8QEofroybOGIRNU6SWCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlLCyaZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlLCyaZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD7C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750438793;
	bh=p+bXFOCGhzBz2Hc6XRxehzQg0DF0TTUPTDt4x1QfMIY=;
	h=To:Subject:From:Date:From;
	b=nlLCyaZCfzOBUi93meVFRatCD22zzGPOmyvm61JNhj3cRwFWuMLpoTclfWrLDzXZs
	 nAimPtnd776IrlPZjKRI4jxq0adMGe4RCQJCz9TxGwFt/AXDZl5B86X7qcZHwofenn
	 BerhX8LtEGymNQ5RGWPAZzELORbS8U0eH9kEX63FvPzenGXqvNUrq01Jveh9MLDkRD
	 WVJQawgc9oZ8mVHRLt4xGjE6tn+8RMwJSBdRU3n0kdZT+CEgBbF87peL9CTPApIR2C
	 Jx0jnd0MH2/Hu1WrFqT5Kvz5RfxBDcGgt9cbdTzkPy/7ux89TA5iogBR22rdD7vXhE
	 JXJK8sVG6MozQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E178C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043879357.23672.17653242803020665529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f157b73ef0156e23ded3932ff98a24c8e9a1566ffa4916c1e93790c903c6268e
Date: Fri, 20 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750438793
