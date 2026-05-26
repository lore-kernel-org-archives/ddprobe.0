Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F613E51FE
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779839554; cv=none; b=DRexW4mzRSWl5LCVMke9lMgzjjeoc65nQoGQ/vHVIp/5cZ+88ZDo5jgCTvKQpUkcuOJ20AcoivMGUMCJDZk5O3Td9MiSC/kesSv78yHRO91ncwnILOsRkxOMNlHHGopNdI0wfjOu1hUANSp6ypxccsOJQs2LYTm7MGAmFevsji8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779839554; c=relaxed/simple;
	bh=T0I7/2JzSeJ3BOEBDPT5yTnFIq5kv36wDjFK+EehoMw=;
	h=To:Subject:From:Message-Id:Date; b=Sl3tUUlORI/a+hQTa2OGjVYFM7tx44wrb28vt4WhZaq1N3/aTjIMFzLV/rWW9AqmNzD47dY0DmxUMXZW6D1aIQ3Vta/HwRn0VUoczsTI6l+vcjhyIOe1xAVR/aU5wz7M3oYwKqOTFSeQJPnVmCk4RUQK2Ay3UsFRYuaBXYGUX7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwQYtPbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwQYtPbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AF9C2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779839553;
	bh=T0I7/2JzSeJ3BOEBDPT5yTnFIq5kv36wDjFK+EehoMw=;
	h=To:Subject:From:Date:From;
	b=AwQYtPbKiZYUhKsX3nepCfvGXEJZOKS9/BoypZ3ykNaU7qtdC5JdEuazD0Dfbuopl
	 j06+nusVcHaaq0BfQbnoY1hq6YqFwD3nfdBilq1IwQjfZ5/tTF65NT2Pm8ijdcmRb/
	 jjeZnkQP8kuMN9P2jsyUrtjn26/9t4DFDPpxrvaE9zYPFyS9OW7JrSULETkCyr5tg8
	 QKE+22Fu4kO4prPPyd5/skHitJrmQHOCyvuj0+nJAT+Y4eTuUmKzaa7Rgc2T7kXZRC
	 Y37LRmy1mEGkmd3VYAkuEMU7s8Hry9sRh9dRgHadMWBFtYaHkBNJuuVECo20zFLMPB
	 trAZdkPwhVDfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE38CD5BD5
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983955369.14989.15505798754244248359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bc608c9eeeee97489d217092d882abe70aeb7c0a81d462249ac23933ce5af8
Date: Tue, 26 May 2026 23:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779839553
