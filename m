Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BFD1E7C2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768127034; cv=none; b=EjnAi75QtwXkRw47mr37aEJVETSwkURMrTOIkVlS0CD6m0en+WJexnc6kUw19PQEKELb/V4qmXWzitBpsG54XOBivNcW4qSJh/13KsvksxnkpbJiN92Hsp0ciy7WF35G44zBzsQZif6a6pPFIM2JhFj1JSaPY+K2UHrlAfwYqfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768127034; c=relaxed/simple;
	bh=BNCYTQ7z0IJ8KaQcCWeW9CBYJXZbANfBO0fMca/40CA=;
	h=To:Subject:From:Message-Id:Date; b=B+0S4qYEZ4FU7E4z4nfI1gKG5YGhe/OFZcBeg+NoJMtQA8f/rLVtv2twckR1MEij0NIjeLrpAV+htqmO1soaEFqkpdXorF4z9LW0NnAQyw1NCDn343F9olUw2FS8oelgJMOH9aQLMuy3kLAVdUfjqOJ1qJZH9XHJK0ptQ5weSSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3SKyxN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3SKyxN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39E5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768127033;
	bh=BNCYTQ7z0IJ8KaQcCWeW9CBYJXZbANfBO0fMca/40CA=;
	h=To:Subject:From:Date:From;
	b=f3SKyxN8ttsPF/GnnUhlFxpoDY88Er1vygZlElZeoP7orHJ+WgZDNOVK1mMwpCKWT
	 gEb8cpsEPrFXFq3+UY38zP4gvaSK46BxG8+lY947G/2EEfCl0hvxBEhcyrINLILCzq
	 o/7Vc0Ai+L+RcyttdgPhsYlTW1NVQrhTdIbFmeNhMUrmvYcpTF6z2fnmLRJiEto4QB
	 0RgLDXC+b9wAqZliZHRKy7ofnqx3mIry4N1X/K2zRT4lHkykGm6qIywGfJvkJ3Wl1/
	 K3QyrWxi98cUG23VsAtmtrrhl+lIME6/o5XWc2jt2F9oGeWFKieR5+XsHMvfIVBGkM
	 jVSRRMrJ3QXxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D81D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812703358.30610.17681575896778596481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80dc833c1029f9a8ec419705d0b25e487de076e7b61e31c88f925d2f1226b0c3
Date: Sun, 11 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768127033
