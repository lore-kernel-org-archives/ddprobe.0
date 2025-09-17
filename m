Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F71227EA8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758095995; cv=none; b=MMpvHPH6Wxihwn5jdkVlSs6Bx8Aew1U/OQQSra3G8F0nbgLLbVtj3w6KIS1+LcOStkEPXXBdWZNycjBWWwoSBPN2qmMImk/qyjQloF1Ugj2/tmw2H/BQ5WGe5HLEx2flLqF/2nLWkME19+kpZRaS8XBEg1RSa1RplQFvkNS7Q80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758095995; c=relaxed/simple;
	bh=ym8BZv7BTXNr2njqnBavopMwzXxxxpJMsDagwlx8Di8=;
	h=To:Subject:From:Message-Id:Date; b=R3IKuLWxdluU/zjy8HMxOzHHiHg/bqQCXonqJwkXjuB1SD/WqUq5xfW8J2HYTuRJIvMRF/XdQZnhqF/xbVJx4KAHn9mJG/qNKNqkeFfJws2t8Hfn/+l6RCucPFU0W7VfvDqMhNyMygK0skIWfqywapR5S6tVWebRewdJoJQ3nLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCJTG0jG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCJTG0jG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07D6C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758095993;
	bh=ym8BZv7BTXNr2njqnBavopMwzXxxxpJMsDagwlx8Di8=;
	h=To:Subject:From:Date:From;
	b=qCJTG0jGrr7CKezGbmDXwI2veh5rY8nojdpb2XOZmXXqJDujxhyPl1p0bgBgaQoTY
	 z6M6RfG1Xq6twWKyw6v2yubyXl0SSaHMgJ3JRZ+DRKzGnqqt3YqHHPBgEcQ/HUyEZY
	 kPafwtRe1VuUBww9q7uGGnkcWdsvklFdPc8KlXf4xlr5hWAa9HsjXLjOt4sSoZClTY
	 rFE2lFbag+LqGyxLJekh+p6RmSvlrY4KMtR1UXTLBtDPQGcpjpRbaxm7o+TdC6+TTY
	 +yMfskufplpIdvWhBMBLDIueQTy+MOVZ47jmPQikdL/r5K7woOnECCA8Fc1yTIRXfE
	 Wtb3WRZV215Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E7CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809599357.9392.8143863218078381534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3977cf2772f75ae3969d9335ad4ca842c25dd64b8dbabf5d63804aa288ed4df0
Date: Wed, 17 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758095993
