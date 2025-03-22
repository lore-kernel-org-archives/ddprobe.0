Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5880F376F1
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742668194; cv=none; b=BvRo7OjqZ6b9yut2bgn19PJo81pByLESDUZnOKlwfH9jL1UbijaLRBEBxb4wbpciJcSkHPORUoLVecFF/HPYcoKP7CrwTWxNxvzU1z9aMprlFSqLm4RaAstCIAWZmqd9nxRtupJS/oOVBeeLzcJCeeRK2ysmPAULwj2fiqSRMaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742668194; c=relaxed/simple;
	bh=l+FCGqy3ldoDV2JjjRAyJaZBKq6K0T5HSNwc6xi9IN8=;
	h=To:Subject:From:Message-Id:Date; b=OAL2XRmPS/DPbc3IGe+WjbCzcrg9+0a+hw7pWcaQMBvhaQZn8f/wLD/rLV0DB7LbtlDTHlzQBExUTSSAvTuuG0oR3bgygtHz0UwDSOzn4vpUNQXrflnamxBeZ4uBqDVWyOAfKjshH92vuLaQ8KNpFtpU4mjlgMgbJSUzrX0Lvbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0nwoNlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0nwoNlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1790C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742668193;
	bh=l+FCGqy3ldoDV2JjjRAyJaZBKq6K0T5HSNwc6xi9IN8=;
	h=To:Subject:From:Date:From;
	b=Y0nwoNlX+4RZVd0FsN/dbmQrIAi+8rOs9wzWUjYQzdbYR77lHRGRiRKBKjIMltLZP
	 1clhosGutvpJr2V4nYzZpUUYqrsRSUGeMAM9BXkB1jYWyhk7Y4qNoHooGrNUAUszMy
	 tjbk7EVR80sqgawkbxFFS2Cv2/AUS96gPwvNFdW+b1mQIeeT+Ut9RAyFDJEGMiF190
	 cMk3qhmP5LFTjbJYmLRDU9Ox0GdackqUGK5UAxqHX4yt1Y+58cxtln35k9xM9hXcUi
	 Jlxyjx0yimVN0fz625MKoJ3lrfj89uBDdsC5QOLNPiJ45xsAxT2Wiy5Svn8MPXfDyk
	 l96iBN0bZ3zbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B27AC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266819361.7568.14810861566664809678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7161794ecbae3322bb3a5c355237fbcd164f6c28d240e727af429a028db254bd
Date: Sat, 22 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742668193
