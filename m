Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7AFF9CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729398954; cv=none; b=MN8vzOTMTJfxttD0p/Xq85z21jw8zTtzXeCDuf0ndVfl/uXA/Tz6fIRifSyueuUcMc+OJyyEkfuTMpbIx5hkV+gqWfZAtld4xEL74Vzxc+ryM/ytt1aZ/mNeWngUcnWZeS8UEDIMyxIEvYim8fkFCN6A8Xs6llVLmnzU6572m6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729398954; c=relaxed/simple;
	bh=fdBFx4bAl6wgoffn5kz76VGrj8IcRcohpRx3ZgU+6ho=;
	h=To:Subject:From:Message-Id:Date; b=hjQhDMZjbE3RAviKX6jRMWAhJp673Rwm9p+nsF9iquD1QD6uPEtd+dovxD6usvL+8QJAc9XnAsDVinQGVF0M7CKuJgZ15je03HmrmpTXgOJWHP5zXYruuoLvBbwNhgKCQxHJuYXdTnOu4JUvRaXAWCtwQqrcnKVV5/nxPv/lUM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHN/2npA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHN/2npA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98BBC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729398953;
	bh=fdBFx4bAl6wgoffn5kz76VGrj8IcRcohpRx3ZgU+6ho=;
	h=To:Subject:From:Date:From;
	b=CHN/2npAKaTDnpbfAElrbgZjoWLRHaLZiCM1LCS4L6auGlMJYYgNWcrz9fr5KCMfY
	 3IR0/plgAMQFWNoeQgmgD/g/La0WNUkCqSAMC/glmLJHU/6UnYUBbhAgXEUhkHc4oi
	 NZY7hDnRR1e1xuGLlPlPYKNk86kgfAVy9P0EUBqy2JWOG+XCMzStQTWivOUrZL4c1m
	 xqz7Of3zi7KNPoQbMfZkON2jXJeHCJVS08lTEmJeRS+59N6nrUM5earRX5fJmzqL0S
	 zq4xZA9qs4jKrR2fMPNQwZ12T8nLZ57FldL+ZXLSHscSZ3fJnZH+h/i4AKhDM4H2U/
	 tBUDBwcS857Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5316D3C934
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172939895363.20490.7555850799219341054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e543dc4159eb72eb6a01a615819a3258bbf33f09e5e149135b525ae73b6ce89a
Date: Sun, 20 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729398953
