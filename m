Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44040A944
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740911934; cv=none; b=nbOmkOQv8mqh+25PW3a8D8MbGrCSvrzQtwF75ke1gP+xHKLox3fq6ir+cbXGOvQcPth2b+Baqxu2ApxSQWybVo9ueJ1Jaap8k/H0AW+BNsk7CHJKbTzVVMgnij1e6ul3Zb5Lt73nGMFAR2GJXyikisO0FyM/8XzzEiP7vrqo91M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740911934; c=relaxed/simple;
	bh=ym4o6fTQ+IL5bOB2+AZ+iNcR1HqJFM/Ywmg+uJ3J3vo=;
	h=To:Subject:From:Message-Id:Date; b=f/wKRKjwDnn7qSANUn6nbGitJGcH7nWQHFEnEGJp9iT+vk2636U0bLLskel/mQs+KYxZCUAKUh6pxAo37eJxmbQbebl0ieoHbM/ZsDIlgioXBURRrHsax+q2e5uiWWaesfofiF4Vl47yQmgkUVtwnoKdeya2sZX0Iokc4Ixouzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvQ0ADLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvQ0ADLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DF8C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740911933;
	bh=ym4o6fTQ+IL5bOB2+AZ+iNcR1HqJFM/Ywmg+uJ3J3vo=;
	h=To:Subject:From:Date:From;
	b=CvQ0ADLkLWK/hnvMzvnRxmGvFs3YFZRb/nU2qafiMI8siV+2AidmFFkMOpAB0JAb2
	 Pw4H5dMRt6lR6JeLUfGnou8xQ/OLa6I2EoHaombOvx3sD3AoLHuEp+vgR+bybIj9nm
	 4ERorWydZDSUIe8Ptdqp7lYyEoQBKGk3KTQ3+RwHnnDfLfoNa0lLgX1/wwkfAWId5g
	 tLok3ZpKcRHhKME1PDGXhI0N1KkLB/Fq3LxiM3/pXQLsBZVleRhrvlJzW86SEz/EV8
	 yzjcliizOEqZi7F5w3kPGIMdB9PW/qPFPNbB5cD8aRvd+h0c6GpLH0fnJk2MOurOWP
	 s3uB3zsnxdZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C03C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174091193360.10925.8608488603598881104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc502ad84cf06beaf3d1cd069dc2d0a8552c43f63b05cd73c7aa6f515954ba4
Date: Sun, 02 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740911933
