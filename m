Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6881D531
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716239543; cv=none; b=pr/rt5J1+WfncKzaQ7q4NpWukWeTlTSImb65FuvG3COkhfr6fswIX9LfJHXencCtx7LqIolmLsG4cECS82jLhpsIs8cy0EUk4/zQ9YB6uSTIA/VP+TN70Uwpms49sLbSc9UQg7pNN9Cp8srRqYMXk9pOE28JmriRhBZso8QjW4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716239543; c=relaxed/simple;
	bh=PoGyBsACznPF7TNBv595EV8NXlITQ3cpcilqPSwhi5k=;
	h=To:Subject:From:Message-Id:Date; b=NQ4C1Z8IP6DRVeDdGlzEC30B1PRCHGFx4irjj+oxhM4aKwcTGlJmvtw5c2OsA1MphzdFDU/bAliTSH6+3pxf0fz2FepgBTjAVSx43SPKvdVbHGzXdf6ULYW7OPFKd66wFTycaCGW9TxbBbX1cnNTh2pQzS8lUV62xuQidC+7WvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tganwxzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tganwxzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E71C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716239542;
	bh=PoGyBsACznPF7TNBv595EV8NXlITQ3cpcilqPSwhi5k=;
	h=To:Subject:From:Date:From;
	b=tganwxzZlM3xkpWfj9MfrXYA+CTlUeNfPptAgeQHvbwbOb5bCiGQsq1P0pRM/BNFF
	 mfP5VENsKdKSaYtgXZjiu59E6TJdFYgtul6AANgdrQfEWzQqXetYuxC/iDZLludjof
	 IkwWhJ3t0r55leuse0Oa5gOz9EAcv5aKew5R60mISv52tNrbrJXLre5wDpraXWuq16
	 KFZuNImdnA0/pi0X7m0N57ewMdm9OpwA98Qa85KnKkZHnfAG+7Sg0tjpEDwHzASA0p
	 mvazZOuz4PNqJThcK0BK1FVHU514V7o8ddBRaSdzjoEIfJf0oBdGgznRPewHH/J/We
	 l+BDFzL91LRmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1E8C25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171623954279.10849.12542523774815487169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4484b1a421474a172093074f004f3ee39d8a22fe330b4bb5e203529c58821d3
Date: Mon, 20 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716239542
