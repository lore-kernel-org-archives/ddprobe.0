Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E284409123
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780577074; cv=none; b=otnGyo3W8eoU0+LKF5jfRcQioBrp5yonfN+clw0fq/XbCdWbF3KeKXZSbC5U40E+FxaLwQzDHQG3rOGG1zMQKFFCdOlMgn+EoXGQcK4Tmpu/9zd7oZIu+ExHSIi+P1K6HVmSdPCPAe10pvbkstcPkMcghtZT+PlA+II+GnrHX5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780577074; c=relaxed/simple;
	bh=lLPsfCww4S+L9qH1DrQtRditRdr8LB5MfMPtH0MQJgo=;
	h=To:Subject:From:Message-Id:Date; b=sIcGZQgc2XRg1baC36GPsqndWUKpQyOOGt9Oq8EQnW6vh8BLU9zz0E9+o5cipYUNsF4dBeAno1yJMrM+rD1+KOw2rlR0Sr5uAbUTP4E8NfqvtBGjs3LKjy/K6vMVevbui4cU5eYiRBf5fq0KDjNBI7ua802CxgANDf/wWFYTnMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mX64Dn8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mX64Dn8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43AEC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780577073;
	bh=lLPsfCww4S+L9qH1DrQtRditRdr8LB5MfMPtH0MQJgo=;
	h=To:Subject:From:Date:From;
	b=mX64Dn8GPLyM6dDJiONEcXJ6irI6vHugD27D+ruTXgFCqyFrUdpXLV1XQEoZpaETt
	 Oy2SNJDaFwcRp1elIL//m+zy7OHD189MYqgRRegM1BkrRBswgJwbVN5TfCXjdBAP5z
	 igw6Fok8mnKSb3a7+hF+ccV0Mm/t+YYQL6cm093Hn+VibcS6VuPiS55RPb6EufCfPS
	 y7VcfU9t06L09DhfJDqXkVZAH66EkYdu5/h5i1stfw0/xe5QuNgXxDkzBw6dGdcaMx
	 ODHkFqMZBtGuEgqFJIguoEvziPVCgWDnY3IKnTIwkNM50KV+F8HTm1vtChvggwTVKI
	 l3YIEuPxcpRDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B46CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057707368.13946.15807166005992160833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05d846a7065134c3553ff624ae2a5838778a38489bc269993aaca3688a9ae32
Date: Thu, 04 Jun 2026 12:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780577073
