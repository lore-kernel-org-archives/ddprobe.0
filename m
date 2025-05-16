Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EE6242923
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747400994; cv=none; b=hB2cMFR9v2G/PHrw/dQzAC3BIOhW6dQB9yaJt2vM6X4TFpXVGcj+XmZgEZuBLS7zJJd4/9IFQY45elS1k0w6iHKgxAfWSw9ojQ1K9ZBR7Otj2tTocVOTcnSF1oRqKeD2cEmqWbva2NkV7nwbtia9ztBgLwNjF/RHek5iTN7Kob8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747400994; c=relaxed/simple;
	bh=wYBso481jy5Vo2cukZj2HPEnTU3RZHdku50N+uoAE3s=;
	h=To:Subject:From:Message-Id:Date; b=TUXttYCUtkTyKzFShqJHmKHU5ass+309l6fxk8lIzcBmtdv8h/WUG4PzQb6G4+oJomyeAz+Qv8x5eoVyqEX9RfjUIivPWforS7zfMsbfu24CtWy2S8GLwaD03IamBndyWaWSRb7pGEFiOO2DWsgD5R684AMhecjU9BNO89BP9Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ko/Y6s2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ko/Y6s2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D962C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747400993;
	bh=wYBso481jy5Vo2cukZj2HPEnTU3RZHdku50N+uoAE3s=;
	h=To:Subject:From:Date:From;
	b=ko/Y6s2YwGgsulsb1dws70GGC78Jf8csz0Hipx3W7MSAaIHlSaB61PwCjjy74MHC4
	 CrjCwpNFv6IaeYUsQ8cJF5PKlNzJNDEroVXWOAtNvoPRgkGXCn41PKz+84MD+guITb
	 4Tf2RwCmbXyF8OqsiXFQbT97pnFoOw2vbRoKQZ04bMdCig96SP2lK8cSLT9tmmz60y
	 ySRRmcfyBEx/LHgExXUU+t7dFNDRRe67EVrXd/6zC6fpn8cP+O2hA22vkOYYxSJPqy
	 SwqD7QXJpgTiDoqE6BfLLyBU6kCS5ljzdEQROexC2jJfCVWGxpXwxMmXSsCaMT2gVV
	 SEbOgYJjvhuyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E809C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740099357.18872.7242317081456176344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5466ca559dcd058eee39d6e2857fd50f5f424cb89adcb450eb62e488ed79ea
Date: Fri, 16 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747400993
