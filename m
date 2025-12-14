Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B527E110
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765731774; cv=none; b=kPRFkVXabDhE8rHfpPeqqhX2brb5OE05nweCZv9vSEkaRqvZ2ajBZYNgyqlQ6WqLzwMT90/rq2vssZQF3dpL3CH66zQguH1RnN0X9RX/lQiW/1cPUWMmtU7zXIvhPpPN+4mdHTxuZcLQ9WDNMMpEyhBWNf1FGlsKV9NYDH96nv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765731774; c=relaxed/simple;
	bh=Knl/zcI0Cxun1wJI2CWMFVko/d0uFMZ8l/yXwRx/Bac=;
	h=To:Subject:From:Message-Id:Date; b=Qdse+J+XkhmVLk8vVSLDTKVyhMS7Honms51ow9Sc9OyloBktyI5dyFnIgN4m58nRfxIqeffaf0sIgMoskKemQhBOKZ75D1IxsY4FfxW7foRYnT1qJAY+cnwBlCmQpKZWQxUVcMJ8edab5wivqukLGGciscQRBQlU9kezX1BbpSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxQ8dKli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxQ8dKli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97F2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765731773;
	bh=Knl/zcI0Cxun1wJI2CWMFVko/d0uFMZ8l/yXwRx/Bac=;
	h=To:Subject:From:Date:From;
	b=RxQ8dKliD1YtsY/uxc0yUGzf81MAuRVUa7aFCFazF9Wdaz/joFOR3Z7shn4hl8HEp
	 ra7mb6Na4FFl8uGiJKo9RzmG6d233UdPfkIn8gxG1SEJqMfqu8bWv7zLz/6/vT+9gA
	 QAOGaiRFNZ7ZzLstDHYBPw1CdgvkyZAq54rJ4nTmODFM9S2bZZQ8uDuxeFwqukcw/p
	 EK8zoXLKARIz6ElqlbbboXLy8X4vuD9zTRyOjFqdHE/6O2h7HEbvF6zoS6lAlZREZH
	 /NPIn4Nv0IjWbvAfBmqodsQkh8hmyQu/5LYsfUlSSEigx85kVXvI2v742S2BAZwa1x
	 vTP4YQSwl2/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9663BD5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573177358.29693.2199736111954585362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5f9fd21ff8810e2888786fa86b3f884e1d3e2f58b3ba0edb21fd08f4b06999
Date: Sun, 14 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765731773
