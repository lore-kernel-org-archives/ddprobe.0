Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352BB194AE6
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776388054; cv=none; b=hicATDW9xvBDMwvLFuWvAJfHaQt2c4c1kih/VqxpCrCHdn3oAhQ3aFy0uwmKjoKKvzgcKjQ8zRFojGgpOz/qupBtzlSjMWMbrgjrbJSYu/buEuFvc4HUqIkRyqAEtfz3IwqFhZpHwg1JKOEDYOjjhHZ95siBkZHlKfr6vakNxtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776388054; c=relaxed/simple;
	bh=O943UZBmmW6mrGjsZjQeaHETWV7Y0+MievtNewWahKc=;
	h=To:Subject:From:Message-Id:Date; b=sutJl4ck5JNpuL0bclju7rJDoEIn64tN/8Iz45hrC2Wmzkx/6pGJI2MyLGjLBXc/rxGKl21M1HS+nUnerv9/E72xOt71olWbfzKMeNRwexkKl92CSCVY3lTryMIb3Swve5EvPNyrxSHDSv/rdBwBWgerbDXTKDOlBk9XeWPAptA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3MdMFFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3MdMFFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C6DC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776388053;
	bh=O943UZBmmW6mrGjsZjQeaHETWV7Y0+MievtNewWahKc=;
	h=To:Subject:From:Date:From;
	b=M3MdMFFqKRF1LzOeOMpMY+QkhSQTPZMbXWRr66kNfvZsDe0gwpRrR5SlSBRXVWFiy
	 5w+MyxGO9GMY8LGCNsorNGQlgIih1rwtqIrRcL31ByPKCXEDKzzqRBAyg8S/L7JDAf
	 REczE88LHzlOIqgppAhXviVipllDMvKa4Mz9NhTEsrgNYAWrgWZ0RJAWjmTkFdg+mN
	 PEhYxmOKiZGFQpDM8kO1f0HATM33R8/DH/BFQ50/+17DsBID95o+qKaOYv9d0EWApG
	 B1lXfLXkfiQhQQPjzg2ylrCoIjjA0rrOodBopS+7sRrmEaHauxDCMBCklP2/wFG25Q
	 cRLZnpGL6W2VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B63F8E498
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638805369.12183.18338195087797463334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b5882f4757d0fb27ce44b4f3a1f8a8a6af0ab8233761de8501c1128b007138
Date: Fri, 17 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776388053
