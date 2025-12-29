Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373532264CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766975634; cv=none; b=FmubSURmLqNcYHQSYXF6ezX3qk4oztFOMqydiwR/WgNM9zldKZWemaTkicDxEyp12OJIoSpbOe0pZF/6w72RELweRMVQiTnY8kQBQfBmIjAzWaMn2AUoC2ensUG9Q4UOdUOCOyDmNtxaw/JCW9B1nsFw3wJTHbB3FORFWm6tXdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766975634; c=relaxed/simple;
	bh=IeRVFX5ZdsowPGrNT4eAFMGcVZ8RTtilJUxG4zmFwqs=;
	h=To:Subject:From:Message-Id:Date; b=F4UgDGP6vZ8GEi8k5nYJgyB/oV+uaMdW2pzo2bmC+pY5+fslRqvfHkWeU7xS692gVb/pQLBp03f5rMiw8fomXugdjGd3S7NIJ122iE+XMvnbtBReRqXLOOZmH5wEJgYJlUY6ddCCCzj392C+VKMb2uD3pElOY6bxqbfMFtrC0YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GU/2H0Vg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GU/2H0Vg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22F8C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766975633;
	bh=IeRVFX5ZdsowPGrNT4eAFMGcVZ8RTtilJUxG4zmFwqs=;
	h=To:Subject:From:Date:From;
	b=GU/2H0Vgfc8PQbAhzAUrVdG0BhWBfCy4PDOuEA28Qk/FIg/25kvSDxY3vx39GF2kV
	 B6hJzdE7ZTHGcNrYlSV+B8lLLkpvywyzaDXkcSXrCMODUzkqeCuWpW/Efq91O5uYkV
	 YYTesRl1Vad+OhqTn99FSDJIfIXBA2d6FD2fsm3OJX3VKyuTpnfxCL0SehSqRi7Vjk
	 vLqUqUwswxhnnDi/esWAzZtOywkF8fOZHuzjAfAQpATnjVxD/V6WyeN0zpGCYH/Ezt
	 oUvxkK233DdE734pyQMHF00MTJ6MEGP4/fZ3EBv5Am7k7OJadBju/beitKx0LlJqAN
	 IdaPzIMx4v28A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9271E784BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697563364.30394.12317310863438584263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0015a73dffc60efcf068e7a54b46e53cbcbd35966aa8265b91f58b6a550d9d2
Date: Mon, 29 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766975633
