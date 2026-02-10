Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6DA17BB21
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770753234; cv=none; b=nIJOYx9iL9MFn9fwTVhZ5wR/kSg25JZ6xYDYSKbO+tcWWzZPnami8B9aShLcWerhKZF94eUoobjQKB3MSzrsCyHvJLQcn0bMBmP+DbeLajI8Bp+WG2laitd+msyItBR95aZo0iOR3S2RcjziCMBlxDlbxKaLcN31v96mG/9q32A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770753234; c=relaxed/simple;
	bh=G7k415+ygjXpvGDKmdzHGVaoxAvmc1kybjA7U5eOsUY=;
	h=To:Subject:From:Message-Id:Date; b=c4FHo257YXZaT56OGxNhRIUftCqJyusJ58YLP83KpTsT7VYmhP5ZmGLPj9fCCPgyR82RUqg5dVR0LPkk7PHl2Oi8qMXCBGkbE9s6yKme8Ab6mZkB86zxTVmu3PA/KrLrSLorRsqru9nQXSRsjmFGrQmG1xO8OhGDu7k6PAGN8j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHiv5les; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHiv5les"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC82DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770753233;
	bh=G7k415+ygjXpvGDKmdzHGVaoxAvmc1kybjA7U5eOsUY=;
	h=To:Subject:From:Date:From;
	b=lHiv5les/yvr7H8LVLblkeW5ulP/+n3dgKKLiU08lNI2Q1coJ2EfShXf+utOBQC89
	 1IRgVKU++y2s/R7rtuQbtHGe1jaUmLh7HKtEEV5itrX8RDR0AWtJIeTXBoSPeZKpby
	 r0OjkVsJOpZTlcrxewXCEX5YcMlr4DXlw0p7ZR/XfuTPWuy6vbvAXAEvxf4Xs8rJ+F
	 37P2Bsk+QNbLobFecoCmRB+1U6hkxmIHqK6YPM/Oi7TmHgrOFeLWNKoS10OxG/xXOE
	 BIDCfRtprt8vlmcCR5850W/H7gHQV6QziaM5uy4HcSfXGGkT5mL3q4qdT3LSCDKrHX
	 Bq+sCfNLm/KDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98293EB2700
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075323360.1130.14902081209910199267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e057de9c21605a240b2d77c3043a303fbff59f9728dc028d340daab9064e0329
Date: Tue, 10 Feb 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770753233
