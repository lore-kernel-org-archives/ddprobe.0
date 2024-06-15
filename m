Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A52FCA6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718470703; cv=none; b=a334IjtyzvoxrCw7Clxun28No8bJl8Nl/ZDE/Hwx4eu/LO4w3S39nDplvvtejzo4DFfaLhQxawP00ULNlxt2jxACpCzYNgQOrB9AO5aUVF8AeFyyBDNvxH4ojfJUtmrK1MhKIytGClZgZaPa1+NlTgmD1aUV/YG/SV3B9ZbRpMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718470703; c=relaxed/simple;
	bh=aHYnJlSQKCXZtEveLw1Wtxneud2Q/vxfwcP7pBJhFLY=;
	h=To:Subject:From:Message-Id:Date; b=rKIOpstIkJe6meg1mbr7R1UObVQCj+Vp57vYPhv4U2z7/nMSPafPMWicBNLChELwKeyw6LetWFG695AKTdTR0JY3ZDSLW+ta8NhNJR2EKhOOE4JMh5bxR9aBLPzj0KTPIJkrnd55jv2SvnVZznTcJcASVcYHxSh2TjLAecnjwZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNJbOedM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNJbOedM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 017A9C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718470703;
	bh=aHYnJlSQKCXZtEveLw1Wtxneud2Q/vxfwcP7pBJhFLY=;
	h=To:Subject:From:Date:From;
	b=eNJbOedM74vtgvAy3+SotAYMGNCB0iKA4n9uWRJfBaHS93b6wgDGq3GclR9C514fB
	 5a5a5Lw6NdA+MTbcMto9eI90MCMAvY1TWdmiM+5xGO6ohqCSdq44IQ+WwjLEUcCBzi
	 /yZksz13stNFttnIGIvS3gxR+uO6+ISvXSn3w7wC6Y4/QzIBRfPsmpLY70YLg5qt8l
	 BebrGKewkSBz08Cs8n1yNRRpRRPHgaUncGFsYEnIwV7rYqAKFc+iL/gyYqZMrWJOKq
	 nGnlYQkieEjxVfAyUiqAMYZapPtfZb5tGDV7BWq2R6Mylt68Lylp6eZTC0C+iKhVpO
	 0pyWZzUMhpNdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA8D9C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847070282.9257.12283866155587000307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e532e046819cad22e53645c2414911e6fcab72813afb0ac6b51b4d2f8de7527
Date: Sat, 15 Jun 2024 16:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718470702
