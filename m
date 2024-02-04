Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FBC219F3
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707043697; cv=none; b=QC0XKgMMfXDTs39OjGLMGrj5donWj2xoEinfnj0AVln16/r8OTjaAtq7omDxlezwGtDqqHdvAlffGiEOKqq/DlwSNJCpD64lGKlcDxJq4Y1wXAyvycDzPGBeuxVtBphZ/Wm4T0rjReWM+YgzaWtpPQZSoJSuhC9m9Xhh4Jko3jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707043697; c=relaxed/simple;
	bh=vuK/a6wVVsxlRQaYQHBJecEJzzkWu0zSm+BUFnmA4zY=;
	h=To:Subject:From:Message-Id:Date; b=F4EFR+YaIqvi8k7lh6HKTmR+wE6dWpnH0wuZDH4vr6e79WJwSKzP14aPH75UMfFuHtP61ydH6J7xvuMm4sz678cyNck18hR5igtDaBjJYLOjsyPMGoDAvmJcHAgR27TwdDbJdZdQFRdBgKwGRS35llZ8Ey8sGYyvwH3IpJsP6OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=me667YzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="me667YzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 783D9C433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707043696;
	bh=vuK/a6wVVsxlRQaYQHBJecEJzzkWu0zSm+BUFnmA4zY=;
	h=To:Subject:From:Date:From;
	b=me667YzJPZUZmXmcFqFaDPBL4ki2rBwYdTcuvUjGP1QL+hVRg2OhDRCJ1z2AVJz0A
	 cHFlPhRyFE98I5/UAHCrp9g/G97cMP6tQVm0ij0u/kgQmwRffoLX56PpgU8j26ESZr
	 9OdNhHgn9imxjMGAuYgAru1lKxc4/LkxFVderJ5cln9im0/y7PKgxYO1AhTiujmCx2
	 L8gJfNfhSFBFVSu4gUs5FMljhzYH/WGhBuqXGKpUakyNHH/jkSlo3n/F0iwrBlAPFt
	 v/mJZyUVFcXD/SV+wxmpYQ1y2Bqzkri36kMQxq4NNjLCrHaOwo7EBXuojsgyG5Q8Ze
	 rZQbSPL2Z45RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F6E5C4828F
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170704369638.20032.1343956270455961688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbff80d4ace83fecbed32e5b61aa8d6a9b857f4fa5bd2c57a08374580014a4d6
Date: Sun, 04 Feb 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707043696
