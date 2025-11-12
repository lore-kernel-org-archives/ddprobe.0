Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2435207A20
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762939794; cv=none; b=ZX++Rw2rh+PdJYtSbiE5x1XlLEPsZXi11Sgyh5XBfycuMcPbfMKNKwgXsFZ/z57TvluvbDcBjQ5SnCUfazKPHeuPWfzExqGSIDhU3aOfRsSDxvmaMmIZTazkGXtk6S4TQGb/PmnqTqHCg5+V8hc7O7brf2Ac+MyGGrTJgSIFp7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762939794; c=relaxed/simple;
	bh=JsGyok6NBiqvvb1ztP3U6g0Sngmq7qYsKAIJVN7nCIY=;
	h=To:Subject:From:Message-Id:Date; b=M5xTBxI5SHYe++NVJ7Hcy/F/Wg+7iJABzOhrGc3QdsLOv6lRpABAzTgeYcBGteaK25ynFf5Edv/rUjy89jEdUwicKBXZbunxrwP4rWH/XzAHcGBVsD4gYLTLohZvCC6xGXr3wPTexvoKoGaBbd0NUSMUWDxvT6iiH1rQV9ly5GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pc/D9WgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pc/D9WgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D46EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762939793;
	bh=JsGyok6NBiqvvb1ztP3U6g0Sngmq7qYsKAIJVN7nCIY=;
	h=To:Subject:From:Date:From;
	b=Pc/D9WgXAi7vnq96Z1Gi7KE3FcxuZG+RkIn7R2w2NraDyhDTsZOR/M5helgKBXKLT
	 X0CpfWz5k4ExW0aeJHvdizL/O7XX400DWLFBvDPippUzyGzCPK/fYvQZ4i4XB+sE2F
	 3bzfqO2HQRuQp+8BKjJfcy2WWdZ9BHLSJoRO4lRGCouohtK/Y2O0QCI2oGYuvz/OyH
	 s/A9jpRuHRIZXiiy5PiALAY3mdlkv/KfgqCYnm4LeQhG9nyacUDnCpN2xDnsQ3xGZD
	 XEyoAsYR3Q0aD/UixkShW8kgVy+siuagM3/odRuOul534D8TWOUKwo5Hr1ORIxzdiE
	 TbhYdKioFwuDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AB5CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293979357.25468.7059258341480488242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ade685a37d4b409050cbb765b78d9ccff473f5f16e8b9588243b069875fb13
Date: Wed, 12 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762939793
