Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0CDE3D8123
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776986254; cv=none; b=n3gOIFvZHfDXBL1fKLfdubIRZmIAvmx2a1khwSXTzL+GU+LUUa523XBcc9jjY+cigYE0nbU9BGpebgF8F5v/6TWjA1Rrkpdb3e7aDQSe9P15Kv4vW3vYYchheDVu3BA68LzbsnBlcXGipyxCr5OEuolZeirHIzlaxspo30/zMtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776986254; c=relaxed/simple;
	bh=EWe694ifMlK9zbNfK2BcTlnN7++XVrN/lTUV5JlK65E=;
	h=To:Subject:From:Message-Id:Date; b=X5r0lrh+3rqQX1ajh/9UxOFIHpIDJ2Ru/4wPwSRWjPS5/MQS5bW//FVpMFziyjXEiekliw25V1s4G9FP/Jky8jJ/j9vfK333+TB1opkhpnN8aU2XO/QcLx0TANXMj0k1dOQALxyEXHcWh9HJn6KGqB/ymsfHrP+QeLe2U22M/G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzghEera; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzghEera"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC70C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776986253;
	bh=EWe694ifMlK9zbNfK2BcTlnN7++XVrN/lTUV5JlK65E=;
	h=To:Subject:From:Date:From;
	b=gzghEeraIAzT0KX58jMMR0fV3cxQeu/VSr3Qatxus9C8H+1cbo2+XATE6iqhMQL9j
	 diPN/I+giJlnRdsrehZRvKjV9ur2AJIkhQDVrAJwlz9GYnOZsXYaKsmZvscW0Zw9cz
	 kie2kjp84+MmzmM+GfzUhIMNsK/6i/8rYNZ1Gzt+pTxlPrfL7kWTO1oWBmxYZFXWYi
	 KiyeNm6RQ1X3z5lzLKNzWmHNva9D2d/m2xpsaxZ4P34RBoJ5mXASiFGr8fSB/D8Ll3
	 8u8byNlUHgGaeAWdBaxfEIuHEpRnbQVo/tLEZsiJI31IfQOIn6E5gWV/auomA07FvV
	 V2jipkUEXNA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2D9FDEE53
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698625368.32616.14505882763046173778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e66422e11178904b7a4655e73081d85546ec999aa1e94f9c49efc7355f4cb3
Date: Thu, 23 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776986253
