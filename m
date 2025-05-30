Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C76E1A2396
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748628595; cv=none; b=PFiJnO8hYEzJB3A3BBWmxRHzCvgy/btV/7wIiX46/FwiZQBz/Xbc6EBWVmd3V3BlnCfQ4n7hJpeALrP+V3P4y3m9gyi3i1B2Pm6yLQB0DjRi+96TdBHUpr5ZvNvPzvPerfMhr1xJ1q9Zfta+v347PCMv2n9pizOyBKheaBL57Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748628595; c=relaxed/simple;
	bh=OhbPIpZRN0L6QogAoBewnzhUTGiXkI54a6RJ9Md2aaw=;
	h=To:Subject:From:Message-Id:Date; b=en5h+hBCzTBHb+/fL7cVuZdWz3j2KVB7kIOnshiv+xJBnH0cSwihbpknKn36CTLLNpXlkMmSbEziT+QUiA20HlXbPpBpAWQkxUy7vE120Ddrj2AfDrGIhmpic6uGcgAqIzCDH7nkfCP7BfrItqCSu/ObjENdOayZAa6BxUSoUWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvYVmpZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvYVmpZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE33C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748628593;
	bh=OhbPIpZRN0L6QogAoBewnzhUTGiXkI54a6RJ9Md2aaw=;
	h=To:Subject:From:Date:From;
	b=jvYVmpZpyTNqDzQ5/hoto0MwVbzwTF3XL7Th6PJeVge1V6sI0Z+KlwRkgICncrCbI
	 eMd6xHmXf8Nn8apnvzc+lS8PDnSsMYI2LRW/gT8krz3buIt84Bmk6Kt/JK2PzEcHQ3
	 znBM7MThDBjybSUjJ9cRb14Sdc7txZYSzgJCX9GhMECm9ipja6dEIsOWlv+xjZwpWF
	 TfZYRLwkab1fDOXzzq4Fk3NVuDciHNMOHOJ8l6/Nd9exKGKRTpipNAbuVk4mwltk3g
	 F6IOkHsGFjN4g+vsDFSLMtVdXsg6UPet5fL7lcDqSXxvyvADJBby/MfdAWT0Z23Us8
	 HKdlfyZ32nzyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E702C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862859357.3610.5160775651921703366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76b143290f3581bb975ca915d8730e693e5210ea2979412ed0c7aa8e78c2c55
Date: Fri, 30 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748628593
