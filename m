Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28351524F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757852394; cv=none; b=ufoPMpCl6urw3xctePi+OnqKk9ScF3FE7yQS419g7NMAqu8nucoSkR/8X6Tn/Pjacc8+JAmi7cAjjw9hWOglITS9x7lg3EgRHp6AkkrYleKYhkSsMr3WCeykoNxA3gdpRJRJp1ILnSz8zvImW69TKxMx6UFQhSIWlW4xRQ2P3p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757852394; c=relaxed/simple;
	bh=pgiuXyHLK8y+tZIZFrPwpI4xqUOlrK90I9Lpktzw/Vc=;
	h=To:Subject:From:Message-Id:Date; b=oxRzqQ88X4m4vh9OZwFyPQo7QHPukp7+WYh810JFnMNRWsvRaD9N4/aSRiTcQhjoOb8D5VAsUHCu/zvJCDr+xlqyC1sdRovjCobujgn6B6xfjIvypo//cmp0csLgj3l5HOrSNTc/cdhNK0ZhqkXTFK5bw+lZjWY718sDYEzzrKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnJRL2RL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnJRL2RL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C0FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757852393;
	bh=pgiuXyHLK8y+tZIZFrPwpI4xqUOlrK90I9Lpktzw/Vc=;
	h=To:Subject:From:Date:From;
	b=hnJRL2RL7vghjmPJ2CwCqP94bZZlU+o6vNx3DqZXDZbumn1FEn/FTraQ49AjFjuM/
	 jcqVb8QRSejWSHrZD+7l6yyGvHMCLyFf5MTjC0eNwl03FUJFZrHAUCBHEgnTkP7wdK
	 qfBXw5ac9vgnDTMdrIesKLpxz9nZd7hkIX/0+3XYb6xFbf9fgNUswi3h/nSYOkPhMS
	 b3LuKMxGnbkGAsECdpdALo3UQpy7rIFuT9oLRdDKQzTUAxb+a1rkFiefm16MFw2gO9
	 5NCYxQehn+qUknkoDckus8hMPl/3zIghMZTiUJAtlwYSXTU/EHwRduTYzPua3seheQ
	 q4uOSMl31rJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B6ACAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785239357.9236.3879382082203260135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b16789a30effe9da5654ee2b021fe5ee98964c63b32d83ee901599f3dac98f
Date: Sun, 14 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757852393
