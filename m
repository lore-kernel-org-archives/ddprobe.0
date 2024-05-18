Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56038DDAA
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716019943; cv=none; b=Ga3CQE8vFkn0s127v8ta4Kegc8RBg2kqJ4bBzWaG8wNJ4R4H40dTy/isOI4+WXX1NJzvRtKCcm32/vaYv7dr+Ln/FUw4BwWBm8Cm+2GFlf1gRG6Re8U9PEoteEfbGm5Z5m+3j4la+FJV3XcLZbkdfoNh7dAr9sy+7hj59F5zJCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716019943; c=relaxed/simple;
	bh=gLWJOM7FHU0ko/8tMlZuB16T2s4IGfIfgxprzmNKEmk=;
	h=To:Subject:From:Message-Id:Date; b=TLbFy4MrzL82d6yTcYaqpQuTJBlOyGlrIDqEAdQ+T29t/J5wonxzdyt9VjFYwahcCIyElb61o1xA7Rbw+zlgCxpLz3iMSU95TqsTF75CaZgzUWlcP/4PfZfGYdzyPTWTvGJrUXOZ2Uh3fNcfuObOoXLxv7iNXyTPODLSuxXme2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+ggirAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+ggirAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D631EC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716019942;
	bh=gLWJOM7FHU0ko/8tMlZuB16T2s4IGfIfgxprzmNKEmk=;
	h=To:Subject:From:Date:From;
	b=B+ggirAGHdv5TrsvDBTk2DENvQoO/X/bheMfiUQlKULt0zGemmMtLlsM3Spzebrd4
	 GVsZyyBGeav9+EO1r5HuQFKwXEwdAiHCE/T5edkc/0qDxlogxpEHolw/rYeGD+Llb/
	 5IwXFav1ITM3jKFEkwkiIrSpLPknArrTKhmFE2R8IdUHgv0TEmu4+R7Q0oso2Comzd
	 nkwg2DmHNRLLLXy9L5shqx4oIpe+1o8AVr1ZyawOrfS+N9xrZKl8qmCrJOq4N/NOqo
	 7A0LH98rR/O+PEqJ/QWJzmmlcli9asUf4oVfOPnqQYDLXD/A239g0FH5IINexzAuhf
	 gheeGn5KOaPBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F82C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171601994276.11791.15395901423180516799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12d6153515566b2808dc6901a41f299bedfe2a1488d607eefcc0d5d5a371c11
Date: Sat, 18 May 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716019942
