Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B029441
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707266897; cv=none; b=Z+8+X5AoEmBbJutlsN8j4iJ2HyAAWEXWJWFqryBUM79macw+VUVpGPy17ChxwfjiAFFlUCx6tzD9PHuyq1mjJ2xhexGPuYd6We+gTVj/AAkqAMChtZ0K6SeijgyPM8eguHt6pvcbpi0zam0/OuzaLtkl5ueiMdtGZzErC7HFeDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707266897; c=relaxed/simple;
	bh=g9FqVZdakcgu0DyHlGHAbVG4bgSMdtssTybCn9IVN64=;
	h=To:Subject:From:Message-Id:Date; b=BttCRGZg0oBWu3FEp0IT0L4FMk0lc5QBqhmGkuvNgUxQzg/XLMbWDYSTTvvXFemA/EI61JQziCPkVDWfyKcV4/eKaozML3Ibd6iQ4SUEnVehU/CW98zUp6hahZDChBx4fbewlXYqui6HqWiBtW6TuHRbDln1rVY2zgZ5K76UMr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/V7ryLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/V7ryLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2D8C433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707266896;
	bh=g9FqVZdakcgu0DyHlGHAbVG4bgSMdtssTybCn9IVN64=;
	h=To:Subject:From:Date:From;
	b=Q/V7ryLp2jaPQ1YXBwQipD9ZN8kC0fkHpRv6KwInhfy9Duhg57ngQKeGYwCdagM+q
	 xIx605glwGMckHDllHOoih5XbNBCFLO1zv5HfqkHVBzcbjFQehIEAjMYGiY9D5ZQCf
	 b5RuXvwAWV9JPSltaJNFYNxizuaar5SQtpYj4yvb5uE09VbDmdECQkkL5cHBSimGeI
	 QoS5p/vkFm9/l2h+GY2N/nkCrIgPsDb8TBzMTnNjX4YBsWX7xCVKsYEYvsodlI8Qvc
	 5z6OwjsKP8UmbHlC/g9x4/j/O2F9gAxtGs6Ww2tO1oIMGKEyyaRb/Or6lwnY0Fpw9K
	 JWZpGwSgQdExw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D3CC48297
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170726689639.10828.373856233602042007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff51c7cf9b362323f9e63e28c05482bfcff92666443e835759c9fb8395d963d
Date: Wed, 07 Feb 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707266896
