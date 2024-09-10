Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48105137772
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725974754; cv=none; b=qRIrtmd9K8RW1R1d00q3W+4F/QUQoXxryqxuz6PcL4ZTNk8u///gUhh09Oy30yr59iV0TjxY3Awh466CYVsstlwqFWLqpaMJVa46FysmdBFt8mbJ8rla/JwL9ZHK9LuztDX+QJ2bDCAcr0aiL9SYlPiQTHFm1fn5C/5dE+m+gaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725974754; c=relaxed/simple;
	bh=jVXmvpLAtKBHU4KKI4mrw262z/4RXYowb1fNIHOPOUY=;
	h=To:Subject:From:Message-Id:Date; b=J5h4FjnWnn1Ie011flC7a1xWQArgsNlUCVjaAaDeTgYpkDQbHqKMfEa4h4j7Gln5EWbS9yTKEBXH1dY4xhAdNQYwTRyrfgdj/j9oMXFOL++EMPP5IgRucwpN1+UIchuJHS+kYv+3I3ZtcckK7aQe8t7Hh52/x9MLAWHio0Sd9AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5KiMW7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5KiMW7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDFEC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725974753;
	bh=jVXmvpLAtKBHU4KKI4mrw262z/4RXYowb1fNIHOPOUY=;
	h=To:Subject:From:Date:From;
	b=t5KiMW7Gh0Sg601AR5MEl4qVUKlsx90zUQHgZc96e6eFc320+Le4s0AMuK62KRptr
	 bhcMT4MpF5KgriCgsfwvlAedday5K5QOul2kbBly+WfxAvTqFKDau/9DVaJ85zVLfJ
	 WVVAf6Qs2XBvSzbz1+pIxzmQRH9k2iLDDA5eFOoQO9wBvZWUQVgQDZoM1UO/9niLXS
	 i6+CQArbzBn5kV0FPU7yXnj7P8ft42S0WcLPP7qc1gXM6w67rlLSJp9qMepFZRm0Hk
	 LABx9GCHDac6OrdfJAmaO5TcOzKGruUziSm6IRgZfjn42ngUuFLHqNhS3Ph4728lYC
	 2Q8ccmDcqvyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA779ECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172597475368.1715.4709511259393278183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5494cc1dc30e95c7aa913e8e32f6b2835451e3fe4aa2435950396f823ad968
Date: Tue, 10 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725974753
