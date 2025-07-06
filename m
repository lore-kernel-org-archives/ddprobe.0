Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC091D6194
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751797794; cv=none; b=jvAqv9HhTmj+kWHSpjS65rHxrF/YlOPlbS4HZHI/VgtpQUUKM9Irznja8qoy7pU8Wkfxr/oAbrD95h9e3U/+zqwqMNs8nqIeJCtq8KRG8gISmW0XIjW3o121wbjj0IWBgiZBPYGaQYt1ARH1wAxpNdDN4BxidQXlHm4Wc2YOpbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751797794; c=relaxed/simple;
	bh=562mUA4iEG+NZSyywcnyOcgJbgxfMGycW+X1J4F5G64=;
	h=To:Subject:From:Message-Id:Date; b=KsXsxu5RAvyXZXpF95uSXXfOUGLXHWAl1LB1MH5ewAjtWzkoAXSjZlY3QhL+sTzFbhLGXallJevebnV4R6hmMoevtkBwInwCrxrt5JSKV5OdTmnhuL0dwcjl9ne1O1Rak3v/ORQXR05taqvbMwl5zC5hsGswCFHSkRo0EtpZ0tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHog3g1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHog3g1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F39EC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751797793;
	bh=562mUA4iEG+NZSyywcnyOcgJbgxfMGycW+X1J4F5G64=;
	h=To:Subject:From:Date:From;
	b=LHog3g1beQGs43rpHBPkfT12EKDlWc1rHPL+4ymtZnT9LqhixQeJ3GDB+vDLrYCiK
	 EIbksrkaMSmyhl+I1OFiPR+yjxNGRubKSbiCeDKAcSd/FMHyKDOI4Bru5cx1XXmc46
	 rYd3soLJxTbdf+WxAzvsnpbu949iBbgY+JrKzIa+2OQIq65+2cM3sCGj8uNteL4Yb5
	 702RDjcykDVZ2tKbwUHxSp4S7P8myG6h4mhzP4tZ1Nd9EibG392RbMK7mTKRMAs33L
	 JAmugDPlCVtgLyvDxtBJaRuasmCfYfWpUiODDSfauzSLM26RwTqeuPBLIVmtv13avj
	 uogI+OnP68DWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9076BC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179779357.19485.13922655871315344408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b20fed104522c9e3f39c48809cb1ab8ec715b7a06c6ae662bbe137f03c4dac
Date: Sun, 06 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751797793
