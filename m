Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE341E8337
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761975594; cv=none; b=uW8HTooL4T0HVPq3uXUIvHAGleo9Vs3ojFOBywR8JPgiX5gd/2SH2s1k8DwVF9V0GrxQCv8ULBbejTeZBNfOWnHCorkbqyYKrkPT3ncLymAugpnEVBPQQuQWQ2yinGcv8g9Wfe7jI4mi4OJi/iTMAiYarFzJ37bikb7rwU8IN4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761975594; c=relaxed/simple;
	bh=/g4qI+7f0U3fKPYSSYcIarF/bnMlGeO5eU3L2kh43s4=;
	h=To:Subject:From:Message-Id:Date; b=oOtzLvo6wxSCLVmbbTp3j4vflRF+NvS6HeuII0qg0kEDgImmC/iJGJFy5EYJHW5E4ExCDj7WUhi9hNun05Fqo4I5koDQVlciXFYZSrekSEUJpcDtIPApqNruTU7HwQIrbW0m3dEeIJF8lQAoP5FSUlh7zzsUdAC0FrlTYT9kK5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UneMLlfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UneMLlfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3470C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761975593;
	bh=/g4qI+7f0U3fKPYSSYcIarF/bnMlGeO5eU3L2kh43s4=;
	h=To:Subject:From:Date:From;
	b=UneMLlfAgTndTxofsTR8McKjlp7+fVhfwow934KToi4ETWEMK1xaOAd2HqMf+M5Yn
	 /UQXDhR5jzwZk7JPYZlBiINj35GIj7fhVJCegbDmRbDM3FfPMprLQXv1X3QW5iVYmM
	 K53bna6tfYG46JwnB2zp1MK2z6dlI6C5UUmdH8tEOJDYs0YIavmOhkeQlSsW2KBUgB
	 wMBf77Hyp4INbe/DXj8BRnNwvXiOL0ZycbfNsYoG67qPabpsfQuGIuVc/ebNErXpA0
	 gLagXm+qzfQrL3jCqqyTKniqSkNM/QLVf3KK5jXKxNiMRpsiLu+JH3EGZDiiutz2jn
	 QqhN27hnlxvDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0359CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197559361.5601.9789074062621408452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69352dc6149f042865efb43bd036b67af112c2589b5321969439bc45421f1b63
Date: Sat, 01 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761975593
