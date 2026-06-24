Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE4B15CD7E
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782345454; cv=none; b=M3Qekzh0kKuOPdcQ63yZWdt7L+SECE5gLCcQ0J8j4UghI8OfuITHUTZQ5O7bd2CxbzcEa3popKStAW72UCqwIfHJ0dvdc9Cglw+enSIB9o2DcwawZUMuksnZL3Z6WGtVr7ykdHEqDNljlajSWV39avo+kpeKcGlTALbLrV/XdLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782345454; c=relaxed/simple;
	bh=bRO1t6w/8oj46i/Si8EC2SWHdtd/Ubn3E+Bs2Fx0BhM=;
	h=To:Subject:From:Message-Id:Date; b=kB2M/LAwlIyuWTvoFIld3wmknj+gQ1YoB+jklQ06MhFDOLCSJI0N8pZuyhIUtKTZBDwBOaT2E4Av4fzCRwGRbucQ2uER0BrxkGs03ogUCOb8erjdWcNrcDhkx+HIHAJvm8TGlRWM8YLk86+1h8S56E2Tueer2ARH+TNUaS8wFIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+pz/dK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+pz/dK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3640C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782345453;
	bh=bRO1t6w/8oj46i/Si8EC2SWHdtd/Ubn3E+Bs2Fx0BhM=;
	h=To:Subject:From:Date:From;
	b=O+pz/dK3Jp8CjDC7Gyh1uBdy7orYUpJu14skPg5LDW1uK78aMwTFFSQG+vwtNSGU4
	 H/Xmd/kVtE+oA8kBha8cxeYo1i+22nO3yfF8H1stMOHjr58NnibyYkbqmnt3ubsHAO
	 ime8afztH1zYPWhbyRVZleqQbe+pRjhS0chzhQAzRScnhGC7oekQU/dT0ROJ2sPGmv
	 B90wcqmvI/xhmdw5zho+UuqNbfpn6vG9Q+jMjl2fWownPbIi1qz+yFc5ViOFKhXIB/
	 d8GCbcv08fu9sTM+CzhJt34erLR6NVTNxhJUViR2BTppN1lAy77PHFC4Yfaqg8tfRi
	 /3GxJxGMCDswA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FC3CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234545370.7937.16236262072971317466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2206a3b86d62572fa862e25b471afcd8f25649ae751b4008a0e9ebdf60e7aa
Date: Wed, 24 Jun 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782345453
