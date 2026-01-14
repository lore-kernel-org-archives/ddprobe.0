Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FDC184
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768353234; cv=none; b=rxifu/NXGAcy2lvHM588Y3Jz0725zGGw/5KJTZ/9gtAx0JHSdYY3Yd9/1w6hAnwfj8PO/IrjlpsQ9Rct5x+cz0/VRZTFRG52ImdpybB9b91NRnT2l5VyQ1G7/Fit6sAAiNlHkG2+J4xAVAf7bNHJKSeEF8pP8TJ4hZFF0+wjBDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768353234; c=relaxed/simple;
	bh=JYBpdijryqm+apZUuriz9LVPDW1X9a6JY3TxVF1x5WM=;
	h=To:Subject:From:Message-Id:Date; b=uBhs9Jate9ILl5M1gQMf9n4dnClUirGdW7iEupIKNX92ew7D8GPojfA2N2t97Q22r3MSziJ7OQscyYHZyJurg15RHMWoBiAQJN1qcdn1XEWcvSPnomMFJwLOXwHRtsQSy8GRfo7tair8qKqbb5xjpAy7VPI9NiigPT/6JgoqUvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqFViyNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqFViyNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431FC116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768353233;
	bh=JYBpdijryqm+apZUuriz9LVPDW1X9a6JY3TxVF1x5WM=;
	h=To:Subject:From:Date:From;
	b=HqFViyNYZ/JL1P+qt+GrSRYU/Aqse+T+zCDe+lEd5A60Y/7ZHzmMr/aQv9co3etM7
	 g0XaJRDjL7+QFTKvLK4nPQVeSEiX3yL5SDrdW+E9jL/tYRczLX2UMXr/PBl0WPo71o
	 uQmC/jHAALP1XI6GUEEsKx87WKN5Ca72CV/9PD7XuCr9u0tTkXVAsMd7LGLiLyxiuy
	 k6uO+NdOtWizY3YpXb3fw1BY7y5qjVfS83Wfaopqw4gYERUKoH7AaBu3qs9UthJSo/
	 Qzm83SwQi86A+jdxpR39IkaPUFwxpZ+hX9c8Vja93XhVlGG3J4ArinESuxhrzJUBOD
	 kcnpnQl5Y6W5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949ABD30CF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835323357.12886.6024508820656256686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39773d47f4ae15b22a731f73c3dd47e5fd3a3ebaceedfb0546d51cf29e76f44
Date: Wed, 14 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768353233
