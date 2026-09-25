Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3759F233958
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790309434; cv=none; b=ZaM1aqH01fS9JJtgZ4m9PPcDSLxBsoOHJrRzCz1aijahbt/i0qlQyT5w1FogVv1cfN/wXXXJg6rn4P8Pr0kKXCtg7oArexxZrzaFytEOl9hkOzeOuBroiXMNzaTBwJSiPNvlmpxTDcEEQfVWF6KerFhuFVvhbd2djQ9AOzyba1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790309434; c=relaxed/simple;
	bh=j/Cn9LScM8osjF9OnY/f8HLszm2O0Q2LV9tl9mLVl6M=;
	h=To:Subject:From:Message-Id:Date; b=Bt7e9fmCaAKo88isKmKPqVGXBUXQPhxZ0K3DEqU9h1MTetNzW+O6IPBDMY1xBvv5h0qdDesnquGx3tgsj54OylH29RaE3bCIIwSRU/wehELsqoo/wjtTJXR125mpZ6py64Y8vOx53FqpDHnYOuW3uHHrngUIlTCRWTZmLdlG12M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgUcwWjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgUcwWjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDA8C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790309433;
	bh=j/Cn9LScM8osjF9OnY/f8HLszm2O0Q2LV9tl9mLVl6M=;
	h=To:Subject:From:Date:From;
	b=lgUcwWjXcsCWSngGoO6QRAOOUsruba5Nys5sia5rSJUd0/blV8IQGrgJsewK0iI4o
	 xqKCfGVjOhAh6aYBtyRmFSYwR47Va7S/Pl2pjehciZSCTKHTdQK2m8UpiP86Hiyuit
	 8uvaaZCtCABnlFfuJIdGfU2gzdiSooYW1eFKOlVJD7zeyN3BM9/t7Jec5m1QdSCli3
	 uasARaxz2GrkZGSGJsW2pQPOr9NpDeysEjF/Dt62PmXEjvnoLDpI6rfGsKMTosQrs2
	 Ebl78gGhKoDG1Rbbj4dE5ND9YXJw81G5fGRVwwme0SKHJ3hiBBRZvEQSgu5aMOcLly
	 3TvZVSF5xyBuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA23C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030943369.27707.10920598110034696034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c87ffa7a4489b8e0bf3bd2186a13b8a0b2556fbc757c1098ebef9edba31d047
Date: Fri, 25 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790309433
