Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4ED221F34
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752593994; cv=none; b=AC5xZDoSa8ThQ0ZIbC9fheLIBen03k8Fei9bHQWxx9e3V2i3MPxJ4N1JsQXhQaCeu4sTymXOTi94HOf7Y/WRAll3ZIeRYNr1MSGhYJhZlVp1SV41BCxkP5e9YUol4SYkTdL59tR23sFQKwembUneraxAmKzWXMpHtqsXnbqy5KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752593994; c=relaxed/simple;
	bh=SW80MSTmPY60ldhbPOjGGUfgYYwi+vc9tEQEw80bIck=;
	h=To:Subject:From:Message-Id:Date; b=unnUPLWSBAJ++wXmcGlR8SwOSG5XQSCP9sE2lLerJl1HX1wY5E2HQMqEa4cRYBlNZDWnQ2ljpHz8b6eMbl6e0UCqW2fNIHzFPiMtfVUDzdtRvOG5NeNsHezdEhnXFjknbux671buFxfaSOWWmIBKE0z6LC01JO48xqX35bAv2O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYC3Cjxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYC3Cjxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A138BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752593993;
	bh=SW80MSTmPY60ldhbPOjGGUfgYYwi+vc9tEQEw80bIck=;
	h=To:Subject:From:Date:From;
	b=IYC3CjxuVVigtRamRyQydGpxJTf/OWbrPrlrELCdaO1ybhbxppGhpcmDqXSAQQwnj
	 rV8jKVePdoEeFMfbRsa+pduoYlTG8qgP/XAnPxmjsju36L/LoA072baUyZn7FUXxA/
	 tLs4LYngHiNo6+nCJLqGGiFwtn47DVVrU19/KCJyUU1I9fcocYobpTPNhIf1CNA+9b
	 +Sf18D8X8f9C/u73AyQKRYRW6iaXSZUFoJRWektGx1zuSq/HAJYv+h/ps/ul5ZiPS5
	 w8cQEhmK23efxhRNmnrD6AjoRhafNqccBTfZAcPO7cLcX//0PPwIn1/8ubAh2kcFTD
	 HrCxXtTebOe+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90276C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259399358.5325.1927861507782385956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64aeb4b17442e6360d86140d0a2a1a3666148365a159cc925d7ed042cc23945
Date: Tue, 15 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752593993
