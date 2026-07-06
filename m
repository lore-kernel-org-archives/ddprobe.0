Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B9640A95F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783342714; cv=none; b=RMVnE8sPIJ/cTFPGJIYKqjRpRCndkq5EF0fV1oA+vQuDFly/2aiKyKqwb+965D90lBPdRPqygDBvL4x2/oLLneF2yf8zaNk6d4JSHCvkryEp6yY2a2E8cY5d87Gl1LHLy4r0QNK+tDg6OXpcY0iQ+HBWh/6ZctHZ238Eec4lT6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783342714; c=relaxed/simple;
	bh=hkcQe2lOugkJYkFhagMQOLUwGDw4v2LFWHmOKOVCCc4=;
	h=To:Subject:From:Message-Id:Date; b=TZLV9rT1wSkQvSW5wGUQWtQMH4vnyzYTnC+wBGu12yge8DIQ0RHSpzr5385vzY/qchH4Ft8XJV5OeOYlHxRtPF1NBKfZFr556SsSm/L4wmYbHqwk/x8y9/kk0YZfGHImutU1gPZiC26D+5+1jJOAr8WMF8bvagbrEUeN1aNuxCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zyz3fiwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zyz3fiwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C2CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783342713;
	bh=hkcQe2lOugkJYkFhagMQOLUwGDw4v2LFWHmOKOVCCc4=;
	h=To:Subject:From:Date:From;
	b=Zyz3fiwBoKuOQHypzUFvyq6vHo28lqvBglACK2s5VqozBBeea4CJw0hv5GEd7M59G
	 z0s7AQqwpDCLZb6oUp0jNBzIGnL4dA12Ypa8XlPY4/zqe6AvLTXax3DeTkMW/kobJO
	 +REdlgh7SnUBT6x1YZ2XVwYDawvQRbkg4j4gHikmu0orOuCDPY9qOnqaawrqypOqtR
	 lG5LsyxvWp9D9CEw+4yRQU+JcN5v/fwjNjENrmpgAF79LDo9XRsr9L//8OsfExtv6m
	 WAZ/Fo9Z9gDwa7D/WW1HKYjBiYR0hpWh3C1eyt4AYkIrBvnxo+6HC8MLPWd2Ks7s4A
	 AfOOxblsFCOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDD8C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178334271370.17522.13740879498120373100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b367d1e962e8216aea6d4d0678c7c15295f325f8da8d15e13e8150e699a69cd0
Date: Mon, 06 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783342713
