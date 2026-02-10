Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746481F09AD
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770690834; cv=none; b=QTDxC9sGjmshULyZNZAg59HVu2P3vI8EqrVbnRKTOe4d9Jmtpscz2IpGQ4LGfhsa2S4Trak0dWk2vawMUfDbmMFN2If8VuRkblEr4afoVg5WNL1irNvVlnnGDMa7Y/at1azmKO7lFy6c5Kzpm3qhhuzXPvQgll6IywKpOioF/xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770690834; c=relaxed/simple;
	bh=JZ+1PPSvBUZ9LN14zm7X9ySGackoTQA+uRGRORih+Zk=;
	h=To:Subject:From:Message-Id:Date; b=FutyCPPBclQZrBgskd4hNHXVmk3J077QLBOJR1KD4Vp7WKSpAspFvfV2Rxw/P8SB4clXFh3DGahKb7VIsWrAw/lmB4GCMTj7fudPq6imyoYg8YAjB3WGjONwkV3OBv0xXzqyzVBV7BEpUvwJOh2/kLw31TQR5w6avLciMtf+W1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCYr2D7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCYr2D7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 121A0C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770690834;
	bh=JZ+1PPSvBUZ9LN14zm7X9ySGackoTQA+uRGRORih+Zk=;
	h=To:Subject:From:Date:From;
	b=GCYr2D7NouIIYFYcsElSnCsGmm9UXgSuL1owkNBHJVVE9vniEOon7pOq0J6yCIHmd
	 kgVsdcM8kvEIeiXnFfX+9/XGi8wgPHYMjs1EF3W7E1BZqY55nJ8aDZ7i432ZkiJRuW
	 lhgIUaCm/NBvfZoqP34Z271YGcxQ9vYDrFJ0zCip0J7IVhgURCwMw995Z1DY5jZETx
	 EcmKbSqFtFtmjZgLkkaLzHJ2LkiOFH8rfOiHd7C4EOc3SAYLzQ3tm4eTEWhSbgMtT0
	 K0mG86dQtK/zzLpl9FvBo1fWB1Cnx9Jc8rxvp9BXAVnCNzKocXbNnhZN26I63lyKzK
	 yKYCHWqV5ub6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2FA4E94627
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069083389.10952.3435897159495639298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1dfc03aab51e83a1d141d999d34639d90f59b580de5457bd6cda1ee1627badb
Date: Tue, 10 Feb 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770690833
