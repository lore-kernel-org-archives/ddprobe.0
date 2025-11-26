Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0464B3093CF
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764173574; cv=none; b=L4I+ApXYSWtuZqk/56U3u69NtoPKn0+W7ENy1O4HatLp/7EDZBeaWh9RJxHpHa8KEyGlYuThmVbY0mmrkbWGdknzu5QwFGFmq4CgQ3xcVsDvAwgEas7/incGBvGIM8tl0ViI9hjwbkVKTfux97lr2q0htc0hssrhjabnp6C9/PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764173574; c=relaxed/simple;
	bh=OVeyUyCL0CsOoo9m8Xxh53KahH1lSkjgmgoIPn1BsxE=;
	h=To:Subject:From:Message-Id:Date; b=TP1/E8zkJhdxM/Ck0Cs0ZCH/xy9K7K2uI0OfPR2bUPoSOvfTpM67XhZ+CtVl3bNwoH4uvTjPLsnvXuVON+NAiUE2rS3MxPrq8H9ovx9rW+5HcknOuKf7i0doOiRIPS4j9bUuHV75nZqUGCBCzAXefXpDY/L6pTAR7PhKYug+OUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hu4yoJBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hu4yoJBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A389EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764173573;
	bh=OVeyUyCL0CsOoo9m8Xxh53KahH1lSkjgmgoIPn1BsxE=;
	h=To:Subject:From:Date:From;
	b=hu4yoJBTBX98O4fWemU2NX6qHdO8q5D5gCTnBcc5Mmms/Ots2vcDWctnhl0p/yCnM
	 B9tbzfIt87TSq2oRDBR3MVmdHh1sLUzWe3T9ZAE/JNnIEhk1jtiBIJ2feMKypuyYsr
	 OMCeSqxu2a8awhGjb/Dm5FGNBevaDLqa9EXVQy82mZnpOBJy+A5gwM/LsncmOF4jYy
	 EcrxJVAzt8/e1NA+xA+avqhN26l01h4yHNDcmLYBJpVp2u/Y+9of66qSkqNNcmhR3a
	 Zv0erbXIemLOxTxiMVh0E4J8rC4V3/eKrFHSHfnruzznXhj/+AGkS5Zqy9Xuo/55TM
	 N0h40DvHUF8Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D5DD11181
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417357359.4852.3977828710045527683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa17a3bd424f2a1e9a877c5a976c5bf01a211fd90100e7994e1c937c75bc8c3
Date: Wed, 26 Nov 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764173573
