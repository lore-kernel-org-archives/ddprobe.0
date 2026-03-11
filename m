Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A822E8B6B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773246294; cv=none; b=Sv5eLyzKVwZWtIn5GeUnFGsQ9QXJAMCRUM2wuupo0H1mA/jRporAxeX2Tbu7tUYaT8lcVZ9PLXdz2Qfzq3i8GgEWFprAM6/uwDTUCrXxO6jZ268lQ1ZsrFk/tH4OCSDvMiRP2baOpcP1SOqM+fgTm2xQyGXfa/NxhA1iGpWrJl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773246294; c=relaxed/simple;
	bh=owRYstZGxn2ttOt+MFzuxQW4za38Sn++JlkVxAWxUyc=;
	h=To:Subject:From:Message-Id:Date; b=abqvgmchJF7L3FPCyumpJW+pSwQw0bZMFE/V5V0R6kJalfjBmYVU1cwAweCgbOMfeunNIM6LP7mgelEsOYaSet8PqAXJ79qSwo9vnll0HGrGDwm2eEbC0XYgkMHxJjvUJLsUiX1rsrCXq4qDrqBZSvUvizIMMMtjjn9KbKE4uGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYf11RjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYf11RjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB52CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773246293;
	bh=owRYstZGxn2ttOt+MFzuxQW4za38Sn++JlkVxAWxUyc=;
	h=To:Subject:From:Date:From;
	b=RYf11RjX0ky1CgoQE4Q2T8G53RfDmuUveaNbEde3kInj+dauxLL/7PbPofivEF/Zo
	 utWD6woq6Rid1zApVxLiH4A/2cVSepDP8jWRa8oKXnuwi58BkVTpllqmVGkoytEd0Y
	 ZINKncZGVAOMx/O7ISGTbSRY1V1Sm7QHNQJ0yDVWGj4TTc0VYjb6qSXKeqZZqk/YDL
	 Mdjh70zreJvZsVWsrFzOwA5QgmsWwB1AJufb65fRI4YJrQNy9w+kZoFRbx7lNEBh4Z
	 LlIABoXX2sKBSmxPcqBo9tCAzXM+ntTk+elh/7K98qjknl4cPTe5g2084H7NIIym83
	 +Y294FIEoP81A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963331125851
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324629360.24056.12431882068088468584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de516af3f07e6f6c444a82386f68fc926e8b0fc2d3c0f17608e9ee00de24764c
Date: Wed, 11 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773246293
