Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6608E47DF9C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784042914; cv=none; b=YbZ0RHkRNmOQ9jWZfKzXd7sP9mhUYBzP1FH/OJ2wKIyaD4OH7d3JBd+Y7lt6dx+Q8mrGVkx50SNicdfv5GB0bXwpxqZqCsuQpKi7hHTiliO3pjv2wT5YxDhqI969R9WNjx+7agYsVI2PDAutmbK5z2/ow6DbKrgwmxJIYrbb85g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784042914; c=relaxed/simple;
	bh=sQY71g9vclMGsgYDtSvp6TrY7BsIymvZXxcQhWFmJEs=;
	h=To:Subject:From:Message-Id:Date; b=czv8xInAD2xYLSGigQUEFmx6DvMkxyXcHnD3YYMpaGWJRdFliF+Pf1Rz7b06BUXdN1sCOZISQJfKMnJMqSiL/9BpoPC5zYQzJs9iVhWJC0EmOfem3P/z0ZUnSokA0YC6KwjIkgtsuE7jXtxSMgtvUxmj+U8ff8jMveQha+u6Nqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kP83Rt4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kP83Rt4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3846C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784042913;
	bh=sQY71g9vclMGsgYDtSvp6TrY7BsIymvZXxcQhWFmJEs=;
	h=To:Subject:From:Date:From;
	b=kP83Rt4gZ//d5uDa+HZNJ3q+jYeIodGlvat9LMPlhb2yzQQsf12N2zKWXu7LFA4+2
	 GPT1boBHzi7+LGQDh24lVIEfaov5700HK+NypIkCLwjucV6nvdv+oYjETzZHd1brmV
	 eFE5fG0CRJ90MtFzn6Bk20XTBUxJ7+L8JV+H/73e9jh1dnILuMfyyn0q0nfe19bCUl
	 DD8v4c/8a1nPC3g+UDt0dDAq9btJJ5Kd8YXyBdR5svE4SgCMkY2aZV0kteDiUyrqsC
	 X6rDsVMbGqlvJ+bz9vclyV7dDqJsOf0KtKEyF5xjnQaFy0mSzM6n9e91VlGyfieEk+
	 sqZv3C//6wJ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A58C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404291368.11417.7676603281129414374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40aa8de6ee04607547e1c74af827de3f28cb3f28cdc1f5e8be631dedc5790253
Date: Tue, 14 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784042913
