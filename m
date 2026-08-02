Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA67280CC1
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785637834; cv=none; b=au1iU9craRic19Iu91LzWX7ha5yHv4babquUgmj+EpWhFbx++IO2edhVztDH3YHuZnCmH55/sLEnaTQN371nGjttnPPrRRUuVSVa1ASCTAl/xXcly93YuYGS2taw/c9OMKFpIOMk6r3uWqPoAp0rFGqrINME/TG4k03Xan0h73I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785637834; c=relaxed/simple;
	bh=YHYBJrdwce7DdvyymHVJaKiivWpQ4uworo2vK+I64AQ=;
	h=To:Subject:From:Message-Id:Date; b=C9vSoSd9KoLfak2r9sGxFxh+aOeKb5tMGwXxPcAYwCXtOIkVayfXwVDw+XGfuPH9eEMUIZkryMPl8ppWkhRGv7l4RoM+GnYJhdjPAHvIR1OUp5FUmK4eeRq3/rOlSzc2aMRKsI8ySRFaT0+sjc+3RG16qIdGYynJxlNsCc2qm6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/nGsIx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/nGsIx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E3EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785637833;
	bh=YHYBJrdwce7DdvyymHVJaKiivWpQ4uworo2vK+I64AQ=;
	h=To:Subject:From:Date:From;
	b=o/nGsIx4QJxLGDrBDAHxHopObYhkomHJYFqN2OxcVmAtAjoBMLYJ08lujMIHuxKST
	 8u+4aSb2ISzpUgiK8+Znzbe4DKNMP6u3AO+Frq1RlSdqQ61kFXWY3Y5oC81HQ6mdX6
	 fxl/FXfGBtT9jg+3mLK3zopPLpknYwfG153I8UJrZP/WJpryrs7+a4RBpdVpaa50DO
	 mAZX17dlsjWTU4ukqgSJtU7Mj5strWYZB5R39IJVDkXYabQPLbV3IxTHHh29JlggbD
	 T4bKax/FkRie45PEQt0YfX1q1u6EFXR8h+J7kDobbL/fGuE5VobOiylklxw/OW6wTw
	 HmjG/e6rP0JxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC01BC55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563783368.9156.15392859907436748409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3e6cf24276d38cd3fe9b5be88bd38b7e63c0c886f23375a8e47f0a045f189a
Date: Sun, 02 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785637833
