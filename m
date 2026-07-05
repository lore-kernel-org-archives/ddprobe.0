Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0592C9D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783285714; cv=none; b=ItFVa/nNo4okHrVg8kisraW7rg//QQGUzjphf+U8oSDjBiAzG3iN6UoECUt++TCaVwcWSwHxBTjXFw7qmc/BO3nOECAthNWx42J13/gYe4ptEl69HPC3GMIYomBAQLvSusHscV7A0EBmOtib3ODpNeTSmS7Bs1pxjaOhV6gbHGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783285714; c=relaxed/simple;
	bh=mWs0ARSHUDbBPOkfg8A6Iv7SpgEb162T/zb/vb0Eizo=;
	h=To:Subject:From:Message-Id:Date; b=u6Mqkzxpgbm54cKXoHR3Pg+HXrPA+XgLfhXuoDEe1PjwBr6RLVCt1tNyQmbtx2OCoD4aSkFAYaenrPedrpjhxHmE7mGloUQQEO6OAtkFNCbiqOgSZbqjtAlwhqTp2DmKlhEzJlrjEonni3zspnEOih4m71K4SAl+WOZxpyxt9Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2L+zPpi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2L+zPpi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27A0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783285713;
	bh=mWs0ARSHUDbBPOkfg8A6Iv7SpgEb162T/zb/vb0Eizo=;
	h=To:Subject:From:Date:From;
	b=g2L+zPpid/zLST+6Or4f7gO9A2uRxuT0o8+vybei8nmRgitJWHYviJoruZfhHFgnk
	 9RBNz35DDdndcQ/jDykvMAIwLixkaTraWFm68R3V6IqJP5MdqKfMt5HbJiDtRN5zNb
	 fxvg9aWGVFBGiof0ScE06E4pXRAxE21fa2Bb8tUnjP5M+XvnA9R35dJZh9VtIRvA2/
	 8U6+sgBNkqCLLfprvcKhk8dRsul8m7hxR8D02k/sFKW0OZeMBKMTM+HjeLyvb6Z8Q+
	 WzhB/1XBmQpONp59/oKb0Mkr0f8xes8RAqa1HPlRRn36HJPA0wl2QEXhqSgqtmcV4K
	 CX/DTo4rIeLaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC6EC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328571368.28624.16693326985140343588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960cdf617e9abf958ba6fb6b35b2f7a85eae9347b24b46a62d448ca23d97cb19
Date: Sun, 05 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783285713
