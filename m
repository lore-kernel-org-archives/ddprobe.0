Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D252745E
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759875594; cv=none; b=DRrIbuSZcxUDs225RFcV5NsVKFdB6TK+941NCowlhjzcxkqJcE3d3OYzgObJWbIAsclGukCVvNpDRCz19Pcxo5Byv36TO6/pZMr/tZ0JTDKEpoDBBNJr4L/G20+IxEvJjF3zRs1rTUyDKvUL87E0OLqdA7Ze5NXp2BGfXyDWvKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759875594; c=relaxed/simple;
	bh=6q1vP1eqaWcOTksSIOS3e2SRNsZvnM6wfeYbG7/akMA=;
	h=To:Subject:From:Message-Id:Date; b=AVqQRULeaNcp64deWCgKJ+kHNJMM9aLFIPklnfXwFlouvujgRvtL3FvthqGxxRLALBZzFA/5ZyktcsKLudUYMzxFSdc8p666q3awwSejg3Ey5Tm13VyS6sRLG1bOdSspR6/Ufkq10f6Gzpb1qMokISWqDD07VZCQC8w4Hiq7Mro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMm/lpd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMm/lpd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EB5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759875593;
	bh=6q1vP1eqaWcOTksSIOS3e2SRNsZvnM6wfeYbG7/akMA=;
	h=To:Subject:From:Date:From;
	b=HMm/lpd3kkMM0VDBofpv8LH24IpodrpgXmQ3eqJWJ9oEtPEx4IJExAysWEfZFQrhz
	 kuTV1yE/hoFIICE01LZntgzcJRtAfp8Y/pptv5Ve49VltBNe94L1RZ0ikymOwUuuuY
	 O3zKWPKG2HjoxBkeCRjjT/ne9RKxlfMNhkxu8pB8OOUnqb4DDOQEQdD7UQpE/IXz55
	 VZASq0aaqpRw9A4+4DS2fI5jivzfjUkuwZc1rdVt/phAc28EyPrN5ItV2dCww6EDUX
	 +24NlhsK9s44wpR/tNFSjwdNTeI36J8gkyPZl0YIyfv8zKKnftlNQPrkIXqj8gJQsR
	 hnSlB3gzLj5Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DB0CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987559358.28990.8563392828678609119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d5f49c9958f9fea976aca57ebd3f8ff44617fa1accffd1144a665fde3cd356
Date: Tue, 07 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759875593
