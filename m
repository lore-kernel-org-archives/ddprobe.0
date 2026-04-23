Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159B9314D34
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776967054; cv=none; b=qUuS7OK5EoNM3PEIwN+wlb2mn+r6Nc9Toz3l5v59RwXTUijNhShnLwaZAQz46ow6XjNDRvU+ZKOA+UHxSiiUfDNfZCE19NbUwZHLaOA3pvdbdPA6+rJfT+cJBPkmWJthyAM5dwbGEt+b5AKeKaG4kp6S+CoZslelFnXUxguCKvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776967054; c=relaxed/simple;
	bh=YcM9dZsNVHddC/RwrYYka5bjSDzAqpp0psB3uzSgeUI=;
	h=To:Subject:From:Message-Id:Date; b=ovBCQaYOflRiefYli8KLMMADdQvnzbIwvchCJnTQP0RhPiEFSddACqJ7q9AR2nW7nfuwXwAy2q9fwClkZzFJXf0ln794r7JIL34pOXTCGJGCWDeqlNF1206yCYnGJEjLrDHPUB8I33fEVnAS8WHeDuj9Mz1tdMoTmRwh88lx9Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHroCuTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHroCuTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7943C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776967053;
	bh=YcM9dZsNVHddC/RwrYYka5bjSDzAqpp0psB3uzSgeUI=;
	h=To:Subject:From:Date:From;
	b=NHroCuTED6FhuoJo/oIDca0Lyn6lKh+2xc6yruhf1Tu5h0ynUTKnJdk+BacdaAj0i
	 s1L7Z/0Ucvj+CWVnVGr9b/wfuzHPdv3wiAidQwXWXpLI0IwH7ddVtrPtjal/+ynhKB
	 gUOtjm8Qo7xH98CK+0RguqAHvghObc9oc+C2HXNWwd27rBoMiKKdI6PXLKrJKVTgjT
	 U4QL/pRnuEku6aKTo+ff9yfbQkj7Kc6T+6yQYQ1aVWjSGR4wQF+4L7hmnjbNI46Fuu
	 wOcFJ3FwCKEweNmHw1hPk7kVt0yd1LfaiE/skDnTPzaBGnJ9oBOE2hWr/Qib4L1/pz
	 8eJY1yqzrl4FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FCAFDEE2F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696705368.20583.7457171889230082149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec24154fbff9fd9127e2d4292cbd20ea48f684205970d7c7e665efec89138b90
Date: Thu, 23 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776967053
