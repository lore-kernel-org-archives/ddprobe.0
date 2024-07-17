Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58730469D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 02:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721184923; cv=none; b=BNoJ1yCwcNRCRyNr6aNeg/nmjmKrsog6DHmt3lPBX8vIeVXL3m+snjNE3gqtLdnuBQi7PoXH/QUDKvdsjfYZhAnyniPzCm02GsHsEWAt/WmakT1JX/aXsctcvEo3JRMfCZQqUL8KZagZ7+KjwSOqrslUMJ7vummZTyOP3gZJYPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721184923; c=relaxed/simple;
	bh=xVjS7Ux0p6X1Yueam6kkJAENfnMeI16FIUSAH2BkT6k=;
	h=To:Subject:From:Message-Id:Date; b=BpqM6r9dutIrvWpscaNn9sAW8sI96mX0pBPi4L246+SIZ/rwWIh3fvcUdjDt2KqNkLSPx/eT23SI61aYusbeeQf+tZnHmR29//1jfcpM14/7n9PAK23CpmmgfUbbdPO9mqLhkXy0r/cWfDDgUACmXGlaSFazYH1sF37ACz1b09s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3XHaRPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3XHaRPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83B9C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 02:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721184922;
	bh=xVjS7Ux0p6X1Yueam6kkJAENfnMeI16FIUSAH2BkT6k=;
	h=To:Subject:From:Date:From;
	b=j3XHaRPXFZTq6MTEBmVlS3izvTHVglMCuNS2U9StxvdrkUDRTcMliOVf/KvyosI2L
	 gObEGmjXTtoLVT2lTrg5aSXgVkJ2lDwYlCed6Yfo6KfDVSd17bBoogwZlH/eikZ4ly
	 6JFi2FArIj/TLr1BufiJVVkuhEtTSuj96UiQPzIHocP6AD58orP7SeXLllHf7pU27p
	 TnAxvUQI7KtHEnrauq53e4ag9bml+7aNWvxA/v/UOtDOrXqR6joPe0VHe6V1NIkbvD
	 ze+/PWyZEUIsruNqKWzdTOBAw4eWj4h5kJ14UjitRgiX9y395zWmNvkedfNqwQxuY4
	 +M+lPFh5GpoAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1330C3DA49
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 02:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172118492278.11139.4323104730682799989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d2743591d5e6886a63edd44b1c5f9b2caed71fdbeced6ee6af9e8fd9d9dd5e
Date: Wed, 17 Jul 2024 02:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721184922
