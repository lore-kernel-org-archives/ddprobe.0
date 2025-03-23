Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40268204595
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742725794; cv=none; b=uZ49ModhvtujzX6Em2wLXiXOnVnSkJKUvKsllTPGrwU5/pPR7VPEBrOSVBGDBJuX9U4IGBFUrhcWDqF3hjCC4xhZhMlXkkQfWaGf0UcGHAt2eU7r3shP5rIXdk02yWDhoWulPPPEX8HhvlKdJ3K2J5TAhvzZNSS0OMePp//7h8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742725794; c=relaxed/simple;
	bh=+s+Y5qA8PYkR81ig5PP7loLsXyRpRsnzspESRPziatE=;
	h=To:Subject:From:Message-Id:Date; b=GMQNVxyyxMHHV0yI/S7ARaTUkA4proNKAhCj67R7mOkCUFTFTzul00h3XGozoQLxRpTKip9qbLXZ/dPylVA6i/A05F8psRxwsTHF72abF4peLOmU7sCKxcCLfcAofO+5XdMtm/y7UxlToukmVrRtKUG2J6k69RrwvSD9ofwK0og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7yZnG/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7yZnG/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC24C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742725793;
	bh=+s+Y5qA8PYkR81ig5PP7loLsXyRpRsnzspESRPziatE=;
	h=To:Subject:From:Date:From;
	b=e7yZnG/WwEqN7njN6ZZH8WqMDEdMxFmgz/xv3043QQNrryWCsUkPwgyVzdyImQa5o
	 2UhK0PE15//AJe2JNH4PJ+hdxPvJ0fCQK7I84JYYAyQ2sVOH/Y7buwceMSb5UaZYfE
	 eodqFYatnOl2a+khB/ESQGKYb7JJvcIE93UbgZPQPO8W5nCEAV/8xIR5oYFrZTiRbu
	 wT6aKHFJekLT+r6ALwtpYQIo1vCFhdSuLyIVeCSa0iRMvINjF70vzANbuIOMkTFGEP
	 DzvKJncEH5uA6b25Q5GjI/G8yu54RlhMJMYssVPLMMaqVchMIzfG2npvrW9ArxYNUi
	 8oP/Ti0t19W4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7F4C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272579358.29561.18405295418154446479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55d0bbe997c2c13ae31a72939e03f2f5472b11c185207786f8346c8a7735ca4
Date: Sun, 23 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742725793
