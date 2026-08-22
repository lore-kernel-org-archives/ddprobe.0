Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66358386C22
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787395234; cv=none; b=bKDnXq8fhF9qkTgOPJkpgyTOFcCoRHkM2V3vLvvFyF2YKXZcQyEwScjEn5hJHi+YpndCw0lz+fCRQGgw+p8VRzS5nlpW6UxKLqp6vzqhxOycQmcwFmBcPCONH1I2RLoOzb5weBGiqcehbHJzQXhJ0ee2GXQ7ggNcSQvI57RSxEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787395234; c=relaxed/simple;
	bh=bZo+TjCzyFmKIuwrTPoMvKSyiQoIuDGy/JiMinNwuGQ=;
	h=To:Subject:From:Message-Id:Date; b=HbmBRszG39vTtk4DGqHc4wbmfgmJjtXDXYyHQKoty9zgdou5eQigUEpGTeWhVNqEhViiNoxNoPMcBZzTdaWaqXP57aBojF5HpVIkYm1luIqIaxDLAbT3hboP+msm0HInc6BXhVAIHRNtnO+mw57EgIfL/T0LsamO9NJ98xbVel0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPp5R39J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPp5R39J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9883C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787395233;
	bh=bZo+TjCzyFmKIuwrTPoMvKSyiQoIuDGy/JiMinNwuGQ=;
	h=To:Subject:From:Date:From;
	b=bPp5R39JbzE7KFb3ruooZfYCt4a9+O+clUXL/fWe/0PXB/JRhiPXDd13bhfv/J8MC
	 ud9ri3L5m5+6l/mQL4xjt1qdhop0hI0NItG8dodSqlIrK8OuI//mrVDdBkRQHswmGY
	 uDhimBPJoX62FSTXaFPZ0nRQCCzium/e9dAfE3FNIi7Gtusv2iAW8MKO+8w9nb+F9l
	 9hAO5Z7BTZz9+4wmHEXRpLY+Vicl66DxBrAdznHLRkplzm7ojMowZoioOXLx9jEhcD
	 khg4BbdwrDtiLjakT8+AjyPi3dUHZEIeL/oKy4oqtAI+C5jSK2oEjYSVqUcLTjp3p2
	 0lALixb/dz5Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2CFC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739523372.17527.13711833829614619344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73740ac5c2b82f4af7d37e7eabac51ba5086baf395d579e1e316e76ce5c97802
Date: Sat, 22 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787395233
