Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369FD3AA187
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787302234; cv=none; b=BaeNjS/3J6jMz5RJL+UtvZHWH/hdKKXpSDkTdZpxD0Y8KfXFGrjZQMmTEuBn27y9e12E7Gu97/4WVLT+56uqFfbKnwV4xREXvcfLz7ROp2FeJtm2aI2ccv0Htr7VyO2Sl7QLZ56IL3+WCZNzrNMX1qtzJ/nAcYCrdg+F0jmqePI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787302234; c=relaxed/simple;
	bh=xhrTfEFLzHEozwfsV2GF1gOC1gTGZHcexiwHoORN9Sg=;
	h=To:Subject:From:Message-Id:Date; b=gLI5hL8pDPgaq9jFgmji5DshCUlqLV5taPey7VY31P6FAEs2SQkFToIB40P3OynbLEq2DC2+ae4cqLjA5gI90eYB6YlVdYan27jyF+rEWxH188fJDc6BHZ9yWbkiOeo7CRzRKlpjSrX4E46G0NieCOxF8MrBCAnP+CY0/L4oOEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8urIoP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8urIoP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE729C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787302233;
	bh=xhrTfEFLzHEozwfsV2GF1gOC1gTGZHcexiwHoORN9Sg=;
	h=To:Subject:From:Date:From;
	b=Y8urIoP5YwCar42RCLfaC7skBRsAKh66tL42PGvtEghZpyQ5XXt+emues6ITlGBbt
	 YWBoqusV/dlOs1Fe0Jeih1DlFWFGqpu4eFfcF08/vIIvaypekEDZxgXZyxnR4fQRvO
	 gZc/nq7drsOuo0uR1CrO8eVo65ZJ9nBk0tD8xWdEeldRVH8+KNW5zRuRHGH2EUvMUB
	 IdF7+Y+l0xIFpZrAtA/YLynLMHQpC4rpPy4/JiSBgDFWpCmZUqdhzgka+xJt6djjTJ
	 mnctiwH9M/5v3FiJaP1QFAzwDpmhxY61Bd7Qi+II1YEq/WCy5TQ+lWP8u00F+F3vhm
	 t+AjCBlFsGtAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4659C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730223372.11302.10465089063834754386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e4f663ce679989e0956ee4ea4aad13101b4a1fd51fb915d12d988c8b3de26c
Date: Fri, 21 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787302233
