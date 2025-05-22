Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4772F1F0E49
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747896594; cv=none; b=HBoJwkkAiIxkNAu6xXV1T8VxG7Nc6PFFhzBoeB9SYjKHFEyZ0J6Xx/aNZJ/r11qfNVfRdy9zD1SugPzpLb4L2sSuUqylzNy3UOC4OejHmIpAp+3zpoiJfrL4k7F4hEUkMOKrEsub0+lghqahdn60ebwM2PpiKIMbgtg4ckeexXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747896594; c=relaxed/simple;
	bh=oVyjf1g3/gy7cjvUO4Ve5bAOgVO3psHaJ1TwyoCkPQM=;
	h=To:Subject:From:Message-Id:Date; b=Timn/z3QPuVF7RHXJyMI6RoC1ANW79dVzgtnA/OuMlTB38o0Oqq1Cga1Zb9P/MhMoIjmtXCZsnTgKWtdsR5MCmDg8Sz6szetPaYmzTTUXKEWbcsPrE7gRqVCWjZgJLwhr9AWOzwjtHiWv9sS3yaE7u+AylMUTTGLfMC1wS/63ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWusWqqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWusWqqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A396CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747896593;
	bh=oVyjf1g3/gy7cjvUO4Ve5bAOgVO3psHaJ1TwyoCkPQM=;
	h=To:Subject:From:Date:From;
	b=lWusWqqHledsPItUjLhZViqkDJZnx+aMQz7buZYNQJvtcm6Z3WKxasP+8TNifKuBo
	 DF/fLuVxamVsYK01ZlkwG82PiH1ZMgfnQUtRkLEve/g0WQ3FVBPErEN7Wky3WL42tF
	 1HiuTMzJ1XYb1XB6VInsabaEnI1Q892UDqDKRKA4eRk1y+cAA2Nd+SQlRdphazsqwW
	 vChOrbB56Je2SZMeBmj+bYUVHZ5cxbbsDn3i+Zh+fgmFn0mwqdbo+oomSczxVErJks
	 okE2rC8T5/Mj2DDHrn6hV1wbJiD0du02cc4/PFExY/4q2QZZttC9477jIEiEQgW/TV
	 wq7GKYon6oPjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F573C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789659357.25035.1755092938890356076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f876abd5f9cd9a8d8467c3368536be4a9a31151adc887ac1ebbee1af1510ec7
Date: Thu, 22 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747896593
