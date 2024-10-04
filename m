Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6C6219E0
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728051954; cv=none; b=SjE5dCcNoBl+DrVfotPEUB6Kghg5FSDEkWAyf7IQFdkwV3vjN/OPIX/Ejl2mX2S+shclXN9/5GCFSP6x3q6pbr/0uOz5BRaObBFH1kFYewvOCVw265jXxHqZ3ZsC66dZw7sIlbfyx3cZK1RDJfetPK/QniOT86GsjrWmxemWbCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728051954; c=relaxed/simple;
	bh=6aJ3BsrLtP7NyODwdpwvdKfF5VMY9fS4NKktqGWdkLc=;
	h=To:Subject:From:Message-Id:Date; b=jIIJ+csoYTkV2ga1k/F9Y6lk4VMmQjXnho9iiAC2KBdycUgqyNmu/p+VXc6LgmwSuEsgIPeKuOxYwYtHqIG49gPZM3wixGuZjVQoF51VjmmGfwUrR/1kC9tPTrmiPGc5fLyr7XvLFvpmPijXDSShm6BsAOLhpBPukJNTmzCVANc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWhh/i8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWhh/i8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D61C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728051953;
	bh=6aJ3BsrLtP7NyODwdpwvdKfF5VMY9fS4NKktqGWdkLc=;
	h=To:Subject:From:Date:From;
	b=IWhh/i8aEbcVWiLINp3Dzud3F3fSzkywj6XwES9U1/IQ4DCUdArUFibsSJ/KB0xw3
	 2+QMFt/QioWe5PWd5/S2vE7tLX17mTujRDXCynD20/8SsmKo3X6aISRqwv2utKmHYU
	 9VimSLmIX5GnhVoLwOakDy2K0tCOeMp4itVXDK5GaUQZfHG2CKk7/9J1X9/LG3EhQa
	 mqKfa3pV7wpV8TFdjiI78sVSwsFfbqwCdefUavKrkbmds0kzu5BpuKEoejltHEbyFB
	 oyAPYgw3UeTEukWHqEj/8X1nzEaknE8KySycfu+O/Nn1p87pvxnuTDNIx29TgG0rnU
	 dVhqWcfyNpKuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48D2CF8840
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172805195362.15038.14722448578835993183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67d13a338249b4147a164e3b8a08d51a27e0d674144a9f7ed9a1f415fd9ec1f
Date: Fri, 04 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728051953
