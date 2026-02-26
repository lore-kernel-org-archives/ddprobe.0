Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E74A3A0B0D
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772099694; cv=none; b=cRsBoCwct1BEY1SuWwdWRtS6ypUAspJfmA1IX764A4Lc+8BiD4WWODBEgYd31W19wLXXIC64ajCLAsMStUuo7Y8W5UHCzO5gOSAwfCOifCwpGCcZlSiGCYrriXQoV+nPSywjM8XqiOSqNI29076yQgnrnkiN1vDh1VkDhSTIsz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772099694; c=relaxed/simple;
	bh=mHtt+j4MC66spg/zyymO9ZlxYpv5Wmw5VMHsvn4JTPM=;
	h=To:Subject:From:Message-Id:Date; b=nPWVe5/Kbjhu0r4xAovfm+pXvyn0aRF9TyPScCvkw1saAxhOe0dSDLq6jBCI8/v/NHNLom6QL6ep/nOK/6Ogv6gHwzWImIxh7j74BY9aJql30A8XUuF5MXkBFV/Djz4WO0Ljk4MYsBabQezEURKR8wO43/D7/BVXLX6UQ2R1NYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1iMcHt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1iMcHt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CAC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772099693;
	bh=mHtt+j4MC66spg/zyymO9ZlxYpv5Wmw5VMHsvn4JTPM=;
	h=To:Subject:From:Date:From;
	b=I1iMcHt4JxiSnery/ZZuU+qM7GMEuhBvFkcAy8TXb2tcQXs9dm7OqBkBMp/otYmOn
	 oIF6WI4JR+PSD1BYZn199h8Ul722URT+Tq+EInBaPFAiE8lLVlSeq/dnEbNy8oyAtS
	 /cAvHZqchSWwCX5fmH9/otWM/rBIh2QIEnZzI+bHGccVui9drT2XIYrhHPHy7LQ6PM
	 tpCPEpsTGVjKlljpUOMFVs8Vvd+Lewn/nBrrReg8SPYy5f7HERFAysKC5qa78ldLkt
	 hHn+9iCYcfsIyIUf2/1ViVcFfWGBg7yC9ijOXP9F5No/bghXYVYwdS4M+IsUAoD3/E
	 FWOB2oX5tt2Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923E9FC591C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209969358.3339.16023117156632704051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7c2ccad83ad6f1d317dd3c4b24750357c722e9ca0be423de060c6e986983d7
Date: Thu, 26 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772099693
