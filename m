Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6201024C69D
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 16:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739292654; cv=none; b=Lb6MFYVKE5vc8OS2C2VSZGY5Kpd0I+ZHQfds7c8aqmBNFQNbZwzvCG8AHehydWmhIvBmddMhtl56vaTgvI1sVmhD7N70pyAmT6ngMJ1B05IJS4bvNn67+avK2qzdvTyAmo6HtKSdggmh5v0vuUDPpmLs5ZUHUmKLlDBt9/fA8Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739292654; c=relaxed/simple;
	bh=HHTJ83NXv0Y4tXZWxvqZxX9ERL/r3aIVK3hQhpFRzcU=;
	h=To:Subject:From:Message-Id:Date; b=re4ImGns1SzO4l/u5aTyQgL36whw8OKf8j5Pr6T/LtSfcHabZgp8ArsuIbzrU9L/Xeoy53hC3wRYBYEguNQjgajEkzxAOosTA3blm/2xl7eMD4iIA8Db3dlo9oSFZ9bXzgiwVMSONvaYwpTStheJmQbfTXMamqBXtdFnYchC1bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kohBZypT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kohBZypT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C5DC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739292653;
	bh=HHTJ83NXv0Y4tXZWxvqZxX9ERL/r3aIVK3hQhpFRzcU=;
	h=To:Subject:From:Date:From;
	b=kohBZypT0zEAZ1kYns5YvLTQCDC842Bmn0rZyLOFS3jYKGRRTHezJn+bf2kA38WZp
	 VfnuVRVc9tyZz3skMWEoEZjRc2/eM7I8LRL+tFl61VGhQjlfnhjD8K1DalpQ3kftuG
	 VRjLnGkhnMu3MrFgCByKrVbjDOhLO1RamcfTPjnveY0hOJWuV++pOG07dksZJ+Cwiv
	 q5jZ9PxldqL64gaYcrvC1B3earscLHrXD+Yo+08xGTucGHnIMkB7RvRdB2VphUpyeC
	 aZrd8u1eQhq3SG7Q0snZw65aakjCCVFZpvdix1TUiXecZb9uD0N8H8//q4vk0Rw3T2
	 LysN6psZkB/pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93891C0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173929265359.4623.13209618314869915840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6defd3761d101a961b49771ad7424b7fa7f964d94748e9ab92b1d53439e783f
Date: Tue, 11 Feb 2025 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739292653
