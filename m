Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D11CF9DE
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712023097; cv=none; b=n1KSKMtp92RSv+9Xq7+GrhZflxFQWZ6RoMRS13T1bAGETZp7UnaMagH7n7t6jHfV3b3t+U2dRENKzvWbsWRVkN3mMSuQbt9SsHYOwQS1rbZ/ddX0cREfguCuSHsOFZEtBfUwBfcZ7pPVC1rmi4gvNF0H6fQJCIM3VeUifuBmR9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712023097; c=relaxed/simple;
	bh=XH5gouTP/1EOw2jV8gPAaWTDMLufLyima0DALGRr9u0=;
	h=To:Subject:From:Message-Id:Date; b=tz7yB+V710ZuwcMgjtGzB7PyHN2bwAfV7bZ8KY8p6YoxlVlZqSD8WRtifY7b/BPdWjONpS9CKV50hZ11E7k+FwDXTmyGNX5VoHsplaEeR3vrkUlVzKGfmEyi6zWtTFzT/wbULbtjJKaAvPWdP9jYDSKnLgZzay8dFqsXbL07E3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jofhE5a5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jofhE5a5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9756DC433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712023096;
	bh=XH5gouTP/1EOw2jV8gPAaWTDMLufLyima0DALGRr9u0=;
	h=To:Subject:From:Date:From;
	b=jofhE5a5BEb2tjeVbh4xqfGwDs1kDAHMXY6GM2KOAWZa5nervToWjojEHIMRdAzSK
	 uv/mD4mZY/QuA/jXzGKuiKTYk9ijDMGhOmxyc4jiOFBmYylyio/MShKs0ibpsjOM1Z
	 2sRDF4wYE9A9xjon5Ej1iglys1iTHUQ/yPcOssAQ9ZikvU/9Gt4NSoKYSZ5aW2y2gL
	 7ytOGvqrRnf6rtnyjn28s+vf8e7tjh/eLDkcenXFOG2MQSfrwZGDEQ8Bvw2o/luAdP
	 C8zhMKG0auD/xci0Rrfh/eGJ3NgPAdyaqWroIBB+23f3k6Pmc0Kvmhj4KxLCgJeOJ5
	 Uldtt938JRfzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 794CECD128A
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171202309645.12801.9990528000688019623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d05ec6e003ddb97e84f22715f812f3b6cd818c002d049901624584bad064757
Date: Tue, 02 Apr 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712023096
