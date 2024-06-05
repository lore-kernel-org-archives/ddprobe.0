Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C13B84E1C
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717587983; cv=none; b=EDuT3cOLeImL3NONxVRKOQEvzv2YXYxfdyFLGCzqu6NrkxA7rF0Y3gSBngH2YYU3oiFOrx6zvfZptPU5fd4gYh+5Di3aTRRPvJG2PdJLxIqJviFFfHz6r0YQ334fFqjWdj0cz1h1eWHZrcvHCp6xCaCZNZu+uuGwx3RVqn7siPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717587983; c=relaxed/simple;
	bh=yAkW5ngEt0bU+3u6yxEuI4XCLCnZczIm/BQv+puUrFU=;
	h=To:Subject:From:Message-Id:Date; b=GJR3l4GDw4bs765OX4gu3fJnNKicZxrRbuPYoSFwJhR8xpfW6gKIJfGl4XaYct9ejTkfh7lg4sz4kN5QARTo8U92kEMy094NyTVj1VKNdKmRPzuWVGoawauy7atUxHgqaYk+hfHz8huP7rGzISDmmjNIMmVNC1DTGiMdZAvjZ6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6JJwItI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6JJwItI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE277C32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717587982;
	bh=yAkW5ngEt0bU+3u6yxEuI4XCLCnZczIm/BQv+puUrFU=;
	h=To:Subject:From:Date:From;
	b=F6JJwItINKlbPNja1rj6+jrf4OO210DgStE0y2oOR03T7wSp428Vtg5oqyRx8rknD
	 2pjl7T4E8l5Jat54t090wHD05IcJ7/4PuqjgrzHnYMqS5iAqcPtVhBII+RxJJbGEev
	 Q3UMXw6qOXBpo9MTLuYs3/vBreqhPv701eN63vxcA/+/PMmiGruZD1ae7arVseR29C
	 IOkHPWaPyJBbMS+2EBRWkPNrj9YhmPY5G4nh9fLmlykMI8P7yI0a2a8m1IIcxY8Z3o
	 KcnF8FnheXTXWELPv2vXn8WKIe0tH/pwErURqN7984whcgjJUnTTN2N8pF4Ini0aAo
	 /EoV5AC8i9uQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAAC1C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758798280.32016.3555999749372153394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d7c1509baa616d59652dec9c93025158be9820188886848773b9031a6bd4f1
Date: Wed, 05 Jun 2024 11:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717587982
