Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD6AAD5A
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754793594; cv=none; b=M22DkVaWsmUd1Z19rOOwlCcCJ/ssZ/gb2X/YotYsenuzmQYbQ3Qd7TqwuGPcfmsbr1HATGiTHMEM3qmzpiKnII+yo37HLfFWLTc83qxPpkHhhFIyap0W64d4H4cYRg/Uc8aVvkNJrG8XQGzcFyM+sPn+qDu/cfscGCejid4CrZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754793594; c=relaxed/simple;
	bh=wzS+cPTjE3gkNZszNzoSR5FEMFeookrftHMbNbNh8Nw=;
	h=To:Subject:From:Message-Id:Date; b=CQdrs7RS7NeB4eoXOnYJdGteor0nv2+scBogZlzealpk970iDBAlDpGWKNAm55HQoZmWosjRiXSpe2CD8+y0CCzlnRfH3NluRiDxYaoyUsYTpJb8onIoRhfCJTYoDYOJ53vwCokDcwhLiC3mta4OF4/Kgq7vGXSxv1I1uhxF8pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2eqnZKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2eqnZKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E92C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754793593;
	bh=wzS+cPTjE3gkNZszNzoSR5FEMFeookrftHMbNbNh8Nw=;
	h=To:Subject:From:Date:From;
	b=q2eqnZKPu3F97YIU2yRJ5lxR52bFdd6h2oba8+RrdAq+zDHU22RZkNSeqtNFRajyA
	 GLEL6H81jCNAIgpAVagOB7d3E/zb7q1xGcvoJzyc2Uw69S5Nw8fK0I1oTTuL2T/ISb
	 Q1xi1/OgtgcjIPu9otAZ+6PiEhmMvVgPm60a54J2Qu3KM5+IiXaIGGNuiNfkcXo3C/
	 58+Ar7O1M9twWo/krqViLQIsWPsa87RJxVO7H1y+IidVx54QzrpjOqXkrzY4yQ1jOD
	 jUIHPjKGJ05tWcO7Su98opivTZa08+YL1YoLKZ3I8j8U3dAkpK8ZW/qOuM4LZ+3VrE
	 LNMRfmcD8P+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949CCC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479359357.16231.13452892574038655336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d2fb0228e26de76f2622e0ade44b996c4cee6cc68d0f1dfa599cee4649a1ec
Date: Sun, 10 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754793593
