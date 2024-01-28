Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE8D15A4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706408897; cv=none; b=bG1LK3FSvXHBxx8jnHB/Ww+FdreD00s71q3oo8EjGbrrc5IMiIp+y5j4zLh+1xNzdEl/RfkfRGAkyOob5OH6pbedGm3EybXtYnQfcjvQck3kwYEEPO/4zaD2YoUyUuiyb5AApYHk855r/OsX1/Dps7XFRF77n2uDkFpyLkshlh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706408897; c=relaxed/simple;
	bh=vFpvPdxJyP3qF/iEaCWzNNCVZjwGXMJHYWqMAU61e0A=;
	h=To:Subject:From:Message-Id:Date; b=Sszr4RJFIgQ1aBKlfy7lRfiVEnLdFtLO39uiI8zfbLWQ49Kd5c22sbDaRzCo1L2jDY+ijFcTDncFyPYor2uMxDdkkFTtCt/HlPpH0/JSYDcwN2lSkxHJ1KWOnDjcPZ/47GePYG7P8rYmJ8MfJXGyeEpHY5Hzc/8azvgi/NUfhMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCmO9GOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCmO9GOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80BADC433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706408896;
	bh=vFpvPdxJyP3qF/iEaCWzNNCVZjwGXMJHYWqMAU61e0A=;
	h=To:Subject:From:Date:From;
	b=mCmO9GOe+JqLA+Fmcl0nENrEp4zmO7AMKcu/RK/FQ2aG6dFlFqfGgt/v343YEoJt1
	 OJ8jguAMx/KziwELwstTT2r1WuDe7VT0ZsN6WykKXhnjGJaCwJcAdiQInZVK23sXRV
	 rxN1rUgwAVofISN6JmUp+CNcIn9k1KB6rW2ouOKTemfI0gkJjgWu/2pn3A4jeWqgwo
	 NMVPr2+FWFOtuaEwe7po3loLKujjEtQ5hNw5U7k3fNYqGxVFlUNYHACMSryDCZJCtr
	 7j8Uqcxm8D5phgRB9J1OKCMGwZHbHwSstE41rSZr26oHaWFoTRl8g9E/mgfXlT18Jo
	 5Tvm4HE1Nc61A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4CEC46CD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170640889637.18646.10841433654661277374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c237a5d685f8b2c281fef74cfa62fcfaf9424072ae3ef35ab6378fdb95af3d83
Date: Sun, 28 Jan 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706408896
