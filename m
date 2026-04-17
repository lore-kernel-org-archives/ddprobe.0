Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BA52F12CE
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776444454; cv=none; b=hafAynAOcVtqdLvfC6GsUKOthcoMriiW3ICwm2rvgzxDE894MrBqyhGTQErBC9I/76/WujAqpoptepOHS0azGVn1QKBUu4zMDTms36HPgcaf7WZ0gYb61uOltc2/Epi54/2C/emhpRhzA4Kpu3oAyhElpWein689pgdjAEHdRQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776444454; c=relaxed/simple;
	bh=vIU2X+UHXqUOuWZihfhIWRyiCOhSM0EP4CBR/I/cLko=;
	h=To:Subject:From:Message-Id:Date; b=a5GgvXqxSeQDfZavcWRIttMA7lJOeMW2db+YlPVz59PuvJUDhmm6ST4qNDCmx4bZIQDXcd6azyUP1JX72eBY2O/UkOamHACFnpOvG2DDIwdyH9Foya2yx8r9mLpkg7ZSx/WUdQ82xqHY3owvlyK9dwjWjYo9TimUKtX9ECP3yMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPHYaUR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPHYaUR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7EDC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776444453;
	bh=vIU2X+UHXqUOuWZihfhIWRyiCOhSM0EP4CBR/I/cLko=;
	h=To:Subject:From:Date:From;
	b=sPHYaUR2MS6nb/iNdGf7R2IBsLhKJm2iITlC6pQCZUbcm++ccoL5WqRrRpLeVUTTP
	 sCwTCm33MClqPSGwwyEdoDYjxGJ0M7CescZ+OM4UESe56l55bOZf89+gTc3YpwOgYG
	 a+qtaUmcwgaXy76ySElA/hS/5qMzcnLKSmgY5y35ICAQhRcwYtwtHM1uasHbkl6Qng
	 ezG3tJjW9Z+LFuFvRHIp4rke20+ybdsMYnym0XhSpTe4D08RTyfdvBP370JqR+Zovm
	 PTjoV0k9XPFz9ijRYnMg1gXZNTETyptNulRmvkcyXBdOACOntLEe6hxFTrLyTSwn5g
	 wTqauLNz+rjkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F4F436B4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644445368.24231.15659567041621888855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b82ffc6bbdd91cd6167c28191c8d3d132bafb71b0cd741356c4c7cd7039308
Date: Fri, 17 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776444453
