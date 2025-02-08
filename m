Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416991DDE9
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739023556; cv=none; b=cyVdW7FAIe5dofuNrT/Ypa8HYExqLTdmBKCU7ju3gF9TqHfhYfScKUQw1/DNVO8wFnlAxPYu4dg579ZUmyu/QBVsboTZ5wexpq1XIReVbO9rkY6G/SKAromjpH7SuVDoysbeP29oZlE2F5s0IhjNlABcCRB5i1a3UyCDFmlrnnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739023556; c=relaxed/simple;
	bh=6hrWTl7ROMIHdQFDqETU3H6DaK1ceon6w2Cn8ErFQds=;
	h=To:Subject:From:Message-Id:Date; b=TVBHC3Di7EbxEcrhzd1GcWIA6MJblAjFEsHSuIX6N2tIzheYGrrA+S3UWMchrMvMjwV2CWz/IPuZBig9mGbZpm/Iea8YDS/neOT3SH6msl+qpAmDx8Vawn6ug3mFxaBzLxutTCvbuQvk5WapKEUcpbEbSi1CZ+QsiL4fz4zC77k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewtPnvNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewtPnvNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82B7C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739023553;
	bh=6hrWTl7ROMIHdQFDqETU3H6DaK1ceon6w2Cn8ErFQds=;
	h=To:Subject:From:Date:From;
	b=ewtPnvNXBaxRa0s6X4m+AruD8qxBZIButsST7gv5Q6UKFD/UhrzzmblWEW6fJ5qVm
	 VKPOmdg3ijei2JGEfACeEg2VtRZunguMHa3jG2lcyn8wYkXRsqYQD8U6smhJKC6ZFT
	 Oxuhle2k94CAj8T25b34hd7YjsJGpnHhIbpzqPdXWX50TJEyypG+NAdJfzoU2rhtKC
	 8s8q+/pttk7FL7k2mBUXTQgwJoijTtJNoTfNicXMlqMKHTuSeVukWIH1KHzXPUwE+/
	 4QNGFAepCGtU1mTSusFO4dUT2RwChr7Ox00pITNLc+QOepFbOQU4dyM0Wh3qoOM0yG
	 lG1q97+VZs46g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924CEC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902355359.3120.1578109789033282830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ebb58c9176385a8878115f132ffa656ae01c86d5ab537c883d5b2e4155883c
Date: Sat, 08 Feb 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739023553
