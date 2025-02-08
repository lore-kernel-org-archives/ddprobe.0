Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF72611E
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738987556; cv=none; b=pUJpdzinVXcxArIkGpk+2yVVA/FfCj73qrn1ShOadykUwUgcJ+FURf5U4/9A0Fy0XcsNIbo6tuBhZtSuznLWU7Kv/G7vKArjBasupDpIpWgiR8kjQO/xKuiCBoGUx7EO9grhdLUtRaXM99yC+L3A2tU/Xv2mdHdVsD5ixolYVxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738987556; c=relaxed/simple;
	bh=lLZevWMrAn/2eo6DSD9l+g8d1cJT+0neTnYX7TvXFVE=;
	h=To:Subject:From:Message-Id:Date; b=rEkPWQUwfcP6/Ga4kZqBPSsYzRJiKZy4EAk2HbDrhhotvFT4qjbiOHZk8MimsgaTaW53qyc7VNNQNP7QwyHMtVE6/YL2rj0X48SHWXaK34ucv3/PRNtbLEyo82m9OVTDQfeAQ6wZwEEtz3ELkgFQrEMDqqKTES+TmMRzT5hpJQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tko7oI/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tko7oI/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B78C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738987553;
	bh=lLZevWMrAn/2eo6DSD9l+g8d1cJT+0neTnYX7TvXFVE=;
	h=To:Subject:From:Date:From;
	b=tko7oI/QgHbTYmZ6bwmzm1RymMOI4kkQ0VtQkcbQSvxC5Ziwh9RDXGyRdyFR5ghWZ
	 qqQoIE2Nwsh1inB6GGWlxRBVQE/zk+hmPTZDxL/9XP2O5cnwTF7z7x7UbdMc4A9yXF
	 QZP1vBxFXcq3OBMokDgrC+f0G5YH/fYxWj/AvLSXjbSdssArQw0lnFrft8XA2iss3+
	 QalBk0KS6bFkf/h1dahlfbO7Tz4owlP16NH+6uNV00h9IEHwav3Pc+TgV0WbiQ5C2X
	 sKbPY30H4LZDgnPVAjim7nUGICTJfb81OEmCqPnEtjhia7/Fxd1Sgpayo4k4h4yYID
	 g5OAWVSvUPOqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA54C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898755361.31369.3302238892261652680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d848511cb9d61eef3e75d06bff18ca086cbca76ef3119838a2efef1e25581a
Date: Sat, 08 Feb 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738987553
