Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0F535DA52
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776653254; cv=none; b=tAW6iourB0o/xmIWX4rcXAgYzhXWt1FoZO+pZq4UI3W0LJiH7kXn7g8Aw/4yvpmzoEoAHk0K6lpr0ziQYzHyeOQVHDvr1KEzHHpb3hg2EqJqNjwFj/HvxYd1PM3eXOmSgCcZDiUM1GXmR/gqfL4nuT+PKmK0+Ye7swA9RwhyEMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776653254; c=relaxed/simple;
	bh=ax/xL9ZmRaHdXS50KGd5ZY0s8STlh5GPsY5Cy9Gq0NA=;
	h=To:Subject:From:Message-Id:Date; b=Un5T2UGz+9YEeK03lTNPe4WPTe6IgvBngUbnYev0kJQ674uH02QsBwZdRyIB1H0/KBXb6Kj22rjzC3+ktRYT7tFNfvuaqABeW2Hl81dD8pL4ZtoJgX/YzKM6MOWdULCv48kp/M0EKDCcCJoUAHwmMqGJrfU/MhpSNulAjqA0XMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2IUjYVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2IUjYVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B82C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776653253;
	bh=ax/xL9ZmRaHdXS50KGd5ZY0s8STlh5GPsY5Cy9Gq0NA=;
	h=To:Subject:From:Date:From;
	b=b2IUjYVEKL41PAyoss4bqSyGINWx7hHav+VosSvmVR5JcwCPu5CB7uZbnjp1u0h8k
	 dw1tS6vNqF3WQivkdCTr5b0Wu0D54RoB6NFHGMRgC9UZGJyraS0smt4aUzULQNxtrN
	 S1Qz6/w3ylDwn5YEdLpqmTH9NI5QIpxvUaSfun+8oidIcaFvnCobpC4lnEdyx07F5i
	 c1+9M1X3qopbSHQWTH6woldlJHBZPEvVi+WGpDn11A71V1SNoteBWq+zmsIPjFm16D
	 l0bf+7PS84gVyIajygKquj85WdzjT1L2RyNzg2xwwp/KnhN70qd5ZtPzj5A3DEN+Bd
	 QnUOxn6aCL0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB7BEA71A4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665325368.17889.7771830862395529813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98f813cbb83fff04e42237fb3e989fb9853e54dc08a295a7cef1319f6f54b37
Date: Mon, 20 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776653253
