Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE0528CF5E
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765033974; cv=none; b=NALgXxQFJ6i5Y8ZyAmldnCynL4zmO5Ac7I63QJgf3h08QeemLNIqpM82h5aYeO1Lj5CcNQufgN618YsN0zhWY2cAfUUApW2FVJGqajeppKfVDNFtWCHVzk+ZRPNwXT7XiTpB03NaDC/l9oB220ni8XrnFovQW5Ze+7C/vMkyxeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765033974; c=relaxed/simple;
	bh=JrcevOVqQQ/Y7M6ZzoGoibtybTBm5eX7GC02GQxk9go=;
	h=To:Subject:From:Message-Id:Date; b=bdGS/m5EwudyPkxZljQS4wnsLbJnW6+dD8t3cF3uRCYUQBJmaozLQv4Tp2VoVg4a9VxU0ouhNgF10DY+fyIU6DRv+8GV0sfUEAFNeq/+X7lfdpVJYpxZANspLE+8IK9Pi7/nDqUeYVHc7xb3ttt3FYJlfTH9rzYttiizViz2zyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDcVYUA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDcVYUA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EE6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765033973;
	bh=JrcevOVqQQ/Y7M6ZzoGoibtybTBm5eX7GC02GQxk9go=;
	h=To:Subject:From:Date:From;
	b=UDcVYUA1sxJRm38a8qtIG4JVC2Z/Bm2ruXSwvHqJK5xWc2gAaKZ20LnoVCRi7+1fF
	 0enhLWXr6Cv9kcXPbBXuXgAGfa/GNQoQAiA9TVK53BMwJcTsnHtDTF0nfADRlq2uC1
	 4vGGBbkrA98gpB2FiVHcvXktYjNSn7mCBFJ/iewA78G7PJqXFCgBPiSueH0haiCw3q
	 g53R3brOfxc31qRXtoGd1k3gP5qtZPAEcZfSMfnUizNfYsyG4igk0POG5ZHSQpG2NH
	 6Uby8hHZjl1Rd8ByRKtTwjfayBDDpmWhCFE5WSiMaa3daWKm5LtSwbxxvrsNUQoZB2
	 Bn7+eSg69nNiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9388BD3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503397359.30591.14111803835124303837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9ef849d325330f471183145af4937b361875adf5129617d83ed90e93f9b92b
Date: Sat, 06 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765033973
