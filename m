Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120311F19A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769390034; cv=none; b=SUQXQGMKzU4hJPwlvurd08WMZzmU0EIMU4anDJALZCEAidaiOySwuY9O4KGvhPBiarSSIpBbSQUL3ZFF3y9QrqTz7SNFnbYrtk5WiL0pXcGV7fChrkqVkBbUSdjSPm9q9/XCCMIHV9GX64iKsOqghl0rmDdFX8hm1vMCMoHlA7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769390034; c=relaxed/simple;
	bh=G4k4lBC0zI5OX1yWfxEu/rDt477X7xLyuXM5OYflqpM=;
	h=To:Subject:From:Message-Id:Date; b=AiPlFsDrMv4SlUmlbzLuibUuUXkPgYobeN8PVZccNICB0XSjLml7GEGV2vBUD8gsjYVEtXIyQ+MduehRmQFaZ8o1GkDlCxO+9XIMbZTxcpoT2JsHt+/ql3PqwK595zA5s8lryUWxvgIkcOvr9Qu2szDdO6TG/W4BZTuuMnjH8Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfXo09Nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfXo09Nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F656C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769390033;
	bh=G4k4lBC0zI5OX1yWfxEu/rDt477X7xLyuXM5OYflqpM=;
	h=To:Subject:From:Date:From;
	b=TfXo09NnLCFHGZj5RF/fTGptHc5eHiRNrhzoEhMTozLI1ctZOdcbFEzA53JhIICs6
	 eL1yF8qjeYOBNgW+SQP7VQDnwRAkpNaSm+ZiZq2emmlrf1VsStA/jOn9LkQPHfEJ/5
	 RL6phPo0rjPIZ6Sywcwx9TMUIlmPMZ/NiucOz0uwaeYMU49dTOaNwXp6eu7TYx2bsV
	 uDxJ2PcwcOHU1ot98F0jMWvT4SV/2ndWrIHYt1BkmAHbKtHUsmmtzQKKYhSHxmPkMI
	 r+Lorf7Jh//OtPsfXCGkc24DpNdNM+0aaNAPVTCPdZvqStFvrMwHUpKJ3rAtyPJAve
	 x9Q1ppB3GwSSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DAD778B1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939003358.13222.4303401901143745755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74f85f3bc30aadbd7bd78df4bf3885c0f5cfa954bfa9dc23592cc8cd4ae53c0
Date: Mon, 26 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769390033
