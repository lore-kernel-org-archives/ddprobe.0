Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4154E155A5D
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786201834; cv=none; b=j9wolweKs9Xdv1iQyn8Nt4V1RcJULoTA6pjmvuO5FzQZ6oOLuIvh6ODIiQmVRIKmaJShN20aph3hlj6+ETHq37Wwp2MasXG9XWYQnapzHImzZPxxx4RV6zQJjAlYwBGCLYPCsBwbgQU4V5xUy0OU2vE5CrVgzsYoLLjoECa4yyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786201834; c=relaxed/simple;
	bh=4bBZcz+vnjNrwhQC38aqikev6ciin10hv+HA9lY55sA=;
	h=To:Subject:From:Message-Id:Date; b=KAC7aez0sGzJ/oXKvqAShWSrirabZXxAVA/DmXCnc9WH0SvWht+z/c73Mat3JoIaz1Jhl5hsZZEh1dFDD+Hj1FVZG3bGsyIkHXMx8j5kV2eXnuSP4x+SY4+PhRIyQl7FoXFKgXvJWy6+hPvakm7T+GYqBdrami43NtMN/FlP1+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3fgoFR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3fgoFR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9CAC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786201833;
	bh=4bBZcz+vnjNrwhQC38aqikev6ciin10hv+HA9lY55sA=;
	h=To:Subject:From:Date:From;
	b=l3fgoFR25WS9NqoIlXosYf0e/05aFBFLqRTpi1OQ0+rz9h8HozSHzrFMdPRdTw8Sd
	 jqfciKnNf90LCm4A7DhMcKjav0+hhj+CiSHpGkVnEPq3J9ny1YGrHk7WyaqkboChjJ
	 exRlC8nKDooaEn1Sss8SUBuXMSBzHVW9yFTse/LpUfO+L1fhLR3hB8BhDeDECh0BJx
	 QjQNlqCf24UpQ5qBXbsx8MhL+aOTsxrtOkSM5Bwz3zBEHk6G4u4WtoHjo8BhLu6zEo
	 yv1NqHgdZg87PmGcFx3deq37vW5HPf8bM8ZlxWsd7aGZUR5e8SfmKgAfsyl8GhCtXU
	 CQyvxBZQaiYag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5A2C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620183369.1704.3329097675844229001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51e7801e64e326c6343912cf0c4c0a2b5dd97c715183745e613f91189dc2aaf
Date: Sat, 08 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786201833
