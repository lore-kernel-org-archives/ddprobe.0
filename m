Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DABE1C1F0D
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751794194; cv=none; b=VNGsTxzcQqHA4WJZYEUbTGIpV8LTSRcWxYA5AGlQmxe/sCIHs5XV+oPWZ94og9QxFQ4drVIcm+kmpsf1NT47BhZBt2hI/pVnoP2VOGyKKFFPLlmm7kYqqa9dBa/arhdCVZRyUjAIdlqczfO8ZQ5N6aGf+5MUTMb1/v0NjKrbAVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751794194; c=relaxed/simple;
	bh=o+N37XFvmgUImsbORrgLUglya86zQHcnOBvMEZQNv5k=;
	h=To:Subject:From:Message-Id:Date; b=R7XKM3EpQ3ACkWqdMiJnIqy+BKqsgQaXzpssq0V/YCvvDUcfpNslH5tkiC6HWFjptZqhw7U8iC1HfmnxKTAWQLGqNN4Ur/Fhp/zzPsChhTZtDlia6D2TaDmnSyIc54BPidGfRVWX17mHBk5n16bMsCk95dkDlDlcX0jxexay7uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhPbo5BS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhPbo5BS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ABFC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751794193;
	bh=o+N37XFvmgUImsbORrgLUglya86zQHcnOBvMEZQNv5k=;
	h=To:Subject:From:Date:From;
	b=ZhPbo5BSpMzLVPDsQ3z+DtIyt7WX2y8elaun1QaPerup1mX0ThVL4OGib7YlTJ75j
	 2MYL+dwvGNpHhaaIOKObDV5hLhAbYakxu+irStFMdfb2ytMmL2Z3rLgqJEpR/uedA/
	 rTege75KLXPu7OifvgJdNiGpeMIWyP2EmoOs/GvQfyAMN58PjnEoDog9TQV6eu9Bxd
	 I2lm65gzBtyvNwlaUofgYVjPBQgWyFqYhsrQmgu5XVV3LLq694Q+SZ3OXULTe4crYE
	 HsgXi/LfJIWVUTmfXMnNi7nmYBUPtzBPuxvSMO0opGXNS17iq/dCyV9Z0O8WtiTmRP
	 kALCUcp47JOaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9164EC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179419357.8623.16723165893446004430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0457f2dd49be589ffd68c2ea1f5c8aeecca997ea347de801f1e1b5b2a1fc84b8
Date: Sun, 06 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751794193
