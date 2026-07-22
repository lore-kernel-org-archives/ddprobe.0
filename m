Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C37345ED8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784742574; cv=none; b=py3Ruu0TNVy2PMXVADfc9ERV/86uG3S+lGMyRLsS8tS8jd9wm9L4zQyCn0pQ8iv8nhZvlAChlcuSrwDggLznWZJUkq3dRkfJ62op6VLsuMv3pdN9CZLW9qmzxJsBbZsp8vPT9lSWU9o62gqtiJz/yig0C4IHG78EvA14R0ODkpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784742574; c=relaxed/simple;
	bh=bvmN15nQt+fyBwrA+zDKposKi/elnDVjLKoexzz3C80=;
	h=To:Subject:From:Message-Id:Date; b=cztWu5Il1ccQFVxlGgZaAFpugPTe9LVmMI68A9CB9UX+WOZq9bJtbs2MC95WEmoRVb+FIHnSertcU+mSCK5EUmBgX/UxUY8AlTFZomej83nc3wUQOC3qQpvprSSA7+0Fn9NlE73VUzK9ZJd7qcOT0l1LVNVCLLqkkNQukKAqcv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NumVlVEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NumVlVEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40C7C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784742573;
	bh=bvmN15nQt+fyBwrA+zDKposKi/elnDVjLKoexzz3C80=;
	h=To:Subject:From:Date:From;
	b=NumVlVEtttB1IcEhvF8O7l7HJO8iMWG2HiCVvyOpbLdmi5Ypp5w31qnnnUtNMMgnA
	 vSEoX/sosDSxrnYWnHTiS6fMnlgS3DAn8O27J9P5nica3T8YW/wRzH6Yb3BRF/hF5T
	 ZLINhzZIHeekUFX61r4+EuuT1A/NQo0FpLlZnMGhrJ0lsbGSp/FLDxImA8PIrlZl/S
	 naJN8tl4rBk+ZZ1Hsmre8CskY79VYxuHduuX+1CJxod7DVfjTXigeCTjsXcNVXTL19
	 JEEaySZ7U7RZafuf/uDOD3tSZV2HdNAHfsE2KlTjA19p0g+uyCxuMb9Xkp2QofDA/I
	 gsXonSGXN142w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF20FC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474257370.30617.7995728036082125162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5aed9ef80fa96ff980693af5778874d0b00725b17b6fca95cd56dae3f913b2e
Date: Wed, 22 Jul 2026 17:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784742573
