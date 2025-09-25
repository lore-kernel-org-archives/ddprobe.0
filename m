Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1008315B971
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758818994; cv=none; b=iwgtXi/aKt+AxDTIWWB5u5D9wGoydssuFw9Gwjj7peaG1JVDqkbYrMbUxblQqoL824OcS0+7YB58VIm5YdazLvC5QU8P2rtnkRmi2etUJSchFT/g5ta16s42kEuyKUimbaowZ2rlrqYjUVIMwwTh305OAScwT0c5O39+uBp4f5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758818994; c=relaxed/simple;
	bh=Uj/tMqgS7XvqsWZ5cLRLJW1+Dzkjp9dd9SYqK3zU/0c=;
	h=To:Subject:From:Message-Id:Date; b=TVZxDWC5M6oQO7UXcaaIYA7eeYpH4Jo70Ge7zOKYlj/ebL0oYBHKSRAg9NvAxXH/YWsdY3sXk8HU7eVea5rbOAu3PWFd5FDliwMELJesRuMmajAUCWHq4FY8ZvjbbVk2VQkJoQJdEjQkqAWUadvJ8eyU3ZAGOns23WBhdPz/YTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbnQsObu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbnQsObu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05C9C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758818993;
	bh=Uj/tMqgS7XvqsWZ5cLRLJW1+Dzkjp9dd9SYqK3zU/0c=;
	h=To:Subject:From:Date:From;
	b=MbnQsObuhcZstqrDpYXVDb+EHGO8IecTxIcpy9r2mYJfor/8m6bbyCggXDupyJnlV
	 HCeOkfeGgmlDLfcmhuYRnM3egzaycAwspc238e1S8h0GtjKkQS9XVDb6dAyKRqsbnB
	 c00tPWik+kyR3jL3kRdEqE3d/u39PlqHOF7/gjrOCXOtlbK2cp7Nt6SyGORvZZ1jz/
	 JXJJJ2BqBK4s1aaP7RRkf9PmnSpmcNG4YSUSr1eVLMNZUeujdGQWQCU04CanGbnKfq
	 4WxTc4jisYaHcUVgHv4LmQQf9sGFVMOShlwJubRrLbgh0/REUDaDm6lbuYrKrfWFZ7
	 SBeLHb2uLBnrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B0ECAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881899359.3720.10197144161147057864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2c3c997164889637798858ee8239d48b5ca2c1c57eca3b89ffb4e4f44ec8e0
Date: Thu, 25 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758818993
