Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B7463A5
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719022343; cv=none; b=CjKZVJH1wnHrJ8MHTMIdhsgjH8oI8KxZkfKPLY+5lJrXXf+4N0NmsqBEDB/4IcBXBtjn1snWbwf/y8Bp9RTtaikmG9e4CdmiJM9bhhf8Awt1BJRaMk3kOLwLuXmtJm7i7Q/mzrvMPN0MIJxFEXv6H6ao3Tjc9zdWQcjSHMPT9Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719022343; c=relaxed/simple;
	bh=SBWlJvMmEu52yGeIDQ/VH/ChpHHLr9H0uqso5uWf10s=;
	h=To:Subject:From:Message-Id:Date; b=jBDUEnbIK5DzJ+K3koePlFQ5+xNNsWt63nT18SfmCHZmV5SMxJloA3FkV6AFcici2aMEnskIEMIsvETu3ep9QKPzQRTsEZdrvdLhQYR2ieQrJFQe8sJSP27RPU5Baq3zMfl8edtFmU4ATzdRQwJEHjHoRHaVPCw0E6PcrUhUZE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3Z58wZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3Z58wZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8628C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719022342;
	bh=SBWlJvMmEu52yGeIDQ/VH/ChpHHLr9H0uqso5uWf10s=;
	h=To:Subject:From:Date:From;
	b=D3Z58wZybLc6v62FfFDPU/f+t2pkkRvLl8JPzGUTrW6XPtmKnj+pI/NFrwdsAu5pt
	 ABJn1h7TwhuW4gUC8gH5hUeBUZw+dFkn9UTH1hnjTeWWzHrOP2nyJ4lyyTAtvTgtxO
	 JdVxWC5Blrd0Xakf3kVA/NHi1/ot9OuWZdXEG3OJfzH0FVEwyPNWo22Y/REhM8p68q
	 Fz3wJQZwupVgyk7PoruR7oep6bo0uRkUNnZQPwwTAX+Ms8m8GEtzU7RW4ctvZ6SVJA
	 Snfz7evnKarZBgfAWFvvEde5VMlgeZ/sacjDGOuDY4Mh1phg5rcRtqAWGLbyd/I932
	 W5FUlrnrbtrwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C168FC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902234277.7855.16909925639068389719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e65426494d7db097fbc9306b7d36de3b69a66c32b91f0ec8a4f5da50de18f1
Date: Sat, 22 Jun 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719022342
