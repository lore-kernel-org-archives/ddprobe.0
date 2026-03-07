Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC1930FF21
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772854494; cv=none; b=dIL2QIvUXjaV/pZsiK31D9N/7um8ScG87bsVrNBJXaIqb7dVRGdQxavVjKR6dDPaQ4CGcM76hG9EjLVjnetCFvRgddvRpr+eqqgbELaybz+D48FUku/BdDPWUkYEH7sFRNyKchxGzv8p3ldk1tcwaWJfDiTq8MKTInETQZd9Pwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772854494; c=relaxed/simple;
	bh=72Gg4i/222RNxXICnFRM5ba9/7Uq+2VBMR25UerjkB4=;
	h=To:Subject:From:Message-Id:Date; b=SMGrULf9WMS55StV64FMZWPu13aTeParzstQ8OWWbSnAKiOHnnwAt0Avorx9/BW1ncmilJpcQB8QEDdi4lwgFbUSZxaKzW+Fn5ORc84jJ1HlJpzBivZD66ePcxtbXqJB/yt+DW2a26cjcTC6cH+lVqv2tQAzFvp7n/xiM4YYru0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpfCtw6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpfCtw6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC59C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772854493;
	bh=72Gg4i/222RNxXICnFRM5ba9/7Uq+2VBMR25UerjkB4=;
	h=To:Subject:From:Date:From;
	b=HpfCtw6KL6TPG90tVXMGg+AR41XpQ44wySVheuiJjwmcJnnD0snULy7wpHFaBsnlF
	 K0WdFE+K4l27dTEhaHrhc3g+mu4g7YqY4OJmoiqCNcVBtFAr0Zv9A+Nijdco1fpE2d
	 soo473cNTgz9328LpNYsvXfLsnoK17P7Nk6Ai1KHLg1dkSx5kSR46LwkAxl9QgsrJp
	 vZQUxWZJ2p+po2Xq7HZae+Yyo3jWFwyjRAWigSW9yCQiz2NrYkCBZKm4olnvo0Y7V9
	 5wVozP4ILVeEKaqtQqUIs4FGPI3ls5rHvAjY8eMemUdR8CJhXC8eVMfa2EaLV49YPd
	 q5r9ncLOxm8UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98525FC9EC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285449360.18175.3656159641746020995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e40903b490b435643f46b561ef0f081c5c2baf9292e5509ab7b4da5db31bd2
Date: Sat, 07 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772854493
