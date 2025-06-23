Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D544C83
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750721395; cv=none; b=J6RFL54gU/uKUOCGbaKLO9JTZEMbhDBIF+aVWm+2GrABhfURP7/lOXnOL/jXqE/65Tv+8UTGp4qd+yLvSUhlbZ07WX3vN/uqf8kHOz05CSdx4MzxXsKkEhFg584r9tKzAkWBzPIqFxJo+W6pZcGrtrTKoWW+QuY1Yi/GVFfrxDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750721395; c=relaxed/simple;
	bh=zEs8QoBdu404i30BaiIguU3P77EVs98meeQ7lFE2VNY=;
	h=To:Subject:From:Message-Id:Date; b=QsukSnF7Ida1N6LNX42F6+JPJVNM6s5sgLhjzjDb2MFepW9eK31zNQflp01JP2ZOlrTOVZ94lUkVv7eAPyxxKh7AoxaRNo0up3WQv9/8ZmrIE4O2nl1zAQatwhoWVuxd5Ya9wBQg6VnWS0n/g2OaCdyGuVMPTpz8Eedxih42luU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPTIv++c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPTIv++c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10FEC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750721393;
	bh=zEs8QoBdu404i30BaiIguU3P77EVs98meeQ7lFE2VNY=;
	h=To:Subject:From:Date:From;
	b=BPTIv++cG2bMN8mhLUrHOYX3+bzpvugkkWUi18Vv6gHIx8Bian1nSnn4Vfn3+aGmx
	 FxB5usu3o9ImdttKhfz08uJ5VqZtlyJrvYYgH1puSbnStdUjtc11PKyAex8GXjjNAA
	 QpuX0nBf1M9eYZiVYW7/tGhpP/Vop7bTCNCJ/HL0G29ccpfkaQlrsO6LBc0fcTk+qo
	 Si3Vng030uWeq47OR3peRDLKGsuey4vfH++G/kv/PGOFQZJufH0huY1zcrydwh/9b6
	 0nDs9fbvhz/ROlWMFvtuIQC5OrcTRtkX9TmW1R4LcW5SI9V4AWHzCuiSFX1xjVwv7E
	 A4V5ZumJDFNvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F91EC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072139358.16947.123807596229120763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ae69e9d0814e1b480d268c710b757a5ac91ed863e9d3f49692d050a0f42af2
Date: Mon, 23 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750721393
