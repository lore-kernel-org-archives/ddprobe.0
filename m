Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B40923D7CA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761798594; cv=none; b=tgQv+Hyp1RoYjsWAEd8pjwWiQr+jNN0334V8AIPFDFec+8oq00xr5mCp+QZJG+PBVuwlZwCmxORkCSwg0f2Mh6cEXxgyVttEsRBuvGjopg7ctPRPiALYsVWCVjy15qGCgHm0Or7laN1KDa2fa6xFKTAUv5fis2rQ5WHQYD12sjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761798594; c=relaxed/simple;
	bh=sdQ4p5tGnmrQmy9BUZpX/ZHzF/ZB2wk88RHkn3b0ye8=;
	h=To:Subject:From:Message-Id:Date; b=JNxD9N6QMYEB3JE1nya8Xru3jxROqwKFgPAJ5Y5T5qSQJzONkOUf3U1cZSUmJjtu45DO4E0LwIWams86UsjZhX9/PFnlZWfV9aeIRRgLuZPufsAddWGOpAKnxsWG1G1aYj15qk8O8oolERsZWcHBXaszULLcfVBT82jVmcW+lmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/5esgyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/5esgyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F40C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761798593;
	bh=sdQ4p5tGnmrQmy9BUZpX/ZHzF/ZB2wk88RHkn3b0ye8=;
	h=To:Subject:From:Date:From;
	b=s/5esgyf20jVs2j0Pwhxv3HIpNihYkW1AIq9V0IxAUJRjyWzVe539INRsLu5FKgcP
	 Rh8bdK3lGTY5cndor+EId0h3ZnmO4mUM+VgC2flfpuRTz4fPbCWiYg/eNzHA3ehQuu
	 13mgQJLJoTrhW90ZZk0D2dzXt+uyzU1FBtUlI/9pUSM0HtP2Mp7L8vE5Stwkk3w/Hj
	 fieEAMC52C+3Fxy92T8taS5vVl0guyqqrUyIX/pkTcSdmto6AmAghm4KMgjvgpbyIz
	 /FCmlfBSUkMEmdTGvdSTKVGD7o5q4bmTPRMtxbVuvJrpnE52nFVkB+Iy1vQrpIsvDv
	 mYuhHzszmKOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042ECCF9EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179859358.29429.8434598221544998766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930720cbb8085e430ad70e072e41d1d8801d860341598230c881088aa26dc597
Date: Thu, 30 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761798593
