Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD8526289
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726271754; cv=none; b=THky1uy7iK2X8a4Egf/LsmXNo+3gkg7kJYdkY3NMWOSWGnFs2sJ8GZJYWTr7+jD6EBG6Ew1r7BvSCzy3XTLbdl6d0c1xpTQLCIR4WlEZA7gEPjZbKo0MoiCnhWNb5A+IBVOWBqi5PJ6hGmGCg/gHhtDd7bY5qZgEOcROoub9xWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726271754; c=relaxed/simple;
	bh=RLMzuCzD3hWaTa06qch8HwQYZTdliQMyMX93QCSqhSU=;
	h=To:Subject:From:Message-Id:Date; b=XSqawc8fWSDgJcxOkpzPUG653fFh2Ii5qYyhhyj5ben+PJyb1PbtTgSrq74nx3P4+n8RInaDM618QUSwqUjBTN8djf9PxnbNWRJmma4d9kNZwBIOexD6KWHq0t7eIo9cGHORLbkwPAwTbLlb+prWMcu/UL1XNQwvh30aWj3/muc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJ7DiJ4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJ7DiJ4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A411EC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726271753;
	bh=RLMzuCzD3hWaTa06qch8HwQYZTdliQMyMX93QCSqhSU=;
	h=To:Subject:From:Date:From;
	b=mJ7DiJ4jN8vcPV+ySYeLhJ0ZSyZJTq7VtbehG5CiO73B7J9N0sOOMTY7gKenZHl2W
	 lf2AUMUObnWSfRwgRoUxLJOItiJfen7i1KMCEI5FWvCEi2XEzJvkLj6LmG7UQdavmN
	 whMx/MquDyVujC+pXKC4CyNwRuQWzH6MA9yIKnzsPl9nlEg1A3QNTbFn4SvM63TksJ
	 ucGB146V5sGuhGoj73t/8GQnO71Biaye482kp+A39lHIrZqcPTTfFgsB9ndpc1LSOw
	 Me5Llv0ve3RyAEuS1Ah+PtzAHabk9zNrBaFzF6GPWu+OHL1ZkfVJfwxJbtBlw6kFjv
	 FUi/dF2/nTRjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B2DFC6185
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172627175358.8419.18410632501331749518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23962640c4087be920b04704d224c0c92581874c0afbfe5682f835182de8810
Date: Fri, 13 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726271753
