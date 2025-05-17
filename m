Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D131F5425
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747482594; cv=none; b=M1tN71GM6IU4fw0pLIRwm4JVD2SiKga22XFai+Ms7Ij205TEfmvdFd0KRJLU9+guxl2y0CXVjUW/8/PQxAs9GJUVPU0z5CoYiYhiQrvcCCDOCa2XYaC7Pwy1eHRgiQ8wMdhvQSqR/grXRW89E4KxF9hz5ehymdXC6Zhfa+E6IFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747482594; c=relaxed/simple;
	bh=1TU7w3jMA+WAfbIzl7D7NeZ44rNXXoFoH42cnch4XUg=;
	h=To:Subject:From:Message-Id:Date; b=sz5FnxlDmS5ldYpepGYjb/LZQ4EODKGdnIKnyGeZLaVlkXaRvrLDBCrw7cHZ/BgFk2QXTpAz1HXAizKHhbW/DNeAe6nYO5avQXLssoWqKDM/bJfLTPN7/VBi2seEvp1fk0P/+bttfv0nXD4qKtJs7DhQMhXrYG/CcpAlBNaMiS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fno+1HYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fno+1HYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62F8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747482593;
	bh=1TU7w3jMA+WAfbIzl7D7NeZ44rNXXoFoH42cnch4XUg=;
	h=To:Subject:From:Date:From;
	b=Fno+1HYmBlnSJ+M3WLZpDExwelveIE444Pr+ItVmZG/DnSHbvP2tcsBUTngHlfJ38
	 g6iz6gOg1mGC8lPuEMMD5QEi4kyXC3bgBJL3TeHKvKNcvL45KDhKgmfqAB0QPwnT9M
	 S/PNZTFO0it6wfvVR6SbRYgHdAKlFlo5SWt1D//Zgim4MLyHOoTRKiBmLbe/8MTCFq
	 mwxK0gpQMZuQLFMfd0061TuQB1YFvWO8RrPehAaITN6oY/5Kb63oQVGvJZ0tpanVxY
	 B1RV57lpUjGH/pmxthKoOmPxppoy8oXZbStmgaPbXPeHumwJbudFrtU6dhQSRnO02p
	 aUerNGW4xqfyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94242C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748259357.8655.10871688140690206553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11191d4967b948b4dc37ffcadf5be74c900b5b58339a8a66c60827e03e77aa9
Date: Sat, 17 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747482593
