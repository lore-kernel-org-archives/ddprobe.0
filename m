Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B6324166C
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761621593; cv=none; b=DFpvx0hK1CjJrs+77HwPJP07zXlx3HbDj1SJ5y+EpwprXrqg7R5QCo0nTToGDsVHQTlemP5DB7ZUPGvffDUeUow7iLg7t6NRk0cMQd/vSQ+U3v/JPyJ3i/HkDYDGkPC7YeKNrFYHsczSrrOc00B3EhQ6VeCM40W8HvF4pA8DCGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761621593; c=relaxed/simple;
	bh=V6TpEiWVccAUo+GkSo/KPK8ofwylgOONHKvBxhId4So=;
	h=To:Subject:From:Message-Id:Date; b=L1MSdQoUMDBK3q+uEQ/8bi/YWxSG15+tUz7R4pcxDTNMRszne0mAINStL4PobGtD80yUU/bSO72gI2wRfy5MVBBTP00OB7NysLxYRpIg82lJ7aMCt/Vue+5Ptjgh7WJUmNa0CbW78iKFKVzjN1rJmuoEj+khsGiH6Je8wm/HrS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7AV6Jrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7AV6Jrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98309C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761621593;
	bh=V6TpEiWVccAUo+GkSo/KPK8ofwylgOONHKvBxhId4So=;
	h=To:Subject:From:Date:From;
	b=n7AV6Jrxwwt0X+l1wgSzlOwgXpAjDbxoh6jmgQ6FUNvQ4ehDp/dj8QhdXocBqjB9N
	 Ns347+muB8nwf5EcMVmwH2chK02DGEEUfycEwyK4dvjU2WXHh4GdrQ8vRwPTna1k7v
	 8+N85nM/yLtek5apS2YjYCrhKt9yazHXPf+wsqP3sBAAJdFvmmgEyvTI8t3dgZ3gbj
	 FQsjPOrXk+NLoNL3l9qoOC9mvA+Wemv1k6cP8xCxecGyBsQZovS2SdxAep3kfGyLqU
	 C7cVaQDJLEUdzURuZK5HN6iJsUQrBWWmLTWYBp3FDoCqq54E37ouyf8rVFYf13QhrE
	 KtE5QYzQmvOVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90933CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162159358.7480.2612532746987033561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af3a968c579588b8cc765ed48709f715426c23382caf46902e6fa2e8886257f
Date: Tue, 28 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761621593
