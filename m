Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302581957FC
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756696194; cv=none; b=r9yxFpxWsmePC53PfydnSOhdgaCzA9A0AF86GeaD+N3+Ue8zfKGWDidwhEccdnmzZF8Ktw5YsUBjhEZClMfe69ZQBDBa1H3IzrsrC6uY5DLH2kHUhnBLmY0NEukPuMnTLWk3Y6Ltgjbt8tvEtm9kCodsa6X8RAl/Wgx/1vDQbu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756696194; c=relaxed/simple;
	bh=XH9Ogycutfn4PsahO67gH/t+RIECLYJRQMTXYTQw8w8=;
	h=To:Subject:From:Message-Id:Date; b=Seud+sn1ijy3Wh1PfyK2U5msK+sCRk/jMo1qyWl1Xton85w3bAHqoCIWFm2uiHLGzrYvGx2eB10VreK0Jz/m8JCd12sEF9+Y4ig6afxIH7ZdutX++5PW5UxJ/TOxXWnyqL28x5YDJCEj4GOStjdpzFPIYv+a+pg9x/yzDZcOVDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGwhDyaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGwhDyaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52CBC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756696193;
	bh=XH9Ogycutfn4PsahO67gH/t+RIECLYJRQMTXYTQw8w8=;
	h=To:Subject:From:Date:From;
	b=EGwhDyaf6SYvoK2HzM/d9iFaYRLYyh2NlZdcNnEMEiSTBaaxlMkuZrhOsxZOpq6DN
	 ZDJHa4NTLPOC4D1ISy3gGqcfYXE2OEgn2nIkd3smUs02b85evcB2m3RskybAdmQeXS
	 y//sm7y8hjPjAr9uqqoy6CkFz1OO/o0AqZlzXCTq58cy6BL4MRi6M4YyvmONpZCa6i
	 92iOCT6SYMXOsRu0QC4SMeok/uG9/zy4NwkC/bRfI2dojKPoRG8cvDUFeQpZapXZpg
	 9Nhrr8IXzijGJS/rDHG27YYtoSK1AD0Z8sNr1ohRrsUwOX4/GH/cceEnK4Z7pK70SW
	 biDtF4fRJoFHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EBFCA0FE8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669619357.19294.3244665563831287267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aa101c3fbe40294da5187e58f0c247f400b529eb2eaae31f73eb26aafe996e5
Date: Mon, 01 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756696193
