Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139A73EBF18
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774617294; cv=none; b=qKBGmh7oJRN/AVKs1hf6XQaeXKWxb19rfIXR2JJypftp2HAdpNub2/GPJi5TLnutc+YOfBqAQUrgJHtD62JGZy+jWOynVqLTESYQ+IdHnhUik9sk5z0wozh1WcsamhxnJobx31GbU5RVzvBfHZbcmxsi3sh7H2WhQFuzQy8Y5Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774617294; c=relaxed/simple;
	bh=awn3K8e7veTRIEwppFxOPTKZUbH+58xePLcu/91GbQk=;
	h=To:Subject:From:Message-Id:Date; b=uH7npHd50VYMWyMT50nTTFd51kBmbWlHKlxSgusqHRPaCf3SUZqAcAAa81BCuljxqCOs2pQGj738Bv1ICDZ1A0Vk2uh72T37eNrJ4l9NdDCnTXHDvZ2dnNUmVLsOXXl7EEML4C6Dv2eJRF2+Rpz5EQrsZ8G60NMepHV6yHVcUL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORL6pKbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORL6pKbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A32C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774617293;
	bh=awn3K8e7veTRIEwppFxOPTKZUbH+58xePLcu/91GbQk=;
	h=To:Subject:From:Date:From;
	b=ORL6pKbK3jiE6NDy+wSCVwvCWtQXo4e7DdJiFQBOJUVfBDYeP8+2jWIU3FPQm//z2
	 FH3+RxFv3z2hjVhMZqnkCZWAwu2b4jqSV+mC9QdNPAvnqCKhz0rvqzOB56CWnK8mgJ
	 quU9emRIU5U+2SNRGfa81bwmCbJUz/QPWb8ejh54hNG1R5nMNI3sLkVvvztEZQKU3Y
	 vCuaISpOFvZEuSkn4takXV9VanH2Lg3u2/e4HnQM3/cMKciL8ChJtknBopg24Tyawc
	 V5B9bzuzB/5LmyRN5NdkCFqa3ZdAWBSkmVjvu/BLNSO/UMyvWhnVuex95N4l0iV/dg
	 S9On6FvSQ5DXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E4110ED678
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461729366.17206.2471241839902884314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d02052420cb45e4ef5a74a5cfaf4bc954b9f2d457985bffd246b3e2a1beaa0c
Date: Fri, 27 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774617293
