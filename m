Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA593B8934
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791354634; cv=none; b=Fc44NeC7cv0pEgPl3N90xqiPr+2t+OC0p8xtBdsmKEXQrY5TtqIVbAbbAwHE6nKBxTZBGTiQFsv2nmArfZlOaG3d13mwFusQAU09dQiHXGcIGmHZgy0R0PNU8d5dFmfbnAqck4YN4r9cyAKGbstSOXYND6zuEUg+aWauyy82/+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791354634; c=relaxed/simple;
	bh=GxsVAe5V4MlIHs/6BnuK6LphzVlq0bf4A7zJHV2bEIA=;
	h=To:Subject:From:Message-Id:Date; b=gJ+i8PE6h+R6aCfeLLrq+5D43H11FOejRxuvtEq9Y1QRdzkFx4Ccq7/BAQO4LpTAt2gCsS/Iy6qMfo0FC8OljS3wApT5GOr0zqk7CWgp8eGlYrfBe2yd449aFGb7THwCya+uWfNB8WMU9fI0tw2ts8ebqYLdRxtcSOGV7rW6YH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Snf+wyr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Snf+wyr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC5CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791354633;
	bh=GxsVAe5V4MlIHs/6BnuK6LphzVlq0bf4A7zJHV2bEIA=;
	h=To:Subject:From:Date:From;
	b=Snf+wyr44Wrt7DolIooaDCPcVL8CtX0KO/B+T6TtAE4Tg07j1dryeyB0zzekuSt22
	 UPoCIQapGXnPOebGyecJbDNPhf6ttDcmT8OkCUg/Pc7O5tKdFOXdKuaxBy2I5u8xHA
	 5MG09SvtQA+DfUZqc6IopfQz0u1dp+822rSfm0uSLki+m5Brsrtfwcq8BpAdCwQftQ
	 uYQV16nEmnmqWZMr4jw5ehPOg+HFBbyNIUAYlOKpSFxT+DAP/88unUnj/o074i8tfo
	 +6hcB3NijpFvZZfiDGm9shE84+THUEGDIAuKA67t2Z5hS9CaTLv24OdHjdyYgThCO9
	 drtzeaN0C5cmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC38ACA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135463369.32623.10950840349473414873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2dfc98bef0c5e85265d7df56550e2a6e6f741d2e9fcf57e6af47ccded64b8d
Date: Wed, 07 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791354633
