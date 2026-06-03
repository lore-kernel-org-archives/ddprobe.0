Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C8343E48D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780504474; cv=none; b=rxUQG60POhpd+RElFty8V7/OqRMHT9BJQG9QUwLi0FNuyENLg6CJTy06AP940jDEM6TCHYajnUmuuwoXGEabpH2njdcxPSipt7vP0+kCQP0ZdVLpWL6dLsT4X43u92FZLj9ucpPZ/rUnBFdZbIwDaQx1QNbdK1rGAp0f984v8w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780504474; c=relaxed/simple;
	bh=PcizN0kdz/bvkVUqwjnvfqU6cAGVOo8ILmceuiLem8s=;
	h=To:Subject:From:Message-Id:Date; b=Y98N30NsHmPFZp4bycs+xlWu3PfFUNNOCAKgEAhu0BSqXVHansbMzSze7oNqlSivFWFLJRCC8jmF8rgnw2JNkXwaPFvc6ltALvK/NzfClRWUFBABzapGq3xVEXQJAtn7k8wIR0ZaAyG6mpQB0P5z91pJztRuY9w2yJZEBImPiSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAOxsBZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAOxsBZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA50FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780504473;
	bh=PcizN0kdz/bvkVUqwjnvfqU6cAGVOo8ILmceuiLem8s=;
	h=To:Subject:From:Date:From;
	b=WAOxsBZevw8RMtRHOxpq23Lj//75XiQAFv4RpFIDcCJZYvm03Bm86tD6HbaDi/qZe
	 tjBa/RqxJC0y3gBXkLklSZgGTJugviVdBce4rSG36ny9CKnwCWY+dqY4WJTnY4F2de
	 BSvBPUCjG5xgfSE/wB4EjphB5BbXuzGFtpyfrZIAFbNeu0xBuoNwafXtKYc5yCGVO5
	 e1tR3nYA7R6cA1EjdydfTMbo5FlRrzw+AxSAJaZbAQZj31nVnZwgMQw9+KbIdsWRHF
	 XG6mYBeBBuZcZQBbhM4ZztRLc2OQ6lGlX7X5YG7Vvv9t7W84jSOXYfWszMY8pHadqR
	 rtnDGE0yKWzJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B096ACD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 16:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050447371.7490.9731279693286560153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8e2fb08a374f7e03a1b3c107c62579e74a529169b4d44332940dac4c4c8fea
Date: Wed, 03 Jun 2026 16:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780504473
