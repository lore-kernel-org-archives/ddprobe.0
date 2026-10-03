Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC4344F566
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791046834; cv=none; b=bSg3Wyy4ex+fC7gvaRQTa3WVsOfqaJ+Yus8K/fyncgyabp6JBHp1MR4bY+u1LggM6sDmoDrpR8CErCoVG+8fueVwW2kzgG6lc3NRLUsbBe1wLwxokUupdt5guQD9mTR7GrPbATJbBF5u1bhKptaCjV/Ssl52a7z/MixstU6fQPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791046834; c=relaxed/simple;
	bh=5JE7MfKMvoY3bysbfxEe+8HTPbhExSvAMnfQO8xKLUg=;
	h=To:Subject:From:Message-Id:Date; b=UCCfmVh/oLFkrFSDP9b2OM4hxBIUbhisvkA+uLfVNXl7iW/xG9TTt7Se9YPJeIJfSEohi5cjyDx4U6KwalcLUeulGWSd2XwX6rwn7bAtzFnLxXuLVoGc+JXoH37MozJ4RI9MakGmA6B8GBhsp+qtBxXfhV9pljF0d7/7wdbxev0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juDNBoAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juDNBoAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21B3C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791046833;
	bh=5JE7MfKMvoY3bysbfxEe+8HTPbhExSvAMnfQO8xKLUg=;
	h=To:Subject:From:Date:From;
	b=juDNBoAAdR48b1eevvzDRZ0UVPy7zdRPK42M2YBSK1yVV1BA6LbbiGVEeIDEZZiM5
	 DKmc933COFlsZ9itftjDiUBLDTVPrizP04xUZtFAD91WBqP7A3zIiCvD2jZT5pYRsb
	 Hm6igwkwjUMukIsTAF7T+qmVl9fFfAupcimUUevQncXrHhLUWwh/qlBRcv2zbpF977
	 /q7ymhB9/Z013+KS6iD8yCUwRxklc9i/oZBsASYlZ0MUXG5DzjP7v/7al7r1hfYysu
	 WWcwqsZf9mMpQguifFYNaxyk+5yXuvoSTp49BPg3d+qpL252IDXrdDp4o4Cj4HhePF
	 6qgRetyqeopiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE92ECA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104683370.29080.17001933301200483348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12e522ad6bea189f7005fc606e07202cad31661b2aa876f9871e851a4530d58
Date: Sat, 03 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791046833
