Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4822BCF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765503174; cv=none; b=NFs7uiAbjecYdHb59AO2hksOfGlh0RObOPJnmeu9t8TGynTTxpeH2gNTbxy7MM1qreKeGtzTcZcxurVs/Zns/vZ9PB71FY+94wPU6vrPc4O/rpQ+ec4mCcgrv7dgCy1ZRDswHWrNautFBt6+LCqGIWSYiySlzQ2W0qsIAdln8Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765503174; c=relaxed/simple;
	bh=+ZbAM607pciRujjxirXFVBJ1Il/MNbustHdKMKJa07k=;
	h=To:Subject:From:Message-Id:Date; b=RLr/y2lOMLbesMuI885OTh0FBUUiPUsZg6aqMLWBpU9+r4SHDiHeJ9BgBkemsI5jmMecj9iEhuZXdQE5N9HCKJdrmV+0gSKc0sWHYwygXPfO87SfnroavwJowQqkpxzXP0rDINNh72fNeSLqZFBolKiO1WkNxqbKRbyhrgj4T9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEPT8paT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEPT8paT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2355C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765503173;
	bh=+ZbAM607pciRujjxirXFVBJ1Il/MNbustHdKMKJa07k=;
	h=To:Subject:From:Date:From;
	b=sEPT8paTKOQHdlMWzManmIB8tSrAc/u54MdAAd8nIp1iKyEnXoSvfGIuaTmDz7Iko
	 z/IfaqWDDposm7N2O3k4ElpZPTpJLZP5JcsAIJqRGBl5mCzTaAZMXnp9BpmBh7tnOb
	 bRl81AhCjiVVELSL5q24t+CGKuU37KP7o0L+6JY9MuJGkXhqkcpm+4NjUXYPfghBDD
	 HpSNTDmXu5DMh65a19OUxeUdcrraeja87VIkBXmuagoaAhSc4M2+h25s5kOH1g/JzU
	 qxF2a8RVevn2f2C14F/SOcvr5PD0sfBHrCX3S7CitXwnbuo/RO7rsy0HtjowGqAp2D
	 LzMvgBty9h4cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935EED4335B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550317359.15663.16727918436764314205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecc341ad81a686c20133caf8d0efa01bb38de555968899efb100bd7a889d404
Date: Fri, 12 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765503173
