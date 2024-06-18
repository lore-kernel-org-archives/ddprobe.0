Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520E34D8A4
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718726363; cv=none; b=pzfdthu3pc9Hy9VAXd9OUAKie+t56vaIQKNkAkR6MBHflgmaE7yLKA82jGmF3hL5KzmANlEMlQERJVvKrTT3JEilCOL6ns2RH3Gsuqn+7cX1D9hojlUifM4OZm0iMgwhJpxmlY5TTFjTHoP0uPoKqTHjZ8x7hUAWq+AO0ecqe9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718726363; c=relaxed/simple;
	bh=UUW2pyY793EXREJm2FSPH2WRkZ6Zdrqsqe6qTun+sZQ=;
	h=To:Subject:From:Message-Id:Date; b=Ye+mUF6nUA7ukXh+cDhy8UT6lwVPRKSfAgc0Bg0R4Gji7TvkwYf4W3/hMiTMkyeuoqOQ7uIariTVgB9mGVUiqfzntWmuSzPWqLFViqTzKu1uqrPO/Cm53W9ShucXT8kK025YV7vseNUUkDTPOlAdli90fkFauqPAD6ObTYfEoJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p97hEeuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p97hEeuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA046C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718726362;
	bh=UUW2pyY793EXREJm2FSPH2WRkZ6Zdrqsqe6qTun+sZQ=;
	h=To:Subject:From:Date:From;
	b=p97hEeuSCCJWNNyIkCdGBYPZWFXtQQBxpXYHABBW92OVbmEUlQrNvo1Gg7i1xtTX0
	 dVIXWQ2XzZrscqw8yh3pqBJh/f9o9ajlJWc5iiWRmzA1kjCD/LTtjus0PUpukPs1Il
	 TNI9sTRO41o9OHr3LWOpFZI6p0PHB93WDX+uF0h7v8suO304sg/Inpa2LJgkZQOEQN
	 E7Sb3z4xGIvBe1Fz1FBY+A86vZ3BXLvWuGSqh1+65Y90fheluA+ceXSX87CfuYJyfU
	 uMS3L1YXxoYuXzLdhxQhItGDtHOXsqL/hb8Ib072wdntEGtu05YrCX2Oym3PeRy8g6
	 l/ya0IMP6UuhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AF7C2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872636281.23038.18368516411974181109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806894f4d0bd61a3f6f37932cca71513ceedbdcd9bb1fcc097370d579f8de0ab
Date: Tue, 18 Jun 2024 15:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718726362
