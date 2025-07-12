Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A3317736
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752323394; cv=none; b=VGU87sB6Iq0xpC3EX0/y2TXAWqVYJv2I1R04xXw8ZXovHIIz4rxKUoB3E8P0AD0lItbqPd1sTWpSXsoYkYse6V/nxqWQx2nq1pAwIKztN1P1sI774H3xJfXQdKLfl1CPQArCd8IxIezqBujsripdMIR1Ea8FauqXzFt60f13cOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752323394; c=relaxed/simple;
	bh=M6r8K6p3doLu5WgAgqErJlChpo9+95ndv8uL/n99yCE=;
	h=To:Subject:From:Message-Id:Date; b=X/voJntk1dvbI1LR1fxye2nC1ORZhzRWfm+Cc62JDtfbvP1AkufndOfq6hZGfS4umDVCzhf+bvBipef4q1AzAa4wRKSZznnsWYfvCaG2bWWFh4R9qfdfinR+WQoJSDdQY50UbTcI0HijeFfkqvOv1Tr1Idr0Xtoyd/x5bakcLQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9ftssnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9ftssnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3062C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752323393;
	bh=M6r8K6p3doLu5WgAgqErJlChpo9+95ndv8uL/n99yCE=;
	h=To:Subject:From:Date:From;
	b=U9ftssnZ4q1zuSIQ4TUd0l+Evdr9XmyrDd6qg+h4puYW4fEks5bgdyhXGe1LBFeaO
	 0LExsFJpWCLzN0SNhYUmCu5hD19pVXRyEW2abv2j1kPxN3gR5yQFxft2ZLaSdEBnfN
	 JLgMSRyn+TsMlT1Q4NUpf79IcnxlBXhpvlOeV/pE2A6g4JxTnTG1jth0/Vj9OdreNP
	 Z/W0sAVgFJcLQX4GYC6+MIfRTBJGCAf4CyKIcCxLl+YXlM70LUxkLaH+SWkQI1FeM2
	 1FQbTT7cbZ0XF63U+13LuCE/NZZtidWcx/+D0MgA1D1YdRfDWhmPXUW8URiao0sgcY
	 lash4htAAf1iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CDCC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232339358.8915.14368958074359764651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5af8f1674c3d229c5f081105a170f5b9645976646e14489f4fdcb8350f42f63
Date: Sat, 12 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752323393
