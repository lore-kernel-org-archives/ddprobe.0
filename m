Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268CA1DA53
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746839994; cv=none; b=CIsJrIrEGAyXfw+qKVYMDDI2XOCgJBQBGcM2L3BvoBrgThN+14Zwjov3q/TE+uiLPpehZvBQbDTihOYh9387IylSEuexdvr2Q0xoS5JH9cHbJ8qlmL11k28V+lKmdTi4v97t3yxhbdANCw1LgB1k+QrlIDJFwzCSeK6BWOFnFZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746839994; c=relaxed/simple;
	bh=fAe+j7hYlXy/GhMcQNiv6KkpQ3DSEHhYQSESxb2SSY8=;
	h=To:Subject:From:Message-Id:Date; b=sbRKqszL3NaDOJyfklpnqeOTSoLdSsGJ7cYnKpMg9hPQuvYirFnSkycx2k0L/EwAk6CGfQFXcm7K6mIJ0cdLxUSCmZ3gAbitJwEEuigDxFQWhCi9nkaqT5/YbU7sE4bci9689+oDK4lpjDKLwWzMwSwlM5iPHQD8gpMLnWYS934=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUjkpGvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUjkpGvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F376C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746839993;
	bh=fAe+j7hYlXy/GhMcQNiv6KkpQ3DSEHhYQSESxb2SSY8=;
	h=To:Subject:From:Date:From;
	b=EUjkpGvmQY/T9f48OJqKBTPYSSPG0KVO5ti+OJFEe7Lv11SILScHCTZsW9Nb9Dbd+
	 3KLhv4XfraomQL62I/5MNN7L3yNLr/uuAurbMFMEaNQ17EeIiWqKDn4aaocuLhOBzI
	 d2bRMxWmy/faLCD3mmQvc8sN1XS+jnfAG6zXNvl/zXb4Sqdhx+NnfXyhiL0fIKUx6l
	 aXW5MSogUf9k/HGXQFt/u7grbZzL5CEuQAiJTantV0KU4aCR5fYB1GRGX9Kb3UYawT
	 REJAXVQdI58Pe8MIDoyyrDGqrCPbFkYNh8nQRN0dcoVApnjdmN+VAT3Lwkf0mmrlK2
	 /1pIfk62Vr1WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E4C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683999357.27567.14445342805118876257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ad46f1245dea860081fb17c666cc20c737892efb642caee13ace682bcca9a6
Date: Sat, 10 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746839993
