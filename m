Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0EE192B75
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759188594; cv=none; b=RZ6f35VJq2pE+5brPH/WbSN8+hgrfnYMKugoII1cP/I4jkInprvaEYfkFd0+7KtmgNjWId4L+hbMrxUaftosaNKdnj8IL8Ypl30v8iKUebqlGbhtVgzQOs1QYOZuBzL5oQFG/1haHKHN2Fxbk7SjjxhdBw2A5xS6gnWL2Qzwo48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759188594; c=relaxed/simple;
	bh=68FNdGyKKUhDRN+syGA0f+EriNNho6KwLV3LP6Js+x8=;
	h=To:Subject:From:Message-Id:Date; b=CNV4zfSCy/5/NYdxwPfyeain3gnxPTDIU662BsewjY82ykjC2G3hbEWD+NvAkV1h7aMp4KzvV66vvtv+jVq52aHp5dlx/pI5gSZm/dS95iJMsPUdJvunQRQTaOQhv3FYLIxLGcAlUp5Wo3vdGYxtfQPB6czD5tfs1lEwudxhGew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CU/WJ775; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CU/WJ775"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE8EC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759188593;
	bh=68FNdGyKKUhDRN+syGA0f+EriNNho6KwLV3LP6Js+x8=;
	h=To:Subject:From:Date:From;
	b=CU/WJ775PJ2u2N9cHuIx60+r9/R43Anx+KD1nbTwztY5E3VyabjOwhXT0CuK0BW7a
	 v76j0htIJEdT4LVrNEPdiS5ZvU8FpeWlS087L8P8oN2aH53w0x1837qiKwJr12VTwf
	 idDwyjbvPEaFpLVF1RBH5A2MATlSkPUf/vloNfxmtk4f2O2WAD2ulFu5vq7wPip+v1
	 BBQSES95OY+f8BqJHWYYFRYX+BcbhnhA3Q3hC+fq+8CXQuCU5xn3lciiaadTjhmF+5
	 o5osgWM2dk8BpFJMd+rxcKBflQlPkyutoNuXa+1o57WsJFtVlMzA/G08lh0nCWVBbM
	 t/l91kS3u0HfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9625BCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918859358.4421.9174124132980212762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a334a17a1a62f988fdb812ef355bb659ab7d40f7adddf4306ee2fe0bbe86be7
Date: Mon, 29 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759188593
