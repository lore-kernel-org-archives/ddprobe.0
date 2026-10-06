Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1846549E5E8
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791302434; cv=none; b=M9f4Is0wlL4sDbccw2J/lOkk1MmBfhHL6EsMrT2oWwJQ5vgibGa+8dSzW8JigoqcMHh5tLMDAM2CoaeJrOlhj0IB4r5es4F8E7U9H0UXrLh3tLLLFeSBrhYqb3nR0/QfwHNhaftq3sSGx9DNFvrlbwj9VEY8AeyP5kA+o7HUcY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791302434; c=relaxed/simple;
	bh=8CRyDuVRYm3uk46/mJTY2Mgd9f8ZQxZz4PTvnNgGnoc=;
	h=To:Subject:From:Message-Id:Date; b=esYzZSCrsT/ujzS6wB55mOllkDFAljUNx8XoGvLxBn6Kne5btEMnoMM9mCPU8qebQnjzkRHumzRNKJgewijVAH38WoWJeR3cnigva2jnWynsA8UVVHRQfaeDTqiirVLi8YYDjv7hAfdR/nEJ0Nd3iMUfVpJnQPN90tH+UIHCcpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQVtVpAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQVtVpAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF32CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791302433;
	bh=8CRyDuVRYm3uk46/mJTY2Mgd9f8ZQxZz4PTvnNgGnoc=;
	h=To:Subject:From:Date:From;
	b=FQVtVpAbeygsRiLc3Sd+gWG+YHNL0hWY+1jx8RgSeo6zze7SE/Rl8JlCBmUVz/9+v
	 KS77QDrp+jA5P2H3Xt6VlrVeIp9IG671B9azBQhAAhrghy6RCYG4Ko+LtfA/LUnzO0
	 YBfUDVslKvNGKS2KybpQZw/CrlV7MmzGc2hE77xAbi8FrNuxP2JCM/nGx4aHWhwGIL
	 NXvnjEcaIvibrF+hL7EE08G2Q5H0aEc9/12MKEJFDK6bgZMxRujHl32jSrjDj2owaI
	 sTOj6ns7qan9AKWvYpMFBL4Vv+ZiDCA8Bc0qo5JKT13T/e1M8DQpnvmAuADc7w7zZs
	 28qKfIfpQBlBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF99CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130243369.16785.5619097010463539000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c17bf204a54ca7880ec57f241bd588fc536d2a5f002d9d8bedade467144983b
Date: Tue, 06 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791302433
