Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3277C2E719B
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783282114; cv=none; b=NrDXVL+d9j1XxOc2Sxu1in9kAnHOG6U0wiWK/hO8Y3AQ3S2Nd6Tcs2mlIEKneCvxUqJxRpnT53pBH3aUl3edLkttbFnnIHqeX0l38S9qltA9HQl+vAZhYUXtMyf0BrP3jHGgB723DVMd7/1GFuzglHv8HQ5Va5YQO9PKUsFE8/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783282114; c=relaxed/simple;
	bh=+vVlWBroUU7PNfwMczZZL2mIKbXMNpgsjl41ETV3t5M=;
	h=To:Subject:From:Message-Id:Date; b=OjtQsUCLvx77JpmJFBjpJFO2O5nZ2ck0XwQi6oV25jZAWTC4JbE9n6Lo9WqHbiRsKxoNeHRIioH+Eswk8wuMvdbU4RI7VFVcnSZdvKaLHzuPnWHhlUpwkSigGAZVYXW2McqsR5J8RwaSVMk+I/lb1O1g581ccdeTHiyaCzXlqjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gyqf2u4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gyqf2u4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FC3C2BCC6
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783282113;
	bh=+vVlWBroUU7PNfwMczZZL2mIKbXMNpgsjl41ETV3t5M=;
	h=To:Subject:From:Date:From;
	b=Gyqf2u4Jcx8zCbvuPQtx2jOcs++ifPLBqgXV+RuO3xScAJn2qSf6rU5xPIEc6v0Rh
	 L5gqb4IC3raqBs2nk3ecMuA4xwqeFG4o3vMFovDF0viFrTVyVquWaQIs/Tihx+iUCh
	 LhvG1bb+zSIVXjpmyy5gHqxNqMGKCKXAGP/l8dE5qWzeVasehgxGcJUB9mnOQlABNQ
	 vCGKMfudDXOoANRR9TOhjNGUQLMIMSGleblwSNHKE2X8WRlbWN76D2509AG2tkN7Ef
	 HgLpRz+kqNsyz6zbRe+vuzIPx45Cl6gdjbbpwaxn/v/UbCYeXiK++qNyLPUjK9FTUj
	 E5RXE0xW7q1tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A07C44500
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328211373.3896.15199521540406031990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d726692760c17dabb603c961a1b57bfd94e7d1b810f1d38b2758e1c4b5f32be
Date: Sun, 05 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783282113
