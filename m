Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B68A1C549F
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772346894; cv=none; b=RcU/RHSIwuKHEcmcCY6WFyV9ThhXk2ez2HBRxxIlS8lzN2dDkmuh5aEvApMhDcKfX0J6Bqbspv1Xx8TvHbdaoS5+yhOfkYykF3gYpLELFwsdRWbjlUBhbGXoXh3f8JPFlPv+BDKE/de5m2shuSgdLa/W10qDNmnCM5RmjY5xW6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772346894; c=relaxed/simple;
	bh=H1860DQ28KvgkuNSHxLbfOP1F88TaQa5jx2bSX0KED0=;
	h=To:Subject:From:Message-Id:Date; b=rzgMju8/uMLeFm5bQrSlU2TRVP1+oTuIl+2rUkSaTFZ7AEsYBkum31w3INVYqBTS4HhSr+OP9iyx9mp3GrVh728Wqn0GHfiwsR4R5u9EKQMmj7up++udr2hRTlLRuupuUrN1QCs2UyA8fVkue7tDDbKmLh7J6TcruooBHdi/gxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBqN416c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBqN416c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B365FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772346893;
	bh=H1860DQ28KvgkuNSHxLbfOP1F88TaQa5jx2bSX0KED0=;
	h=To:Subject:From:Date:From;
	b=NBqN416cDFBZHZmwA0KuaLl5M+0q8zqmUb2zmkjxRWq3vCwEUUHU94ABZCqXBoamK
	 HVSwEmdu9iN5utxN8a7maEJMPZ1r2eWk22GiSIdocklor2YXotsmCCZk6fWktYBsT1
	 tzchaQnxCuJE4G5feVSIrR70NmLOtdx40ANaPT9p+zsS83rLMH/+2/XlR3JGsbZ5km
	 4ya5pe6UOcgv5yHXyMSd4MOIj1qDLDK75H2UiYAsEA3Ew3CWqa57lZid3oxAc8e1kV
	 DuRIq7Kc3i8jC4WIPGbWMbpF/iZlSK0UhD3vZzkPiOHuGxjjbyLOY6ZcIKI8BNxeGi
	 fMpXNeIS5V7cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3742FD0056
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234689363.6671.10662720584337694048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89cd78245b1a24f1929d9ea0d3ccbb83247a606a9acf2aca54f3acd91d932521
Date: Sun, 01 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772346893
