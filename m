Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D7964D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719111143; cv=none; b=WnV70egX25sg4T4GHKxBXfA1Vs/gcTYW/bR/z08/5wTved5qx5XXkqSCx8Uyf3uKGCGfRfAVhpwdo3vUv0Tm59SUXY2852BEiZKIRt6UPNhTLB11jDaqnWv8blQUfd2ihjgVSfaZXRv6Z+zklyge7zUb2wxMxakjdSHBPGk2EWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719111143; c=relaxed/simple;
	bh=hjXg0okcaR3cTVBj40GyN2FbeItm3znAidk/5xRGRLI=;
	h=To:Subject:From:Message-Id:Date; b=uAE4aVToaCgL30SEFDVbf7Wqn+OsRicnubhfxiRfWlgOnUdEKQxiNQQkbc2ubLSaCYsVZyqpTGza7tLtCC5Lp4fqLAB0Wl7QtQ9fY98j7SW6Rj+Zz2jyeyvUz7KsgJDt/1Pe5QeLLXF0rovfaRM298N7BgeNC4klTaK6szooB+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll1QpV/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll1QpV/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F00C3C3277B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719111143;
	bh=hjXg0okcaR3cTVBj40GyN2FbeItm3znAidk/5xRGRLI=;
	h=To:Subject:From:Date:From;
	b=Ll1QpV/QpAiuxFe/p76b4XKc+v4czq/mw06NUFVqdSlh+xWBpo0+SMNVYZpOwosPw
	 5i8xXrtQdKKQnQSDzL+uFBHEyIHYZjjlvOFPF2KwR8GYMXXr+xIxOs37KLQyUXwlmc
	 oIV4L0uwZIpbQqblV4y3LWviLjwQE7kI39qJF5X1p0QVFA1FLE9RCthIitNWWUHYl4
	 d7q/bK9mvqZYeON0Sy8FOgYTaKg/w24gEQIe984R6ytctpRc3cEf08oP2wm9We9TFw
	 YE7s/g/ljxL5Wb8eKTFGN3s7amx9j33GX0CQ44v7uipNdurWi9/h167hTotbjf+3SD
	 ZCmbIUzq7eZLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7D41C2BD09
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171911114284.15354.17397648919132107090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdf002ee5b9690d47d08118dad3f2b6378f1fdf45e9fee2d531a725acb8752b
Date: Sun, 23 Jun 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719111142
