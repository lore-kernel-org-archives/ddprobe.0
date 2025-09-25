Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282C6223339
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758835194; cv=none; b=SxpQSVeWag1kZZUqUlxBkWvTz1UmtAqkPqoXZp3kWCINuNjqMkYah9m3IgSx7SvuogrogLOkKqarCLYG+ssH456XKoAd6Z1oGsXX6FY+IvXahfxF88CMY6uSA9SuD+rLXEeIUcvMbYAZh+7sGmFOo2H6v62BvNRMTkb/6aPuSGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758835194; c=relaxed/simple;
	bh=4nWqD2rHAh3WVm1LiiOrDgv4HRkGvCAD30gY8UOjiVg=;
	h=To:Subject:From:Message-Id:Date; b=XSxTLlctO27bOOWxiNBDN1Y86b8O8mY0cGAQtoXEz9Xku4HyWuymTAPiQFjMcsnaeKaKPuc0a/656R0CGdRp/QrUi5hwY41KvY4PrsXuQshNOE5Jv7tYW7lHbc943vIc8sSGKfD5g9rgRF9KFOF0WYaw80TaMmNH6aYT5FPXpOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThIyX7S5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThIyX7S5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C56C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758835193;
	bh=4nWqD2rHAh3WVm1LiiOrDgv4HRkGvCAD30gY8UOjiVg=;
	h=To:Subject:From:Date:From;
	b=ThIyX7S51UbaQSO3IyyPM3V6Tng2mNgvygV+DQfnXPJ3p3BjhIIR067jVu0azZFYz
	 hjnpKG4iL59hX3uh8PNuLqenIzf7Fkd2+yyrioGtPDtb/RqINQNn5lufqkNqFTCsSg
	 XyuD6fcuIwyuYZ6vMIIaB7WOGtosWdaP2Je0QEW8ftsnMxFUT+TgqtcsKad3s/CDwE
	 PXu7nX6ejjHoygYFxPbRu4XVMxznPRhDNE15uK7MnT0Y2jOlItqN8jIApmmccU6CnY
	 5snSEOQyN5W9a2xTQ4fnMCq+iiJgcpfR5Fu/lsnV4nIngCnPB3OlK7llAZSuk/s880
	 9IaRu/V6LNXFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90747CAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883519358.10746.12270131945908496919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af629abe988d36fd8d2fcf359225fa4c1133b89adf05598d7f602814a59ed419
Date: Thu, 25 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758835193
