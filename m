Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3332DF14D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762470594; cv=none; b=haVGbta0UdaRlEBCddchvY3SueJaykgag62ZNI1TgAg5z0NfaGEuHFGFEQdozOjKftsiIA9nxWKCjn+faBKj0NkcJc9+/LTJEKUSCcmlfyoIcHvj5tLOS4F45tmHDLqT/EWyDjXhPiL7Vt8KBionk2q2lEnv3r9K5wR8IsICAXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762470594; c=relaxed/simple;
	bh=RWLJGlcKSLsxwN61+HUKgjA8CcLQz69nl08zecGp4W4=;
	h=To:Subject:From:Message-Id:Date; b=axgUbj8zys6TybZGLtItn6ffqiv/RqMJ0KhoaG6EvLrEJU0+uHKSDvmpJ/sGf2stukj84gvYf15PwZi/xvaC+ZN/pu3FWeA1bxCwCBqQ3NhLL/hDw9YfmKqWdQuy9SqipbLX1p3Zjzg6cwJfg7WluIkWZrYTP/H4kdHWAns9kcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPZZ7Ax7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPZZ7Ax7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8574C116D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762470593;
	bh=RWLJGlcKSLsxwN61+HUKgjA8CcLQz69nl08zecGp4W4=;
	h=To:Subject:From:Date:From;
	b=sPZZ7Ax7ABu+24si3VjoubSiYNb/iNlPg3oVqK6gHqWsweRQwWfL9UD45Vw2Tc8oI
	 N55jSmnqxM1qbgKJT+VqknsA+GDqrjuALwu9HCA+6Mz37TYUmxd7I3foN9qvj4aeh+
	 du2ElHcMfWXN9BuTg83k9OC04a58bHiDxll6FcM7QHZodZvsqdZHaLkYNkNYcdjzYU
	 z4wz10bG5HAT7o8dCeK4mF99AeURTauqskc6uWJea1HGL+e/eKfVZDWYwrohNK7F0C
	 lt9ybp282cc+GuMFhfMVZLCRoi7+DgCQPVm2m0Au7u76Gt7Uw53Qaf9tK8m3xPOSrL
	 a+7EpvGKaARKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98206CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247059361.16504.13481096752383844545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d30fb077159eb2e76268ba61d595458e06362abd597c5c8c82a20a0abe1ea0
Date: Thu, 06 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762470593
