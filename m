Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FCC3A9D84
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775923054; cv=none; b=f553fssc0xLazJzjZjho2deO3ts2wuJ1w6oeYXk9OZamrWEhNKeGaJVckepQG3QKDYmT6bcZRaSIysMb4CdBdKx7ZyoAXAhNEh90sx7klKvZuz67COv9kJwRDmqh39Sn55DS7a0vIeVGxNG8eIRiSBVbvDSFfJcN5hZVWybNB00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775923054; c=relaxed/simple;
	bh=oOqiNZYR0n2HWTwqyBbpRHulSaPcXlxsVrpoquIsA7w=;
	h=To:Subject:From:Message-Id:Date; b=UB5lQTV/h7ZYDgkkR7jETipqKf5JjyNaqG3onhtJnbWHJQAyqEW+pxrTm6cO8YQ9+3osblbVzLGjfZwNlpWKFI5pfc+aFbcKSRh0cxtBgjUVaxpNq6Clr1jG1NJT5zlKm6BkyBmbKLB4B9RP9T/6iczGItxqfPoatWi4jhyhJE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSE9Gf88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSE9Gf88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC300C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775923053;
	bh=oOqiNZYR0n2HWTwqyBbpRHulSaPcXlxsVrpoquIsA7w=;
	h=To:Subject:From:Date:From;
	b=tSE9Gf88FxYyOaV/eNQhsByRzL9rAVh6cH49xDJVQFxPxpbADhyWUcfLSdi+PobgS
	 sifRsBaYoNNwaswt9SJ0s0G0aw0qhfI+ligOm5oQwfMEFdxVrmV1mZG0tHMBM6fo5H
	 LfuNrCfArentVQbH4kF+J+gVCMBv/d9eNpwm/Ibyxel4UBFKEf2yJseP/kRsdYHuB/
	 2JnWyJKNtHczoSSdMb1/Uc2+B882hW2SjVekJz+UDaXtEY/VUmgV5pL1FesaNa6RH0
	 +aRHVLfTrgjS4K/he/0k4J2mU3h5RJTDiZUwxGjCrvaUYS/1K7suCaQZNlxI9ITj0j
	 0qbO8V9DYQ14w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE65F3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592305368.5020.2129958753362008223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebbfb37cb74f35caa958f635bb17f07d8a5b5651be79df6c1cd4ce5e3accd759
Date: Sat, 11 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775923053
