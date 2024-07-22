Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347F017C8D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721679954; cv=none; b=nDdgiXFyIxwVzBwN1ys10QoVbkO6spBGDmFXjdzO7Dw3tzf35RMzT7FEJqsiSVY8W2EtMWs7BTY3tBE+r4hlGzM7ds7YRMZwa6CoVNGvJuvdMB7Ri5elr1dev5EZI7LtLk15Y7e0jAYAzcrBj48pfm2yOBXEhUAR3ymA8pEcX8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721679954; c=relaxed/simple;
	bh=BqXwsuLT8dtGYj+uzjLnNEPpJ81Qqtu9P8dNLhaCnwM=;
	h=To:Subject:From:Message-Id:Date; b=RRlGmymugyaZVf1Zvd1XfLTn1oXOUkhwY8ggfRr49k2Un5ic++STm8wiBjYuKcSOuZLey5u3q7/lkQ1jkIUUE0CUqumqWK6AwKbTDJ+vqBdjowr30Dh8WnTic1hsMYp47xyIkKeGDu8Dl8g0SUkB0YtNyYOzvkRLcO3BnrMYasw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf+6AZiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf+6AZiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44AEC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721679953;
	bh=BqXwsuLT8dtGYj+uzjLnNEPpJ81Qqtu9P8dNLhaCnwM=;
	h=To:Subject:From:Date:From;
	b=hf+6AZiJUj9vhynAzytiwl+sKSi55s65wYpiL94l+Af1bqplx3OVMQvvptP2unaUr
	 COoVA5FSxfm8kumN23KawtCoo4WburA9OB5gUV+EE56lCaXJBiyWSXhqkf8Fud9HL7
	 UaDPbXuakt9aTwmQqwuy4T+G93BKMeIwgWU3Y7PIK/bL5ax0sG2i7nR36E2EPsth+i
	 IXTz/qdSHmjBcz9LCcwiEx4lOIKffTMqfInmTLE2Foye7+duHPOkdCC3qAYvaCZS5i
	 PrjP4OltZZ3AS6V68HasfMHEjFGFP7b8TJZpePCVKlYstlLXKvsstd85DIA3ROn4l0
	 ztFA3SycEE6+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B50C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172167995359.19878.17048584106681008675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf1eb152ff75acb33b3478eb3f2656b6eaf5de004c7ac0f5999f024e6e9faa9
Date: Mon, 22 Jul 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721679953
