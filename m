Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D1E2208E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720074923; cv=none; b=m394NJv3Lgw+IBhIn9/97KUFgaS2UDbZ3z0GYTxj4NEgWd4BYOjsux8idQtQSSG3fvvPqpRNlEkjHys8dtZ9zHVd1vMUHXRm9OLze9upKO1fKilerLEbTxx+sPZf2EpedsCr9stfLoNrp9ah6xeokzhy3Y41aSNFZb2Few3f01Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720074923; c=relaxed/simple;
	bh=xblSWCfjn/QnFtIwDnL99ZF0aY02RMtF50oJ7IzhcFw=;
	h=To:Subject:From:Message-Id:Date; b=Jkx62TSv8S+ud7dvz/Cvh7oVkVZw++IfmXPdnWjMsD1Y+PM9GREYzfTdF6x7W4UjXkfNitSRN6VkzN58H8O+4aZBcKeM4qSIetfgt2nunKzO7kCXcs2QVyBr9iXCd27meWGFxsXWeWpNbjwYN8+WxYlOCjVPQ66iYyVVxkZ6y+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9f6KXZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9f6KXZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F93C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720074922;
	bh=xblSWCfjn/QnFtIwDnL99ZF0aY02RMtF50oJ7IzhcFw=;
	h=To:Subject:From:Date:From;
	b=E9f6KXZF5Piqfd6Qx/WUXc+T6Xdf9jrNW9mcofk7pUvaUWixuq6RSHLwSLIGPYf/2
	 BNRDJ7kYXAKhGzGWRFz2ufJ7ZZWqnK6jCZHeaiCekd5SqWPx/dHY5yZHd2jpkWSLq/
	 aWkzoDHecz2OcXbXeb2vIuaGzVYD1TYXYjmUTdfKjhPtZ7a3GZT12kqC9x7uZcvep7
	 p52LQ0edsk8sAEgbosgD+Y1Plvom27utdbVV2yvsP5Ah3D3V/IvBZQTmBWR66RtvtI
	 02S/hsfPXwj7cSE7ifpcwM90ItH6BJuywapyc9bbMYDBqXzBaY3sv40E3wHlCkffL8
	 /adgwZ5zSBW9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3089C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 06:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007492278.4266.11547916359567541453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7132f121a1b0d55a650865095ac13db3a3d8d994f8063027ac2cc3b196f708
Date: Thu, 04 Jul 2024 06:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720074922
