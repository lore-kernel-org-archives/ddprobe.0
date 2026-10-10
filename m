Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ABD30F55F
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791655834; cv=none; b=CtY5+9gr086T1DB6Pj5BXPzodpwW9hu5zjBX98lNNN7rid5oNuRbcXNIjDRh+zG/lKoq1NhhyQiHQDKBNF3NgHlyjPFzW9Iq+jNa29f38OfIPyIgkJlKVFVe2xLDGdtDEO/apfq6EL6wHQpyVNgputDb942KILi561qtI44fbSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791655834; c=relaxed/simple;
	bh=ZtFrhOeRipfIZvp8GKdjLCJc1T5nQCAnoWmzwgsXkoQ=;
	h=To:Subject:From:Message-Id:Date; b=krILckHYLE+I6J8raYsA0YhGL7JCYR1HnYA0omFvm3gK2r5Viy8NNA5LryEH+jXftqoJzPXxLbJU5TpMdPuwYM0Vnh96W5tsmH3Iw5E6l2MRYOCgSP3dKMqZftpK57QciSoyvW6n1iVBFO9T9975zL9HlUlpQ5AYFnGzlPeKe9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOD2u6nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOD2u6nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB894C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791655833;
	bh=ZtFrhOeRipfIZvp8GKdjLCJc1T5nQCAnoWmzwgsXkoQ=;
	h=To:Subject:From:Date:From;
	b=DOD2u6ntJJJHjMsx36SiyFNJ5iOvEyQCtAEBiCwHH+qytXGgtTczhARMJ2KLR82RZ
	 qtXBN7burvDm+BlUv7OkcGdmP8u2F92tM0NlQndSOeemOO13hsNnhrAVMjG1OWQW73
	 kcc7Ff8RwdG5Y4fIF36E+I87eirMqymAmv41xiQSMn8jZbWe2ztkAUFwC6mfDP4Gc8
	 kJQGdsdT/wWIlSTwFatRdUBBHJmLQ2u+e7bRUNQS1t0ZG70IAKiSaEyX2ACvBOQK9/
	 qQg/Gum9bAvij4Qw5BeVbjgM43RpXpCey9uxbTtrIsnb/B8KTK2xobK1vhqbCDzcgj
	 TDscUvpJ6+/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6FDCA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165583369.12492.15679370794816673689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285926f7ca4bdbf3459978766d4994187f84b74482733ba79b660fe01ccc42a9
Date: Sat, 10 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791655833
