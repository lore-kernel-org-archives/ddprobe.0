Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DE32C08AA
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751530194; cv=none; b=PimYPZZ2jfvW08MFX9fT5SLwj+Knk4v3bWWDy5qUySd63qMGMO+qMrX9NtKm+hHtR3tI/lqC9b1y9GygWsr0V+g34LQl9PfeboANYNtQ/JvglVdBp9+ieyfXE+/sdMNrrTchtJpy4ZwwkAx/tkIrx/WkThgb5DdjUd4dJL97O14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751530194; c=relaxed/simple;
	bh=89eNLUBHUIB4y/X9qbmx+L/hqLr86mPhCqp+QBYBehw=;
	h=To:Subject:From:Message-Id:Date; b=kR9Q8non3n0AVw1GGr0AxjyyThmojd7VWuc2Fx+Is5vxolTo2+LZwMOm9IbbnknnT+MlhyOybZ1vMS76dOsXF2Bupk/jHYriL2NPI5ucm8g6hTomfnNbv4uH11CjGJQRsKsyP5vV9y2X7qlSfIr9YRxg4byi2geLRPEJrBXDK2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wpud32iQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpud32iQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B0FDC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751530193;
	bh=89eNLUBHUIB4y/X9qbmx+L/hqLr86mPhCqp+QBYBehw=;
	h=To:Subject:From:Date:From;
	b=Wpud32iQAt9jtngov6whzcehCb4jVB/wPDpYbaBBUEWxZFFrNN15/jg/YeepahgOo
	 k8v2faL43BfHeao02lOcZb5KhrWLyZKGxgMSg9C8Qnym2A8i+UCIsUCHEoe2Zl/oBs
	 LeBti8tGrLN4rfi4U+u+c3ZmjShJVpI5Bc32DNvPhm1NnKS6pvMAogvCrTIHJiSWz3
	 jZUJDZ3OdgPgsG/CwcGYSXgrEINDEyBGib4UoszmGmmGLBQs2VZMA/cPK6eUxCtLZZ
	 zD+NVHQdfiK7wK70vymx+lT0bmZGtivddNV8+QszW8eMgfT9LnKCf15DEDSm1mpLIS
	 lRfDxpxJDANxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E782C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153019357.3713.8859399445158630833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c7b812cb7ae0e01f5c74506a1c4a14a10348f0f4347dc8a7533229bbc0ac97
Date: Thu, 03 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751530193
