Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BB1350D4B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768370034; cv=none; b=b7/D7C3ahPKkDEk/MB9CGPmbFaCpKb32Hl6T5PJgSkLYloi1vswghiVrpr/VVFDPrB4BTZL3yKwoEiz2JDVqocU6sVyWBh1zwDMOl8gRn64Cm0A1xd1fQx8P0neCE2CXtz7aTJxqi8X8jy7ghZD8UxpKsj91g/oQvohH8AwmntM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768370034; c=relaxed/simple;
	bh=ebN6VgZiU5YdoOe18XGKkXWFaJTbaFXAQ1WQ9D2ujVk=;
	h=To:Subject:From:Message-Id:Date; b=exgEvXnduqXml59XMR46J7gPtONVsn1o9FDPeyDnU8wGQ8oAXW9fczs//lzSLArBd/warRCtjmHx0EgNusIZvpZkf1BTJ+YHxiSGGPuRI42bz5xmzw2Zx3yqee5xTK6BpPpR6Y3tnYGIGXUBXG1sOL2Ghs1vzkH9QtDCQumtrho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSKiJUv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSKiJUv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9EFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768370033;
	bh=ebN6VgZiU5YdoOe18XGKkXWFaJTbaFXAQ1WQ9D2ujVk=;
	h=To:Subject:From:Date:From;
	b=iSKiJUv8HfXhyHNXtT/FpNBNAJmvNL0HRAwYSqsnNn+YAewXGKtiL2kCHRHQXdrFi
	 xOxoMtlr2HVG78ZxsXgIRNIMnadGqNSFdXgBpapawCRaICcQFHKUTjsjXF6kmLLbfQ
	 jkbE/TyR7Io/m3e0IK1crE3NFgOd505EHqSf77UMOkZYkNsPzc3S5RH/JxtCmGLJ17
	 1fSlTUwwChWYcCzljYQXAjENzAyYy3RyAFeTVsaU07PfpvJTNYSnssHnGrL7daBl+X
	 UZC3Agp1KAcOcFCXjyXgGXIEiqC4m1AJwGYU5yANnozTkd7WyafQtkvwm65QuL2xBy
	 yxBLHyZ1NQrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC5BD31A0F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837003357.23219.106601879048143929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b04d494d3992a189c3a0cf98d198fa0d6a732a0aa93a423ce7971b64eb6642
Date: Wed, 14 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768370033
