Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F41360ED0
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787931034; cv=none; b=FxSwl9gRgMZaRNuZ+PCCNze7SUqCt0lgGhUDDW5rvOZuk/0PngavtbFG3KmVKjXQju33y6WdttT0gaE9f0MqflO6ykBB6EJ3u6jVOioNNTQM0yEOmu93pD/YjrDS56tkeg/FaNSOzzoMPnRSLBcveR7ZSzI2qBzL46RUdazAEdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787931034; c=relaxed/simple;
	bh=8Tnc7AS3OVLgrqqn7LwbEtqUP7mxDYYKa3KfcZiIM4g=;
	h=To:Subject:From:Message-Id:Date; b=YKEDLOI1TpajOCrKDbIqMStI8f++OSA83McgixIQvdVmirq0eUq36wZ+203hxT7dVBCxitTePw+RsnWi9U+adL59TqhKQmvQOtuyVoTPXp/BuG/orFnF/oVJ3ZB/wBnh/HyM2cIIc+0S1Dra2JqMGVHELa5kCvcHiuT7T0GiYEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvF+1Ra4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvF+1Ra4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA892C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787931033;
	bh=8Tnc7AS3OVLgrqqn7LwbEtqUP7mxDYYKa3KfcZiIM4g=;
	h=To:Subject:From:Date:From;
	b=cvF+1Ra42j2h4Z6CHSfKiI171Z7wgvbeqPhuCkiik/tdTYCkW19nVmRXxFTh14G+w
	 zN96L4j/7wPP+iLqiJweMW3K8MWvOU8BkfVIDD0XSG2TkC9Lop44VQVEK++Ne9mn4k
	 x7euDxbVWsULAbzW3GHqVG/aJphGvtjQ33rU6tHFSw3ycOLGvVT2XQxIXfryfk7Pl/
	 +njh9+BFxYLctSgD9bIXf5am3/srQZ/0Rrz84+k7R0eP7UaDSrsXiAtkeWAYwlumZc
	 KqE4q25Sjo1N0kXNUJlGcck/prMu9qP99DtYnrmvGnvlIUuhg0J+HGE82FDY52Bqh3
	 86DwCOcKZ3Wrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB50EC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793103369.1963.11931011230390931571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ed5acd378a46ef10ac303520e1f5f9e9beb3e56c94925cc79b702d4f98f566
Date: Fri, 28 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787931033
