Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295141917D6
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755655194; cv=none; b=eQwrY5pVvB7ADC2Y1uLf/aH9rrwAawBEbGcW3nKKV7AY89oNi429lKG1wyCqOW6ozBReFmPcJ5hxo6MFilBFQSMV4eJ+1A4DwqDe9eyDnAQbuVM3w8oknNzu409UDEUS8Dw/TtdGj+AQuMQhnu6MOQN8xbtS13TinftmaVlaG28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755655194; c=relaxed/simple;
	bh=QAGLcXejl2WQuYBA7kvRmXIey8T27w8RYpfJ566jWWs=;
	h=To:Subject:From:Message-Id:Date; b=lKavZ0wZN4i21bcmUTQGeLRUTDVRZFTPToT6unZ5iEXD8cxzwMx/UFX0MvcMyLczXe/um+Yy9ZOZj0GWFsX6VkdW5uARG4b1OVAU/Igo24C8R8/ERL0/26Vbf1/PDNqglSRx/SrZG5Ohhh17fmwC5bgA1UXtY53KLjc1ci8P3eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf4Rn6Ji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf4Rn6Ji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFB4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755655193;
	bh=QAGLcXejl2WQuYBA7kvRmXIey8T27w8RYpfJ566jWWs=;
	h=To:Subject:From:Date:From;
	b=lf4Rn6Ji38aYh7d7szk6sxOqwCc7/GArbjvaTo7DZCTK0fhID7Itf+jBzdWu14pFU
	 HFt5I5o7FhZWf1qZq+4pQrKNsmCicSjas7TBpNEo6TAGjhJXG9lTC7t7C/rO1Zb04I
	 FSO3mcCiIYklo5k1M+91Qqf0adjjQkqsNeLcVjzbM8H7xwxv3r8wS0wMuZbQHlL0hU
	 eM4tCsynjRq0PG7plmZv8waRja4D1CP0WSkxFAQ6K7lrkUi7p5PTSRrzp/0TPbT181
	 ifAtGW332LIdSwV5LoelNnWXayjs97XGiKmpdCUjbLpqVSIE3HPq/S2McsppbnmhFN
	 kLMvLqWW6pV3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA9ACA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565519357.31238.12404317323317252121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30df8495d7b933576e95d6ae284ce465f8a8998760ac28863ca4791a9c31233
Date: Wed, 20 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755655193
