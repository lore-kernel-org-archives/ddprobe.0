Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E802F5E
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 04:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713760223; cv=none; b=CQgWHBT9tFFvm02FJE0/v4BigOdqH+Yw4jNvEQyeIt1k+ZomHuzU/1GOV/0N5AMQMcbQETglwK4Rz+KhLE6lhZvUiIny0trld4fdQgbAOmNAEB6iO4kDYeDOzjyK+8FoXKJMr86Wi1v5igUqBrYyLouDEtK7roCyo/sjSvDsBQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713760223; c=relaxed/simple;
	bh=kIq92fgOkgIAFVjOc7v4BuFB0tx0qr6cAUh26k5Cvuc=;
	h=To:Subject:From:Message-Id:Date; b=nCUbffPRgur9MSDYBfYuif/bvB+eIt5gbpkn2wJHcxvHEptbStZvMw/ZzXErx30ouLMFawsO6YzKoyLEGgC8trxEDR/VNsbL79H9jnB62cdlImBqHphUkyu11aFcgGwSMU/ms6swRKaiFr1iDLx3qhUuO0l3Dl4ZBdaufZ4Hn9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfU5prZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfU5prZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84F0C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 04:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713760222;
	bh=kIq92fgOkgIAFVjOc7v4BuFB0tx0qr6cAUh26k5Cvuc=;
	h=To:Subject:From:Date:From;
	b=dfU5prZBbizJsZWMMPogBniNxanQItspnUGGxCcZwjelBbs1so7qIDRvf8Tkm8oEX
	 rBVVYjsFpG4iF8oGuPV4zoBc+FAh4ZXQvOnXtet3Y/9/GowPDDfaJwn6LKlP2rv2ZY
	 ClOgj7j5Bg7SLtCBu4TWu0valuyb6qVcwW7CoVpKY3U5Bq/pidFsUKIVZFJfQB1fH3
	 lnphxNtd2Xy5dAhdUYb2UtV+ICRXoQDGkX33AxZC20a+OqFIrtB0rKKVTx/hCfCgAa
	 ujKlI5Nydp16cPc6OPPqROljJecgSvZ+aYKAR+R7oYknHTwErqOLFyjPcezUGoKZlb
	 TQiToldetHPWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0443C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 04:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171376022275.3656.10685048760359258529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16147fad81cc519558ce14b0ea46cb911f1fa744bad075dc106f1411b45519f2
Date: Mon, 22 Apr 2024 04:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713760222
