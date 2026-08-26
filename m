Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570973F20F9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787752234; cv=none; b=a/Bp/vLOhONT0Ql5YQDMGiZS8wSgsya1TOQADAKG4TLkFyySqhrLTDGsrV2DbU34M/d8nr/704pHZ/G/YZr1Q/tnhBFXfHv9QtoPRhduzVBZkkUT9dVisEMJxe3F2liD+piK7bl3YlA6H34KpynY1EuAtBUaHXfyA1bFV8IU4oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787752234; c=relaxed/simple;
	bh=XaTFiPXdB1TrrEvUh2qVmJgA6Bv/HWm4e85h4Qk/j/A=;
	h=To:Subject:From:Message-Id:Date; b=RA22245iHdM8YI0+Y1SfX/QyKu0ADkgMOavyFEUZ3Q118Of7KXGTsybjOBAqS0cn/V7TLYWQyVhd7P0idCT4PVtrh9tKFu5RZ0+/Tk5ZnPKsrQvBJu6hWAwx9i/aSjh9RkBKHzLx68ctqjNAMQC7OawBsj9pGBLJ8ZxcZ3O/Egk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppCAOduj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppCAOduj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D152EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787752233;
	bh=XaTFiPXdB1TrrEvUh2qVmJgA6Bv/HWm4e85h4Qk/j/A=;
	h=To:Subject:From:Date:From;
	b=ppCAOdujnWFm6Qd6pZU3IGxGJtqtvfV/V7wOJ81d3b9iM0e0fSpBCgzHKN6/ehJ0Z
	 z8TUtTTCYzPUrIijbG2sMo/43V8fZS5w9cn+gQfL/8bFnMvxIJFAJFE/yDh658yuQB
	 Nsqar2zlHglp0kkuboJvulcjutBaimmG4M5Ymt8/fz714TgA9sdIJ1IPz4rSMvkTFQ
	 E4xblf/Rjgd/wyt/YcTilYI1WqyJUB1G2na14GFHCaWc3c2Awhq6Rk42cm0xkLC7eI
	 xuPqi0IELO2j1Hq57JojO5FZs0EXj4olMDJHFV2NeJeAC75Q7g0B16TIscFbw9gEri
	 kcVn1bmzGUBjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD247C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775223369.13705.8535419131781311772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3269ea011e1f5d820c35fa628681f1b8c9d97a5171b938dcedb44dba852ff04c
Date: Wed, 26 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787752233
