Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6401E9B37
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781189194; cv=none; b=Q4bq4eCC0PY2vb5DTmhE3QaDF+6pkFg4NCh9JwZ6OiFUX3ruK0QcjINvqJcY8VSjdzVBgO5nbcRg6aLUv+PsQ4Ep0r6XvDDodBKn/1WFHWs8QwpybD/2Cg2yc/2LcHuYBY+aw8eoD9soHp/RvpRdwnVT5+IoSB0U99LMtX27EsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781189194; c=relaxed/simple;
	bh=6U+SoqU4+Px/pa53Rtl5dSlgNEqQNzlVSsGpLIUluMs=;
	h=To:Subject:From:Message-Id:Date; b=c7L3O99H3b+QxPc65YedmdpSnkTHWy483oBXgo4QX5bNTDphtypHcav5FGBNbtP7wWYpXzG9XrVi0yMT+5sFh2kvuzHQRqoS4yEbi6UedrQx3AiX2eqzbSyeMJdqHdl28yxymtrNBjRXN/MFE7To9xYDHHsDH5IE4J2/+itk8D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9oHFTLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9oHFTLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF363C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781189193;
	bh=6U+SoqU4+Px/pa53Rtl5dSlgNEqQNzlVSsGpLIUluMs=;
	h=To:Subject:From:Date:From;
	b=h9oHFTLt5vaYWm2l9LVosEcYjodAbjnIY9kyiucgwCNX8JFGuXPL6u4LOQjBuovp7
	 noaRTTHIC55WK9eUeQgRyoww8PdCFrduVI2nNqJ38X8ET/w1JqnmV6qTdc59N6rW6i
	 ioZMZNtVUM0UctO7iWQjxC0CvPM4KdLs3iZoglnRQ3VjYsj+AOrcOE5dQz/EZ9FyWE
	 d38vuhdokM+iRaChzKmKBLG5td0lCcTJmRxfFuCYEnkEQtv5GVjTD9Vj+KuXX15fRE
	 kd111YiUvCiWsSpLTF2Md2JsEA14mUCpYDR5zQ60eSvOvQg++9wb99IYWzajTjX2Af
	 D2ByC8Gybp8Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9615CD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118919368.24704.8708949266718558875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db86de7a79ee6c3134b5c3824c388a98d2bf2e7391aa341311970439677c1d0
Date: Thu, 11 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781189193
