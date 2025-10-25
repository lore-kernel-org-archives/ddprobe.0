Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1917F35B12C
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761380994; cv=none; b=flUbkKCwhRZlUml96xp6fDQS/NPulwHnhtqCZnjdjmExRmrlk2yeIBz1DoxYlrJzc6LLh7obLwkE6Aeihu3AcKV5rlQIPJR9tjQiSm9RtVXHDL+DTyl9NIE9UHj06DsfOMMVmd+Bd2lRXDyFfiiBcRKn6tEaEJhCa8Yj2FmOCDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761380994; c=relaxed/simple;
	bh=76RSoYR7UQDZ69MbKyM/wl3yrHOXZjrpUI6XE1oxKeo=;
	h=To:Subject:From:Message-Id:Date; b=mEGiYm66Ntq5i23OoH1IkeeXKHm7D0iDiWVCk3ckQC1PvgVTFOqG7cTqYYVJHv9bKDH/ZDGD5bQnDQYFENkQQ5Sg0KAWU6k7WdxzGX27OPb/R8cLfj+EtfbtNIDIoU+HmZic2Vu3sHvb+i/2bCU5MsxaJRMXVQFMTZfFpITt+b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWUGWyJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWUGWyJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C04C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761380993;
	bh=76RSoYR7UQDZ69MbKyM/wl3yrHOXZjrpUI6XE1oxKeo=;
	h=To:Subject:From:Date:From;
	b=CWUGWyJOpyFeB/RGHKe8r0OlcStLLHajmNvpqyM/X+1RM9htegqMmCzTMpG4glTQ5
	 bw3PJOx24mIiSu9icpraRL01l7B3sUCKlN2knEH4ZwbEYx9v6+XjuLgoHqj4m8gD01
	 +yPvdKurfquN/s0HSDWtQMub7Rp7gzgkr7WJlTe9Fr5smCy+SzMqvv6Hwr88QLluGm
	 XuUoDWWd5zZQ6oPS/73ZghxYCpdlHWNvrNktMgmKI/S7p6GwEV+8EMhhKWOeCav6Pg
	 QVyS56w48xOb0u9w8QE2k5M/JWQ7SGTEhQAHl8ayg3RfGVuhewexNokzRz45R5PZmD
	 CL2a/IgmgJZ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94644CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138099359.23746.10572782348941324659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971863f7f2dcacfe5e1c833630f519fc04a607ba94f80ba291d42e3b64eac4eb
Date: Sat, 25 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761380993
