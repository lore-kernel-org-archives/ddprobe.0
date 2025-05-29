Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADA41925AB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748516994; cv=none; b=b+TQqUvYsEsFrnpN3bUULHlaqw83WT70Tkyd1pj2ntxuPu5diVQ5CguaIxgYgFnxx+d/PiOQuEUS0q4aP8nKEo4xlhsJivA3MlZYhRhTbLf4FUyMsWeJRweX7FomhAL6eVANPRJL66vib6ZAFDMpBnwEgx8NCocpACQho0Laeo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748516994; c=relaxed/simple;
	bh=kFmNw2FffpaX4gUOcM7pZY/yCT0bueaSmIWomZimZQs=;
	h=To:Subject:From:Message-Id:Date; b=nqi6LQwwZXnNztVMVIMC5lL3O7vLh43/liLhFB7Rw2Crd8rdlAc6Darxpz9dmn6dsCrF0aZFTZnzxGsWNYy+DaFojgBCtEBRmBQFhSWa2Ni3/Srzyr0a35+cqs8nLj918xGdePjDbpNSeJCGq/t/ayPodptREEsfXehX2Xyazs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4aDKhE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4aDKhE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F347C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748516993;
	bh=kFmNw2FffpaX4gUOcM7pZY/yCT0bueaSmIWomZimZQs=;
	h=To:Subject:From:Date:From;
	b=I4aDKhE8sFhkEEJWN9t/lE+XntD9F7A0PewrfOFU/Ouz3ht/sJ7+ve+KaMj4mTMyw
	 jLBpW3RMhUj5kkLPoB/nPhZCs+fAOkfzu5k+uk1TQpuCfK1jkyltYfe8B/hnjTqNWI
	 yUNh59l1ql8yiUjnkh4R1Ug9TPJ5kZfkSOf3eaKwMVJ9Lh1RdzjVxzDcUL4cCHutty
	 JcGqz3oswNc6O9FHhaxA24AcuxNAXAJ7lojW2njetXN4VaTFnC/HyG/Cpy1FV+fqVn
	 iIb/5MP7TFUsvt7Zx+tn7L32RuPFsh41K51N7TnbJOJnnG36aDCar1gY9zkprzb8i6
	 aUohgxYEos3Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE87C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851699357.25663.459974489796624743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffc05743ad990f7d12e99bce34311ab07fe8d5dca6b56412f550a40c5850261
Date: Thu, 29 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748516993
