Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C23446075
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791960034; cv=none; b=BNC9SGEavhUe73U14I39RDRkoUs6I/q9adYtWPXJiXZcAlbrxyhpCKAP1NQPBlTljscMWWJZYyGJpXIozx7CPb7nyvUDFLo/O2I5gT6PLh0SQewHhwo0xj7+xGUjUqu7ae+Yqy0WHju7vrTVGmGNOJSeP4ryNyOf6bLR+TT/3Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791960034; c=relaxed/simple;
	bh=kZxDLSRoG3Mnrvzc2DkIpqD/a7em0xi7SdOnPAJJ3yk=;
	h=To:Subject:From:Message-Id:Date; b=dkPf8DScHxavRZOtLMJ7L4zJeM4TklKMf3MkVqYutBxw2EoNliBFa3Ep94qE0NRZwT9ZIRotPM1Bje4crCsUzYLWj0mbgdOWqlqGTYvXINzV+obGHjniSL8cpBvLr8dC898NEqQKIzAqqqPxOHvKofspbsrd796NXEj7/zUcLRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rB+wB3h4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rB+wB3h4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E6FC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791960033;
	bh=kZxDLSRoG3Mnrvzc2DkIpqD/a7em0xi7SdOnPAJJ3yk=;
	h=To:Subject:From:Date:From;
	b=rB+wB3h4MIQ9EffsTerNnuvVCuOkR8Y+Rjf4j61xSTofZ14ry0lchyPs0mzcsy3ck
	 glndgfzQIdu82jVviXTQ/R7hgvhBNPgzODrsesMozaltve/9sxZ91kmWgsYEa23deR
	 CikQLptKPxHVMgxc/37tYBTzuFHqoTQIXMZczD6tVAvuhzAUTscLW2fOIuoDETec50
	 VjYAhAysbTAZiFQ/1lMTJyROctaSZ7w9MgKjQqWRk8bbv3N045cVC3yh7L8X+aDYPk
	 mrbna6+CqLWK/C7RLAyr6wrwHuDvMpIFFPwSsCh1a3r1lIobU1aVOQ+2t3bHauOq/8
	 a27IIqh8X5USw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5A7CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196003370.27905.10797854618548390670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ed6951bcd3818d9c81da12f8b5d1eeaec2e93d06737eb402528410869d1878
Date: Wed, 14 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791960033
