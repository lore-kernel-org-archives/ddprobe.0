Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263E1263F44
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770531234; cv=none; b=ivFB7XRw2OmzSNiZ9xWHojkXcRbmTSMMCP4Ckuo7EQt7q3QexF8dW1YRrU7XdPGCuHbDpauNhVbssYmPpIg1xbfZv4UzntFUrwxDepWbanQnhUa9prVqdNQVycnncA/kn897l/It49bjW/7q3q7dhe+BehrRp5ExbeKlPSo5kVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770531234; c=relaxed/simple;
	bh=ybgviBZtDdt9n9latq67ejt7C0b9Ih32IBvMQyEc6tg=;
	h=To:Subject:From:Message-Id:Date; b=b9Un+u3GxdjN7DWZ1pLW9fBuaton12yDHr+LlOm8cycNQ9v56HQkNvUvul4i2C8syz5Qao1Y9ywCEZM+3PhdoOXyq6oPrwR7qlPgPtEFkTm0N4bM/wzTSC7P5Agsrgo2UyuBBV8j75IGc71aHIlhUgYmympSzPlDjD6JJFBU7CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlrEHz5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlrEHz5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5A2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770531233;
	bh=ybgviBZtDdt9n9latq67ejt7C0b9Ih32IBvMQyEc6tg=;
	h=To:Subject:From:Date:From;
	b=qlrEHz5A0Vc7JORcW2e5Bo71VNaaTl72Egd1XlqGMi6ib/WGIyBB1ez/WUloLwdh+
	 u+pJoO3DXpRVK1BtndWgR0GjrogQFb/ITK6Z++D+e6FCssRO7VCogLgnInrUKCiXLi
	 +tdOqmNo+uKc30r8VSIxnY3kg5QdiCUEITIg6f/rOrxD19G2XoATB7OyIWulzpUI9M
	 MpvZQN4wRYySyL7jG4HUprxCpovYOCiyh8zJTL0wYhpS1FOLTLPF3+A/0PpY1xOkrh
	 hbHgXrya9j6AW+XYvqvKnQLfs1GD4/cCuwOdhlXHUa4tMZTpxaivLQZWpiTqaRu32R
	 /P2Td4+jv/vRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997D3EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053123358.309.9093068773264452300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4dc4f263a2767e76df51c1aa0c75edff926806d2b24b733d8d2994f61865ed8
Date: Sun, 08 Feb 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770531233
