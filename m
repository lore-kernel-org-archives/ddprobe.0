Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DAA1E4AB
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766261034; cv=none; b=QGiNb9VpwI8sBr4RdBKEuBWKSn3bG3xqxJNn+ACu4zHMov6prWbnYxBDE5nSkTPVVyJBDp9qfDpAMIRvJRYDPx1qDbp3dUfiRzgtmNOJp2qdY3il0BXmcow83QqqlW2HmzcR9JCeQ3yVWZCWZrOA19KSsMAPHUA5M9emdpfnxB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766261034; c=relaxed/simple;
	bh=SL4LJhgIcQ6SQuWx11/E26DQs5vkaVQRH7u/7b1kQqs=;
	h=To:Subject:From:Message-Id:Date; b=NQ1F79Quzg43bGEVN3S2U1r+YFSdLmOFmQmNFCFKJLM75+ClItZY0HObNf4iRfsP/OK27sZwxhv2vFS+nVbJUUSylQQO4Gz3l0CZUwU71TdsoM46t6qbvSQ5miteYF06CcrdDYKVWILTGS1wMyjZyCFFCMbHH/cDCVoY7TPNmzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbmiiUJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbmiiUJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EF3C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766261033;
	bh=SL4LJhgIcQ6SQuWx11/E26DQs5vkaVQRH7u/7b1kQqs=;
	h=To:Subject:From:Date:From;
	b=hbmiiUJY2qA0EJyfpmW7R9Ug7knLYiXc1Rq2TvaY9py//BE6tgUJksv2CkBRvexu5
	 sCDiVt3Ffw4G4bnomuERBpZIvHMMtQtt47aDo8qpFxHnaw16rMIfB1VtkDmMMQOh4v
	 s/Riqk9MC6RdA3MROBFlYS4upXPcNIXTyvxsoLgnCh6dPANbg9XxmX0sEzqKGNqIp/
	 WF4Vj3Sp9jYm+BEd4s1JTuotil/HBSOOgkl0npch0nm6J2JndQd2R2jSF4KxmiVL1P
	 FtfrO9vYTkyjdo0ujwRUkqifDXyn55rSLq4NXI9wx18KLYN9FRMJm1lN+gR4ELF4nX
	 YX+5SrG535kMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94053E67481
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626103358.29114.5900083766330932042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d01cf749c3c92714edf155122b9269d234d5ca1c67570e03d9a19006a429728
Date: Sat, 20 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766261033
