Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D83725784E
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756708794; cv=none; b=mh1yrS/HoXQMYPdCD42kAR+MfHiE5+rGbfnz8xpYT4QtxLz2XcIyFN18mldFjHTC/+BGM+e7sdNfrfxmZT2S3b7F813BGGlL6GNjG5UL/QnkOP/+JiLcQJsbMnfY43r47nsh9Djsp6CNXjg4M9z0yGasfdAmRa9I3GmJsg6ruXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756708794; c=relaxed/simple;
	bh=4fPnxi+JHw083WsENWnI12VanrrN/dvqrjd0+0TUO94=;
	h=To:Subject:From:Message-Id:Date; b=XI5fXzEbdfDLrNxf2KvoBDYFwUqO81EjCeUA43f7jvTbJRjPXEjzE0uzpW1oKunfG5AQEK+NocGYJiOP230qqTBKYSZo/N1DwTY13u74C4fMlVHkZz9p+L9jjd57krf0m4R5QVg8eySPUxnfc1aQNhUAiXpnWKWjSv10xj8WSZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e47L/jtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e47L/jtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8651C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756708793;
	bh=4fPnxi+JHw083WsENWnI12VanrrN/dvqrjd0+0TUO94=;
	h=To:Subject:From:Date:From;
	b=e47L/jtAav2yfPjmwl44f2h9stIV3D6KDwxr0s+jLrafEqbuPdCttwByOqWYtrRTA
	 9q41uhCLJLfX7E1iWYn3lWb2xSh/bJQiVibTapx88YglRHdNTkdU9UkbFaBO7hf2IF
	 V6aKhLeyXsS504hMJQGlYNatVATEZWxG5klNhl0b/0n/vUlpahus+F5BN6gEiNmjbR
	 cWSlcOjduTeak2G/Ypef5vx28GQy+7HtWGxVjcJPf69wv3DggSPxk9EqkEUZjU48av
	 YKWMjhOky10ZN8T5/3zuTINDJ4S4S6fE0+6fxCBp7HJIoTQ7CwVyPNOmKYwmq7+B0M
	 V6I1rYAriAHhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966C0CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670879360.13654.9384612945146156984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3860c546b7858b95a0fb30091db3cfefb6f6a568f9ca29e2e599e2443ed9b13
Date: Mon, 01 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756708793
