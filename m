Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267A7233D85
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771571694; cv=none; b=aDUMnZhRB2CEU/8N0InP2bm60n1xSgFZ6LbOaNTOEz3au8fTPm8jUXL/dbvAmlOLnczyacYb00uJolltnYKdjol0cCj20S4Malpptn5HCCD6X5cXg/t33wzrxeIuL97py8a5alCNnOdxkE/8NqwKkBwuydccMP5cgmAQedxO4FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771571694; c=relaxed/simple;
	bh=erZocQ6D6QPmM6zQ2dtQ4jrgitN9cPeqdlscJrEQcsQ=;
	h=To:Subject:From:Message-Id:Date; b=T/8CW2uHxlcJjVMrvuUTcPc5vMapy6lLQtlaiZV6kgfVDSTIH82w6EDkstLKvyWjFn7/XEBvwmWreMGIAZISPpKxxyvbF5X0v7YXEHwm3EOws2p3dX3jGSBTT2MHnNBq13HpEt0buM/ELWriyc8MjFcTQB6DA5RFmG95+75Gg7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWQlZ3Q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWQlZ3Q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2694C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771571693;
	bh=erZocQ6D6QPmM6zQ2dtQ4jrgitN9cPeqdlscJrEQcsQ=;
	h=To:Subject:From:Date:From;
	b=QWQlZ3Q51nynAYEKQDAHE2j8jFmkWz2AnHlxRlPX2mEIpV6eAG+mpDu823hVH3cnp
	 8v0tofjpN07v35aCSVzDBy2mL9eJmlWZXCr3+shZXl9YezgLEwZjBasD9lmN2IyeuO
	 Y2k0pbLD3/8u5OkBf1XEaqjiG3//SvFTBJ9za1PboUsy59XOaq6wBVDij2UeilN5pG
	 EVLmKxSQ7w5zvvAUYL1sWMZ/scE7Ai+niixS/R6nGjuEPnm3GdkrLKv39E0OWg76Xd
	 +VuYOB1Bl5QwUH4xvTwmU6t9fHhCO4va/YBNeyTZcc3QMIuL5RnDB/iGaoaUA3X2hq
	 Gesv3Z5Tt+iUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CBDC54F5F
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157169362.23421.223428011638037534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799461353782a4827c8a8f28b39d3ab2afc5d2eece33aef75fca13fad5c36815
Date: Fri, 20 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771571693
