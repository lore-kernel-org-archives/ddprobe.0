Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176BB2DE716
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751564994; cv=none; b=dB5LJRdhWxI+OQQa04N8lLeaFz3QtRARQDJnn5z91zNAIhnPKROmvhJb+5zPIzNM40OLnoXGQZBiHlzgMkzyV26Y5NCLKjGoUznLK76ThzT0iW2BrYGYXIu8Ut0ZUHnRs5nJ58yWiNp6Spy7NdMppN+6nX0d4EOPPZZC5q431Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751564994; c=relaxed/simple;
	bh=ucTtfQMU1MYKmspv6TPRHSNPinedq6N1m9VG513YNTw=;
	h=To:Subject:From:Message-Id:Date; b=E+rb6O6HKkpICRXXL39Ju2EVSK5YlUakudBi0zUCr7421oH1YLGdHWj1+lHkX76EerCcVQR68XoXYrOn47i2eQh9of/xzwbZjZjF9JOk+Kq8fw+sIEsBEQTnrLCFaJdhh2wVYh3L087RXQ3IcbLyzBPuME42AYFlSiJtQmaiCkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLQh71pF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLQh71pF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C80BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751564993;
	bh=ucTtfQMU1MYKmspv6TPRHSNPinedq6N1m9VG513YNTw=;
	h=To:Subject:From:Date:From;
	b=JLQh71pFJZzOtTaRcwcpD74SLAJvovK77sCNf4EDIvv7yg4m2gfLCKnujjvxEHlwU
	 7A59wgym3Ay4Db0Rji2mElW1y2LqSQwoXKwzkQ34vbTi2dDx3pQC7ny/tTzIIlnbLL
	 kiKtITy5mnbendTPegA2SMwy+ODLc9fOxhZeE8IvtuleytxsUQqMhsSVbSu2lnWkzq
	 dHlIb4SN1KH8359LxRmR6U8noGeHXrVoatkuuSI/i77l1ZRug651KXtRwqTKBs0Y1g
	 O00haAp/zH6tnc8Cw7OkhyqOJ/uuR/RY4fmwpVwJat1kDE/Ulek9jggApIK4msGz5u
	 UtYhFDdgJG6/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E442C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175156499357.27394.14115485492079859255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52065c17839883b0c68416bea2d1ae542dc2d45206cd63dd327dad9a56499a4
Date: Thu, 03 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751564993
