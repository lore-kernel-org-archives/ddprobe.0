Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4261846AEF2
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787589034; cv=none; b=mYE0Vs3tilEaEEA4IEPKfMmK1OuDcEXH/HjmNXiUGkKkA9U8PYuiVdVMGUnv7JsJ2Fp+EQXy7dIi11b7zfEwbj8eIR/8sopQHR3OPz0xYdXlBfKY5s6Br/T5KR0sjf+jSD/EpzLahhBgLLiqbi6WTq2ZPis/bu3sWZNrK3X28z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787589034; c=relaxed/simple;
	bh=QH6OttfmvRB9Le4DM/IQRL3J2wcq5+d01mSDYzhYX3Q=;
	h=To:Subject:From:Message-Id:Date; b=TbwDNzR+bCbneGhaJHGWtxOZTV+HKT7ykxTnBCQTvGVl0O4EVJjGvrFe4O1C8OYagA/gZ+dcbOaQdMv7rnmOzXZ+naDSLwFBNvrylo5uEGkOYre8sSmc+SveO7dksv+5GmeCKQ6mhdVxPyyZAp0ZzFEhvZUuo+wCfrpo5I16dI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbHgT161; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbHgT161"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2A3C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787589033;
	bh=QH6OttfmvRB9Le4DM/IQRL3J2wcq5+d01mSDYzhYX3Q=;
	h=To:Subject:From:Date:From;
	b=MbHgT161t6i8eVyt8zhkW9XZT5KWxVcqamyAD3o0dckIWtgqKTk3eA9MSYdfJTicl
	 T+yCIJjnZbOLPBzQ1mXY76kToIjqZSMqOhZ9s3bTLle40ffkF8SV9ksyyXfatzpncw
	 Udi1Eld7x7i85P1Cbb8z2aF4RCgJjY1br7zB/7LtYeLKH4zeqgtSLgWitu7We3urLV
	 55+ApK2Yw6M1kz1genLE2lPASsHJF4rDdL+SWkc/NUyx+f4+3vjKDplvVDwV3QV6qX
	 hoXi5DzDkvbmliDp/88mg7NQE+G11ijSDDR5Q7OxITcOOsIPKWln5P8xigCcr1RvcO
	 CTdTZ/rulu3bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC030C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758903369.28102.9984191752277247101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9c26eba2cc5c5b3dfe23788975991cea8f61bc60ca7f81db5a2dee8739a5b6
Date: Mon, 24 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787589033
