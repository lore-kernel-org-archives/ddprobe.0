Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C67C48AE1D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779192034; cv=none; b=LNh2aiiinxsGOt8GaenyT2vvic2XEkHRdoBD1jvzl5VAuewT9sy3Ku6WSVWLaLtjYFCTqP8RqHHVQP0oMSj4SkJWyLVAU9rinh6DaTWB4voiNx9y7Dv/q8iYSoPQYH6O6DmklY56cMJ7dHrUc/txQZiwWYSmxziq79DTvws6tz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779192034; c=relaxed/simple;
	bh=5v+n9DRzb22WWvQANI5M/5j1OTpmAGbKO/w0gFLCGV4=;
	h=To:Subject:From:Message-Id:Date; b=cc2JnC5sxEfZtZ7FQxWrzt9wo6kmVQxqmrcMpZ19HIT+u6+JP8twlK6jIYEFPqlydvN3iDiYePiTDQk88XOadRifKJwvO0aIhzkeGO7J2AEJyH37oV016uFl61BbOP/63XlEYpQR0SEYAax5RLxduPOTHMc4cXOimONv9SOALWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cm01YRjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cm01YRjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE0EC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779192033;
	bh=5v+n9DRzb22WWvQANI5M/5j1OTpmAGbKO/w0gFLCGV4=;
	h=To:Subject:From:Date:From;
	b=cm01YRjLJIeyevCI9j+eY06Aa+HPQUWPTNEo+MFDK/BuHbEXZMG6gfiUCiLhnwH1G
	 FUyXkFoNiYSXEbfYtXZxtXgSRoyhpphnAkBvn2eB3OcV1HQmX7QKYraGWCsj/od8dn
	 OVMLTrWPlAK53uAvz2HmCNExtO+hjmYWbtxV9AaxsGtHzROCj3yAjUi9WM0R9J5iIA
	 MU5re2vt02NyiqwcRvfWbNk4jUwX3HmHOzVQZ8ntjgJoOUXh5bu6WrqroPks5Y2V5B
	 /U6/qFrOcc0RhEhSSlpO/8VQ4GroCSo/GANP40JLFwqIYD+NfPsPtlflcenvENVFTO
	 tyCUKDUts47fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB2CD4F57
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919203369.16041.11992012808667778526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39ef07d7ab447d83ac2d5a4f2ba6a6d8a57fa873a239773eeaa1e610eda0275
Date: Tue, 19 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779192033
