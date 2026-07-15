Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5DF3CF1ED
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784150914; cv=none; b=gCKD0ZuISbKSo+iP2BmqheOeuAO02sFpgcU1s7WWWzcbfcvcBTXvvxye1DUd7l9PlcgF2ZZO4ua0nQyrpksM9oN8w6ucIa3LyuUYmn+rjECE4ZvucYSEbpWfAAXd2hmRQXN1VZZY/3o/yNwn7pHFMZB8GK6fvhlubxzO8afpuKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784150914; c=relaxed/simple;
	bh=JgdEW8RoGBaq/WzwVjqoPuCjroL5Cookt0hjgV3VlIs=;
	h=To:Subject:From:Message-Id:Date; b=fVQOM0kHWxLK+0WZbDYA3NPIF+TP6b6DgYNQh5O9w4/Pmb3mi4VFcISO1YdW/LfJB0W+p4isz8Cjhs6/C0a2TXGZBiPhpDXTr0OL/up9cCEgoL0+N8hk8459e6Lrg++3koVC94a68lA64Rb5B0ctRFMsuNif1QTKCGU65wN/JSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYk3FQsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYk3FQsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCABC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784150913;
	bh=JgdEW8RoGBaq/WzwVjqoPuCjroL5Cookt0hjgV3VlIs=;
	h=To:Subject:From:Date:From;
	b=OYk3FQscMEl5Mm2ILtqxNxgTQMbZZoWsJzKxIvavhVQe2KtI6mpTM5DJI+mvneHar
	 8j8pSb+ST5qWBYlOVrtafdg1DURML5jj6Xk2cduOD5rPzVZr/GsA6ql5nJ0AL/yBeS
	 uvXpRuC2VTHBL01VYIKRb24aXYxKvC2qpgw6iccV+T5SkjeeSNW/Bi307aGN9hfATe
	 CVivMq2GZqqZODf5v1GJT5mJqQ5lCzkA++Z3SW/LbH2ywsUxpyzOwRZxza68EH9N5C
	 PVrAK25HGo2nvAGBYbL4at7VOSH6ulB0gwbe6AbxIEoTz1n91MAxPQYzSWuRi7XVyl
	 RqhcO66QMSg1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95A6C4450A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415091368.5779.16382770250418025241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f975254a611c5970b9e723742f5edd9c51ef262db6fb555ac0bc4965ba87b02
Date: Wed, 15 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784150913
