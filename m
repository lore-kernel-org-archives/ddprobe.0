Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1E5762EC
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708448297; cv=none; b=McaQcRWH4s4ci4bwsawK+a577lVvEzazAaiRZD9uqWGQRAxcGLHpWXWi/qgxDYhBL5hDrQJ+p8elZCHQpC7v34yjL7ldvyGi5ebem4czhVAETSVMk6fep84ZNpXzwZlFoo6ScCNE91I97f9BFDrEKSOyQG44bySTED2s6n4sxtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708448297; c=relaxed/simple;
	bh=YcpA1zXykJI2VXvJpUE45a6JlK3xcfs9rRwFXObvra4=;
	h=To:Subject:From:Message-Id:Date; b=CtLT6VDXHUCKzEmlTGdbqRTYlTlojrLABnDsMgdhTHmmJbHS8owZh4yi1z9VWztVha5jnQwf39BjeTaueDsahZkTvID24fXZOq64VqfWPc8k4rCQFSL4m2xNQmIXJQb2vINEyj1Xa8/1FMQnFOgCAO+Z2cOlYl36osb5XlX58jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ds/JyLV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ds/JyLV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94442C43399
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708448296;
	bh=YcpA1zXykJI2VXvJpUE45a6JlK3xcfs9rRwFXObvra4=;
	h=To:Subject:From:Date:From;
	b=ds/JyLV48h0je5qVS2LxksXWC36CH9+ZNQEmWG3FjslOGRLuWeV9hUPT/I1W38pDG
	 O+2VZbXm0FL7vwxRYJd88381ZWr+8E5Dhoyde8VLOaHwmVKS5vnMY+LbPuvfdowlAJ
	 NmGcHWiNyjJiQ4OUcFDPowIxwtzscfIAzhqVvcP0bwt3JjU6B8y7y5BI0Xv9FXVneZ
	 pWYreG0T0RSaMyoTkzgPpYpe4w2rXIH2spf+ekkLTB+I1KxrbWW7EMtUnYeQ4Dq5mH
	 mA9H2X8k8LU8LVLCTZZhMOoGGbp+zXlDy3tKUdtsz7w4SJKty7bXvdzdSv38Ke2UMs
	 l0O73yb6jVzlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B604C5475B
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170844829649.20039.3832183841204674956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f6f8f922e87389292679772765826f44dd8a9bcbc6ec426cf234cc91411c71
Date: Tue, 20 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708448296
