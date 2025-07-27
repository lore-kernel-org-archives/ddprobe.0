Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2747D20B7ED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753612194; cv=none; b=DwjfgX99GLTbOibNsiq5mrd84JMyvaQzTqwwUvQDLVTAstPnLV58fKSEwm44PWkVyuzsEo6M0LyeeGKCF3r/iOE1u8O02NYreyhdIC4Jx2+F2gnHWTfEzIz++jTf/sKDk3Teo0jMI83+02U9fDpqx8CJBvTFex2/Fo2kSyePOo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753612194; c=relaxed/simple;
	bh=r0u40hL3RskIAxhFVjwwKVW+E0j14a+piLZbVZqPPlk=;
	h=To:Subject:From:Message-Id:Date; b=mR0zqzCIpOsdEnfwWuxTrlq/PtBdUCh1sYjj772pkaGQj4dxMWr0WLDiJR4xW0cCRLjRc6M/f71F8DpkSe5muG8iL+nzJ2e0d5sBS2i+MOJmJ73R5aciCuAFMdc/2xTBLSv9zo1pQyy4MfKUdsAOF6jRHdalvYl40vuvMXFUl+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEXx3knU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEXx3knU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34D1C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753612193;
	bh=r0u40hL3RskIAxhFVjwwKVW+E0j14a+piLZbVZqPPlk=;
	h=To:Subject:From:Date:From;
	b=eEXx3knUCFlaVAHVjBUlKeOZm+AMW61s7VPtm0u7UsfeUn/EQsjgqkg5AOgLNJWg/
	 fC5/2BKtPE7IiDMZsXfd7vuop7kwnGDjmdo0ZtsgV/1dVihHX4CM1ZvpvfgQOX3b2I
	 TZrAMhI/Nj5fg9kVWNCbsx6gZ901QttucaRdMFbrSbmRaHGVAHP3VndAD6+3vIkxRK
	 ohIl1lobKU7/4ORIu3zqbQJa7uNKFoJduOek/RFCZB1bQ0ObLSo+p0qqYXM+d2hviK
	 WGkEoakwt1PZRtjfpSapKtYqjYguUkpzoptUlkO69efj/fHca5MhtdQhiwVNWVZ+ej
	 TZlxtiv1Kkwsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A07C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361219358.25702.5190457844795446756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: defd32c2317af7df0dc85525dcc08942e132142de503fa783c48a43617f886b2
Date: Sun, 27 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753612193
