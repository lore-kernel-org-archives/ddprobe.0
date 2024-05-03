Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDF2224D0
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714711343; cv=none; b=WsEhGaBZneHTac8XSQP6TW1nb3VBqqQgdFV2WVQhS1nLEHyDguRizZzeiYF2IjKNzdq5DyM4HP+voxyaluI/U9CwGFKgFutZa0Hrq2dE/YaQoo7hSBL+r+DVmsckpWUNWkNXaxmZZKWNPyUvHa47wWcuGO+LkwVKOA+O699vzGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714711343; c=relaxed/simple;
	bh=GlTfS6pN76Gbhi+z/BgKCLA2f5HTFMM6eIww5EQXw3M=;
	h=To:Subject:From:Message-Id:Date; b=QLZ6gpcwCTQo+lnU90DASq1slmoGfVE5LXGCSjPBS9Vi1o0apci9scziFYBfXlDRt/L9bFHoMchIVJMg0mAmSzX7epOjvuV3yr0F4Qd6nUDfulllwGKXNerkVYn3pf79Dh0RSQHiY883vtEwKGPfqNs1ngvLwIhCbi9kLjfnxQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+QtEzdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+QtEzdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E020EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714711342;
	bh=GlTfS6pN76Gbhi+z/BgKCLA2f5HTFMM6eIww5EQXw3M=;
	h=To:Subject:From:Date:From;
	b=n+QtEzdrj6OlhVKIRimgau7msrc5NQvLOU9u5FP3KWyDLf8AaEcckqHVBNg50sGVu
	 +D2SPP8n0MVCwWzroaoHD01PsYNOzY5sZJiIfcCWPrueYMsXzgMWXjrHuLWBvaWEyl
	 9D3v/Coh78gmARN84DP0JfKfiVUzBZklclT/xx8uiK1xnNx/MZQKyfmBH3zisxQLrD
	 JeyI0Vn1y1ATlGcgjpzMu7xUjztmClq/3C42XeuBi0hSP+OMrzAhXr70YjHELTN3FU
	 jC3/qHjDt6UOsXW7UEwZr0WlG19+IxuWEwX3uKNsvxe056Z1pUIuOiWKa4/fryTsDF
	 h2DP1pakPthiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA453C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471134280.16742.14737653326566362358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d031e15bcd2aac10fd7c2914694846dd57084731e893f0ee5c05cb8991b82c3e
Date: Fri, 03 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714711342
