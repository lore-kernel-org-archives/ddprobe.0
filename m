Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C63015A86D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774571094; cv=none; b=l9GR74N1mvyO+c/2W5/bbBFeXNrnCq6//G6zLNJrjhskuZ2h5PTBIR3fX+xRQXSU5E5UhPppjpxseau5H9gsD0zoHlrmVhYPwJXf3wEjCBWsF0Gf1MXBU2TVVXX2ESeL87QO0BXcHqEvJ0vDM5KhP8voQcXoOYTIpAdE+WA7B2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774571094; c=relaxed/simple;
	bh=KxJjBXLTrmFWdLwXgDMQso8b1ZCCpW026nRQV8aPnV0=;
	h=To:Subject:From:Message-Id:Date; b=FQTt1tuyRdZdjlIZHhwts7f4CMc8bWtK2zVCXLOa/b8cXj/B8yg1zxFEgvkcMv8MmLy1E5UcQAkBIIB0f/QDqCw3t7yyxhvXitOLdRafIdWF/w3WV4Uu+7TRgrlfkSS6DzQcTy8cTjBZABpnAKXbgKtXm/RilkZ75ALucJYPDCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nl2uhyWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nl2uhyWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7260C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774571093;
	bh=KxJjBXLTrmFWdLwXgDMQso8b1ZCCpW026nRQV8aPnV0=;
	h=To:Subject:From:Date:From;
	b=nl2uhyWDA68HOfA061OfNMgN1IPf78GRJNtpLnrYudov5w77OlAPj/rjHgHS33bNI
	 QHci4ryZoq0JQt4QX9dQ1oFEktmSDHmDeoxTQboxvjwD1hBSyrdGVAfAJcMQWuK25+
	 KVM7lkX2qqnKAE6SW9eiQGPD1ymIy++oJpUrTRYPBMGrXCAH5OLVA0VVPu+kSSJd5S
	 gBddcdN5hHYLYk2+TxpTveUwyKQlxssFpfDW/PEtzWmdjttV3uYtBVAqPtgpsrwwhj
	 c1C6PBoMK5cYBEIiPCBfyutBYdaJFbAq9A3lKZYggLkZCPVnyr2cAeF/So0zJOl/dV
	 5wR4NHirWiQCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938CA10AB82F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457109359.5917.8836383179986761607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691414e0f62fd0ef1c52b6944f1f6f25725f709fc6be51c0279f7be49de1c885
Date: Fri, 27 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774571093
