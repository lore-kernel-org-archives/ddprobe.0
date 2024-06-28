Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB7F17BDC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719542663; cv=none; b=rOQqwYkdUe4bng9vKNPv/1Ss5pp2FOlvzHnHpHt6jd/GAvUrHWsI/u6kNHOHgoEE6JjTJ0QwenCv+FKzUuHexM6zqV8vR1/vYmkt16zl2mI+EE8bdjvh2csYLXq/JBu/qKwgHnEM2UxA8RVjW+R0Cl/B44Iwq9WUf1BOfPDkK38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719542663; c=relaxed/simple;
	bh=dqqHrBhmlWAyAfjUuJZFqyka0ndPKpvwnLysOeMgVII=;
	h=To:Subject:From:Message-Id:Date; b=U+rV+hRo9pu6um2LFHBHRXceIow4SmmeSV5ZPU9V+u7VmLZypS/uG5arObhKEubSPUQwaHxU6+nG7Cnb0bEBeJS34TuvfUQWcl9jIC2vVcNLM9hgIOHmtBZXuH0r2xGluNeUoDdxJEg/ph5Xz9/Ug0HKP7v8FfQppTUAmobBj5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+PX5j55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+PX5j55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32B6C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719542662;
	bh=dqqHrBhmlWAyAfjUuJZFqyka0ndPKpvwnLysOeMgVII=;
	h=To:Subject:From:Date:From;
	b=Q+PX5j55mU1ua+OJ07w8yeTt8481VNQL7Rs5vnilXOmxK1aRUGsrOCXbJfzOI7Jng
	 j2PwtOHddTTA5lIogxN+2PovBmKuFNOnYGxHLAJzpRVjzymzQHI+IsTf5u1yYqoxTl
	 bu0INrhLG4Z9wKu8z/x7zl8Yh7srDO+6y/vBV0yyo4iZbzxfc/C+crqNiMBh5fvq+X
	 r6JPWJdwWocMSAlkIq3E5nZxjZUZ7bWznUUDldP2csiC0YavYZ/B4fsnQCZpoITAaK
	 T9PhFr9IKnCAp3aj9sfsKVnpuTPPEzovGNHJrzPZfCWWLx/Awsx3bX7z8B03UDMEHE
	 nEgPWQFPGpSxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31D4C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 02:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954266276.23412.1250487099820533548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad30c937637bd9c43c9058ba630480c825c39e55601e3d97a1420b70e0bc174e
Date: Fri, 28 Jun 2024 02:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719542662
