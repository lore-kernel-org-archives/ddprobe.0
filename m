Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6758C1DDF5
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716749663; cv=none; b=F9HHo3P5OJttTp5NzSXhit2+NTYSr8gaEsDqmg3f3YOLyUmPzXODm/Yh9W4k2xockVVRGZkwohFtlXJ23e8CdQtld+U0ip+9hid4zcJzgzvG4d5OgNBcvRk/1Eiu6XHgcnU7piVVZq+sNsPDKU9UmLuanRk1PcaUPjuoxqP1rMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716749663; c=relaxed/simple;
	bh=oofRilmMnXiMIb9TSr3eilVxw/GRl+mnNsTRAaqlZGU=;
	h=To:Subject:From:Message-Id:Date; b=PtjFDKq5Ma7zz7HU0NKG44bWZhkImH6GVUsEnpv435Rxudy5neRH5Mg21PauodNdC4Mi5TfLRqDFu7VkBXjGqfAy3Ioqpsr7zq5J+qaAD6+TSMU2ArN7MNWYxKysD56t6jipakcAsArwjTkNZmNIrsZ/gSIrpoXjYW/zcLfB5zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaeKRpPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaeKRpPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA91AC32786
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716749662;
	bh=oofRilmMnXiMIb9TSr3eilVxw/GRl+mnNsTRAaqlZGU=;
	h=To:Subject:From:Date:From;
	b=SaeKRpPl33H91h53SGyXY3kTScBpHRcUxDjU+bq48dCDxX0vckkRtM1jZYaQ6SKAi
	 ua9KQaxBtKgoYlgAZvDYIOxqE0P45pj+ODKpRcBixMa7x/2+aTSTHkTC+lP89t/FAZ
	 bsoF2MJKKKb9Nd+XpnszZFzCBMFqDXOFHPyx06/xLbLhnOXAJ4n7fxRTl7gyrlMR/p
	 kt31GJbkRFZppNBdbka7pfSXi7NmyP/mAxaiwWXKHSDTNSmmaQIiFt9WZDVi3DnVtU
	 umE1R42VB2Bi0DAfTm7NMAl/XZOCQdEb7ySUwXZZVA9v0AmeQiW8tDvx8kzxfqBVoO
	 WyYfA1ZMJC2Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE45AC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171674966281.23328.5941914268453300065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35c6f48d903b304abb62ddf340838d0207169433787fdf92aab8253cdd5d941
Date: Sun, 26 May 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716749662
