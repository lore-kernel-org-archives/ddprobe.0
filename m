Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7E82CCC1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750808993; cv=none; b=JrgOD68HDzvl0jjwZNofyk4280i4aaFArW+A/j5028SKoOTw6vfESA3EUrg4Z7iVEcYLM4ECQ6pdzgtR2CefNuyrQy5cJ1OdqiyOzqZF7sfb6a6rAjCJg05DJOTMkOCscYBzERr88Qz4LeK1tlzuzRri4gZeLAJgikwJLVaVPIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750808993; c=relaxed/simple;
	bh=EtY5rs53P5DaaYo1q3kyUNKn/H1Ic6UX9mbsuth7Nz8=;
	h=To:Subject:From:Message-Id:Date; b=AuohB6qpXNXH730mRZTuUfUaUj30upJc8kepIzVokFHgui8NxN5XAfGVtOTE4wj1k3POm/uc0hQrlyP+10xTGNl6ZB/vaZ++A85QE3bx8qOwbNDdRv6XL4OiOWL/KRFVMUUyEzLnIFjgnztrsngKMYQfPZYu5GO4EK+c/dD0MfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXm4QNcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXm4QNcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E16FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750808993;
	bh=EtY5rs53P5DaaYo1q3kyUNKn/H1Ic6UX9mbsuth7Nz8=;
	h=To:Subject:From:Date:From;
	b=CXm4QNcSC0LlTk19IHeJB0fPVOq1kEpkbdhT6oQrMbITzxFNGZBzK7miH/4ayRTBN
	 84CSU5ZltaAdpJz0LiH31RS9c00x+lRGAU/FGUYsXaZd7j7kLKghq3xw+S5xUI2fhV
	 R7fTXLlIIa0lVoozGq+aRqw2qfrRBtpxsxZSejnY2sqSM1UMJgOUahKrs632/VpxpJ
	 qF53cxMK2zeO9IVymfNW8cEjLsz1G91KKiVmjFx3koL7YZ2Rcdd4XLeEc6OXwPV54F
	 /52xfb66me8akK5ecAe3ZbuUUH9/5fsHeD1EssHQwXvqdjdf4poWYv4o8V3LnsPeSQ
	 8fRn8iMxcElIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECADC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080899357.4544.8312628109603701150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64809456c322fb3dc0c8c881d69df8bd154e445b077627f14f150d489e849e07
Date: Tue, 24 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750808993
