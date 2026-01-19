Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CB81917ED
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768860234; cv=none; b=nr82FeS9FtpSmydukl11fMnbc/ORhONMM5UL/Tx8NfB8DLA/JuNJEfGdrsalQjj8uoAmebskLeHswqvfiVk0xtvQ2E3sZi7qd00RZG6qGx0qikxcHmejKeA9IvUGjhqLTMKB1xGsSx/KAcDM0WgUSQkWV59GGVfXwb7mRi2wbcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768860234; c=relaxed/simple;
	bh=0CIOMZDN9m7dMUvVg2L4maRBArVIRoN85w/h788t2k4=;
	h=To:Subject:From:Message-Id:Date; b=rmNS9pLf2LY92MwvMUX+I63DPoHVxluoXA7SZVeJIzc1l2o2xgrNiJg41AonEE4pX2+Lrg577Lj3aZdmouUC2okDxE15ObAd1oeo+xffoMqqhiEUgYgsoCroGUXcokTLe32Qds8G47UXMk6UXRBLycJ64bHmImsg/mn7wJBmdKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9EgsoB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9EgsoB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D72C19425
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768860233;
	bh=0CIOMZDN9m7dMUvVg2L4maRBArVIRoN85w/h788t2k4=;
	h=To:Subject:From:Date:From;
	b=M9EgsoB+38XhsByTB1vdG9kbY/xLmeS2CxsF+egg08z+QYDPKgJ7XiAfT+kALNmri
	 SvHtlrzIB9brzOwrtDDstSPZa3fGTE+kDk/b8gLa2PVutdPDexLRfZ8lLCbRF+xB5L
	 laGc4wYf4RPg7Q7fH/U7f8/xqOx+dTe92kN5q4AqKVbG0h+XJVlrn373581erxvmTC
	 MzB+uqrWedbXCFJz/uSXo1lherwWVNXqX1Z5rUnsucFhE6CIE1iUtFFh1e7D7d5wTf
	 8Vo8/tJG+BAyn9e+WkqOQjL2qWiIwfubVp3DYUV9fzLAlEg6ed64HKhkIuFOsNpxqF
	 /DibnlH5nfqHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90908D2ECEF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176886023358.3077.6950358187036485567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d03dc60f6ace900e045a85d9d929437ee5b9b3c253367d574073604c1a3fcd1
Date: Mon, 19 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768860233
