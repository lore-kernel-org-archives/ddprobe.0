Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E9A2AEEE
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727547954; cv=none; b=lMWRBGQaATbmBAoahlB3pL9lVk2r2ABwk7h/B15lAOEygSbP5HUpaU2dWaWO+TosWbEBIhgGNgaDHxBtpB1eJ320JLvCUnRdSHialSuAb0IkoceoEECSkTfUIQmZfGYCDIA3jE79UtRMX7qL0QS5bQqL1FLmAQrpAjbykT2/6D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727547954; c=relaxed/simple;
	bh=fFu5JlxwwWUOR35rRZrKdgMAx/C8/OfYYYl+17mL7So=;
	h=To:Subject:From:Message-Id:Date; b=eiTrtgDVrfgcN0Sq+IKYZ2q5lKD0W5pmVy+2CwM3mTCGIDrDVD7+wQiPhbnMrX2jKOCkHABLUVROjh4IF6ylZW++qiV/RVFZZX/oJ5sX0Q5pP0MCcDODQilLHgjVKqfAEqKpfbaJXsmDTyeXEuffB3pukrOYSDB6/bbXVbdlDKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuU0H+nU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuU0H+nU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0921C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727547953;
	bh=fFu5JlxwwWUOR35rRZrKdgMAx/C8/OfYYYl+17mL7So=;
	h=To:Subject:From:Date:From;
	b=WuU0H+nUcCbLxT2GGYWq4l6BTFFfaeS8i10fBN/QuoH3nNlmPZKXEYWaegL+yBrRj
	 d5QYImGMzlHE1GtLZlvYxv4L8YzNLBfTBtQkcefjJ+hPMZ6Xr9IWSt7y1XTpPvO5qN
	 YSCCAGpbINyX5YP6vclDCNeQ93a4cVOOZubtLkPtY1TA2GBm3e1Kiflg7wCXwXGZEI
	 66M8BiLvFa8myk20my0bQCArssB/vxSL+7JKMsrS7mhH5qERitQHU0PxUtwVxcZd3d
	 XXjOiw7UhaxXLvzQ7mXPemBCt3+rBGJSDzK+HAd5jQYQg/vmYgL808B4JsojPC4Pec
	 s0SLLTfdgnbkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2B2CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754795360.31851.8661618264238895945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c04eacf8fb6342b8785b528e4e77e9fe9dc0343bcc81cd0e09cf50d7a9fbad
Date: Sat, 28 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727547953
