Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD1F653
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734299154; cv=none; b=UwfO1FvVXj1c40cbcoeQhnZzHX7WOKmQmoJ0xZUVagvp1klmcoruSwBtcJ/Q0vzsEkkWeEC3fRx2ClODvD46hS2i61jYDcnE4GHG2WSdNPzumkgwNG/cwcHssXj2bn/Mua1AWKyU7dnFvgAMFD4MNrEylKdBW1K/kBAhe1exNLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734299154; c=relaxed/simple;
	bh=xvs+t9ocfDUpQquj/TA887tCQyQCnpjIofTCnEYYAWs=;
	h=To:Subject:From:Message-Id:Date; b=Nl0+CqKssPnXfDGgpOdGcsFlXJ1itF8cMYKuBJBilDb6QgQTkvsG51pjiRHGYviK1zjrN/MnYfZFsbqgTm5ILFt956frdzmaUwmLBLqSCbAlCVuVQEVK57zNxj5PMS8M6mYodzriSJK56i7OI/FFrIxQIdHn48dSXtck4xcgEHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4wOz9fc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4wOz9fc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EE4C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734299153;
	bh=xvs+t9ocfDUpQquj/TA887tCQyQCnpjIofTCnEYYAWs=;
	h=To:Subject:From:Date:From;
	b=Q4wOz9fcLil5bzjrMnn1meigA4k6twFJo7D4CsJQKmmmyuNRTLsfgzWg5nCLfMF7w
	 M+ltAKTdQN7DvXrAJqm1cjGfKA4AdwalLrWAIAJVPyUXrilMXU8cfo8tkazta5X28O
	 sAWPXLGiP4+hIY8a0aRGUXwj+tdNyfGLI2HNzT6NNkKn+0GP0Ai4UyGX94jr52GGKD
	 /t7iXR+g/2fNCqPmC5GUtVcaNgMG2SB842ODftMTOwDt7NzngMrz7GFJTJNKg5DtwA
	 zjpKeHx4Z5CPmu2NQCRcKbnogBEYrlA3P/1FxOo0h0QLaXt6JgWo7idBKrdyzwUY3p
	 3r+2HLnijs1jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FDCE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173429915364.8348.10925221309822252289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1baa2cd77c796c3a2522a515cee5511b7f1b1b9e5ef56ae403b804c75e87dec2
Date: Sun, 15 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734299153
