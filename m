Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA693A0B3F
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779792754; cv=none; b=X+7T+jh75KXsiudW6u9MUgIJC9YicScdVCpfLkpshfg+Iupc2tgGJ3UiPyAidFTXURgg81vHUESltLhOijHn/yKtyVJyUB+dYFTI/oi6OaEyR21h2hgj8uM7gZsKMxjr647+Ur6YmMllyps/d4rEhzsx9/FQgUrp+y3sayajBtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779792754; c=relaxed/simple;
	bh=eMQ9dZ79VdbjBPxSr52c3M04tXWMTXm/HmScP9zmMXc=;
	h=To:Subject:From:Message-Id:Date; b=MFCdGoP2a3nlon/mzSKJxA0s7k4WWMDsZSadxLgYUSgun6gkhzPabOpKVsi2iSHr+mA2MuCi9VcdxGUERnbvoh9+DRJEK6tXSIZ/UCGPkX8YlHI0W0glxsWsc9BCVw4K17xoRSyLL1ODTxjiNtjtbU2OvplO5AppBBkPmbUV+nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRI/nrtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRI/nrtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB74DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779792753;
	bh=eMQ9dZ79VdbjBPxSr52c3M04tXWMTXm/HmScP9zmMXc=;
	h=To:Subject:From:Date:From;
	b=PRI/nrtxlz2fGslcBpKPKEn/U1CrlSa6m1uvjhbMqBbUx37I387AQPfxz78+Nwxbg
	 jbDB1IH8nt12rNbOJo6m0A+sCd/nWIbl7qNY1Jf1C1InbIqd2ju+us5D15yxZ6bxb2
	 VwpjYvbHG/cCaWJNesa/15oOi6EnAwpR7fin5f0ExAufSYtyg1ityctUbIfzJ1Axtt
	 o2wr6WPvtvTRcMinvQYVfH7vBPSyK4SdjWLvHAs8C8OKbQg5sE5Ew7hfzfcdHuuelI
	 DBvqcEo9hPYiwmhQgSQ+NNEFPwEjywmVSjjfiM0Mzqek33ehwMclYIsgwnsCCQVqFl
	 6Z2Y0LPj883kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDEFCD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 10:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979275370.12227.14639021574344809263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a7acb07a3dfc8940b0675476d14be332993e3fb495306c4c6f565ae2e0402e
Date: Tue, 26 May 2026 10:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779792753
