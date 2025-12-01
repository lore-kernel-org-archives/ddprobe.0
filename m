Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E92F7081F
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764561174; cv=none; b=PhuElI2/tD9Cb79MypESGR2J4b8yMTukJtBC8vTRZEKCTroXawGQXjha3RqA+J2w1MyW69zCrI/gffcPjCmrLP5R4Snt0VYpDdvDBbG7/3xltu64Oi+KyTkmw7Xh4NV+Zb65vwX27BfC22kr8OgokcXMctcwu9/vmm581YnA50c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764561174; c=relaxed/simple;
	bh=R+KdsR8hAoeNpLaQ00oEuDUtI1vpgsJ/d6U34smMOh4=;
	h=To:Subject:From:Message-Id:Date; b=Mky9744Yln4ktk1CrlpiLyry4rEtJG7CsQxht2l3HGVWyul54ocgepRW1cYmY0x6Kn5EN6I/AC0SSod4ORsOKLdnREXPqzNQNdD26xlNHHlXeK6nWezQPJoTTwi9C2guKpxwl2uhiBkwsrKIbqnym3HbhZY0PlACXDFaJqVvCaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xm0CauFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xm0CauFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A166FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764561173;
	bh=R+KdsR8hAoeNpLaQ00oEuDUtI1vpgsJ/d6U34smMOh4=;
	h=To:Subject:From:Date:From;
	b=Xm0CauFZhB50n6XMgPVST7JJ1VcvmryHA+IAw6bxxVrOxMOJAj2cETdD8BN0Hzwzd
	 4ich63ImDdowxbvNLGjMFWkq2gf5hJlK7Oh+gqmE1PsU7lvcq36GY+OHzxF9u+tT+b
	 SBQL9qtLjjh/rrwysBlwpfAt45kx5XDZi5L47hDfpsb8M+aQrtRIlxzeMc+fEdcmrM
	 fbad8VW0gsOMsAfoQ1BInfyUbzXBsOJiplJcyzG1E5IqufrVwFaRBDneo5MPGxx4GA
	 NV/8kar1vtnmtCoqJicCPCsn4eKJW26mOL6SQyFqLUWVzyXFHvy8QCKgqURV8skQOr
	 Cr+RdfD148jxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9112FD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456117358.747.11824381597732605124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0b4c963b75968ab9db42a144e5508f60746bea7ca534049c93b2206c465785
Date: Mon, 01 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764561173
