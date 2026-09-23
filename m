Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417CF434E56
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790142034; cv=none; b=sTtqnyaW+9m6/ILbwX/82KlXpjPvwDTEM0swn4w/fD/xuGi0xm046lx+bP40bwM+Do2h1U/K86bs2Rlmif014/9n3OBoc6qoXrXDYETDpI3Y6Rl4FtHTZpFrQrrWke+8qLCrNuE8W32K53qsJbW8QZpfr/gg4z2rHkzhoHwALz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790142034; c=relaxed/simple;
	bh=rR+K1ark64oK9NWZ2jyaS4h2RU82RvsgbH8OmSeK4is=;
	h=To:Subject:From:Message-Id:Date; b=EVUbtEf1OwNZe0up4oQZ4CebfAhG7zApXaQO1TNUJgs/k3UuZ3dzpptYKnyc7wttm2KoXw0OBMlVH/sQzJSLBBCMG2FqIQvw20ZinTzuDGaNPgYXHMcq29XPC8938Ac/YxpZpq5QuwiIrRBYVF5tyuZH1Pf/mYDuPG8fMIAIrKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1BMA/SB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1BMA/SB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA37C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790142033;
	bh=rR+K1ark64oK9NWZ2jyaS4h2RU82RvsgbH8OmSeK4is=;
	h=To:Subject:From:Date:From;
	b=S1BMA/SBE7C+52GRUg7mAG/YsA35zmgL5SFVZOA2h3sfOb2plzJIri3jxngiqAnlL
	 x7VmtlL91f8+2xMP1zks8pOy7FcHDerGJlKmpalK0A+hBvVfu2PJ+wZYGtb+nRQgR6
	 i+fGNitLAcB2RBlnGcAOY/KCjxGwydNlTr24QpHaCxWDJwL16mbIhwlXQ7SGBg0QR2
	 ZqQi3uiyGSnCUHxvhVff2vf44y22cRNaTzqoq/JapgZG4NlV4/ptX5Acu+xZdkaU8g
	 DVKjN4rA7opARkMDshJmzSnubiRUJtF0Szrzr4Ez20YLMeXmIJECmO0Y5I8Enms75Q
	 E/Cna42GqwCOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA9FC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014203369.7512.16972920009274121272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c2f6d903517020b8f5c4c67a78a7e10bb710406d64d727864544595e74e373
Date: Wed, 23 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790142033
