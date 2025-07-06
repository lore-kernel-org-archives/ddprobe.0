Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27413165F1A
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751801394; cv=none; b=Hptyh53inJ5HW19+Laq+DaLmp/4W6IObYz+6lnd0mBw+QUSvEBTgVwFKq7w2DRLbN7/MWMTmXHWCrteVjvTdX3c/wXIlXoLFNrPKwC5m5e142/LnF8MT1rwGTVkPfvQsyzormFQSXD8a1PQ8i0OQOuEOgzhzt7oRSGVr46pvxKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751801394; c=relaxed/simple;
	bh=QpcL3QFPk6Q7VC0SCa1kTFFYAIVqR+Vr16AWioIGa38=;
	h=To:Subject:From:Message-Id:Date; b=lbp6ch4zPtv3DPavKJu3S8TiPiJWra53ULgiOOJyP0hCgBjP2MTaT57TApfcjEINZzcXprC4B92a2MWnlVmAlM7MucMVGMxsKLm9V8KuzNAz1ETZqm/MEimNsQ24jsBxoD+ZwkXoI9aWSikX6hdTjOkGmO2Df98THErKggBtRi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzF24/6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzF24/6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A135EC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751801393;
	bh=QpcL3QFPk6Q7VC0SCa1kTFFYAIVqR+Vr16AWioIGa38=;
	h=To:Subject:From:Date:From;
	b=BzF24/6l9OZeALTCUBZunCkPVCLGhqnf7abVMBD9wSuDMda/NFWeQlwriAX099H7n
	 xFnNu18MVql+zV202B/D56+bMxOPzQo+H3+KACwTNkV6rjyTPt4JLkMdFFJsL2EX8S
	 TWiKpdP2ig3lFtpIeb8PF/SUCL8Yek9VI5PoEAx8xtv+jij6CxEjK5k6m3cAq5AiqM
	 6JTekiutMEaTczt/Q1obOKDz2v2vgHNrowSJ1ACrY7ihmq61O1mdESrwd9y9VzLH3s
	 THRDzCKRUKKWDx2gUeW0oZVIoAQGv3/S66zAv5HEaDMBWT0roMWL5Lw4AvLLBOtqs3
	 TsT8d5YakZ4rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF57C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180139357.4876.16796911062429874688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26536ff0876f32d6eae82865c6d165aa4cf3b69d0db97835746097c98ec52b8
Date: Sun, 06 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751801393
