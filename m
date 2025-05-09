Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F7123E235
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746815393; cv=none; b=Hg9LmZCrL4qN7D+A48igQkGy/zR7UceFecME208/VobA4G9vVhBzJWsOptZq86/hv1GmzQIEAzuW1cgA7m7N3qtOF51ttIctkLvuQv109JNQCCXQk1YCydjaE1v/uUDQbkQmG9WjusCoz6hz7WLxrzRGrN7pK52lOKLYkp99u7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746815393; c=relaxed/simple;
	bh=pLZw02WWB3bt527IAHtfUdI5p4cxH/dAMqJmFfhIbH4=;
	h=To:Subject:From:Message-Id:Date; b=rTH90/tcZBFvq+Roxuxg81uc1sJX2xj4eXDTp2YckWf/dofhVJX6rgABiSC27qJMOd9Jv7B6npsvYztrB2rRks516CDnamMFiBkBV/1VpusMig5CoueNUTghpD5Czpx6VDByD4f4+Re7ccrblqCBd+Xcj4EbaoYlOfiXoHaqpSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7twuEi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7twuEi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746815393;
	bh=pLZw02WWB3bt527IAHtfUdI5p4cxH/dAMqJmFfhIbH4=;
	h=To:Subject:From:Date:From;
	b=p7twuEi7fkN/CB5eJoBrwsImXApmRXbALXDCp7ufyvaU9MsA1f1PXTLzYTKLUOY1D
	 RGpi0OcxBZ166FodT8rKHZbTYLO17CB+0aNbUBRlyV3y7IuNHpzIfCDB5SFzhgLbR1
	 uROZtOR0E5UuXwi1+cE9jySMIXmZyWdjeSxmKO5Iq+M+RMQk2x/VJMMb7kNu+LUsO5
	 spM9HJU8mMpFfBpgIpzo4QcfQnSxlsK13lBfzvl/nnqCf9l1dBkhlRlKloBcSkLiiK
	 uyrX/KqLZB4yqqnwiw1LeKtqdhV6x+T0m0Jf59cCUtOf2GtoMOHiBAS4HjScKEUwXX
	 XyZt8i8Job1WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A3C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681539357.17969.12743053924246175807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f643ba22c4b73ca547ff77971fba8cf9c882458d0493c6743b681519ab53aee
Date: Fri, 09 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746815393
