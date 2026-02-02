Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280E12F1FC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770016434; cv=none; b=ObVYlSZ7Ie5P3vPq5+EWi2Z9+UDpD0/iEL1l5kmvFjOls9iCG+J94T3zVCQ3vH+vNgPXs8gLCu5SNMlu9An0nQSasS0RmJIWA/hjUGmKj6jpZU/aA2F0y/5Ic8zINU5nOnP6oS5UL6RR8c1UwO70iuWL/rofiE6XqaGMPuS4mJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770016434; c=relaxed/simple;
	bh=3nZ7nnXZNf3EbTzbThce/yFDye7oHBcUCUcX2/lO9Q4=;
	h=To:Subject:From:Message-Id:Date; b=R9OcfK5uHCuFhMzh/gNF33sdTku3kUD6KuAZO61lJGBbzEUqE3+taZWWpt25+L7DcObpz1RSWo04coayYLBpykhDPF3dT/ojJLoMlOTLBCBbLPP0EVPm8+MsjLBY0MuyEbMVolcEvuJxrYM/h93O71XnEI/z13wzC2UequMx8MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6hYo711; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6hYo711"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA89C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770016433;
	bh=3nZ7nnXZNf3EbTzbThce/yFDye7oHBcUCUcX2/lO9Q4=;
	h=To:Subject:From:Date:From;
	b=N6hYo711FtlitA5xu6c7vXpo9vSeKnZY111Ozg0nW0xyEFhxQxkDfuJY9X2EwRqPm
	 7qyrSTxk+qFYrkkCEjIW23YNxJHWc1Ys3SfD9zbtiIiCVkuk9LytTXRvihNjFjBks+
	 3fGUbjJrd9XddJ2q7m6sD3PTtifQ43V5/qOjky4EoX4bNz/+jd3qmOEgk1m/slitQF
	 rZOqxpovo2GVGCKZ9cypIlwhSxvlRqpZwfi45AQExLDHh60DNlDc0Tj6nRJbMq4GJF
	 zXxQsytp0Abvk2Wg0f5dNEHuJgHHnMvaJLRTmy5oOP+OYWf+iL86yfyMe6RFrZwQdn
	 FsvwWUxoUQU+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8EDD73EBB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001643362.23292.12763286549518730482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ceab9981bad3c38eda5abd0cabcd091ce0f7ed4a3b3786acb0746f77845edb0
Date: Mon, 02 Feb 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770016433
