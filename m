Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE9F34FF79
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768326834; cv=none; b=T7XUp2R2NTnj4Km1C4Azt60wAyoixQX3CAy117EYsSdbQ5SLKhmnK+KlVtu1Kud8NpeiwHysADuDTP546Ii1CIg/z+vsCIaIC9VElIymOL6Z9LlzULAK6vbi1PEl+0M1PgyZqtMagZwlLncwiCJoO6hy+rNtpjO0s3WNaYzpmwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768326834; c=relaxed/simple;
	bh=4TJ71rrSwUEE1HIHUin4z7wKGnrlMiKRyujpjCWgHew=;
	h=To:Subject:From:Message-Id:Date; b=aReJVcctajAhQHxS1b+SqXW9Z/4Kccftj2Cz1FIsgU6GZ1THL9+P5Lds68sI13X28btJCR2K4J/Qdtbu4Trkxbe3Pdy1vTmcvG/gfDTA+TUIqV4i14rr+qiZXONf1gSR4kljTKDmNBZhQHV+unCq8FP+Nd0fZxU+xcCklIw2OeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MScD6ZZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MScD6ZZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDC7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768326833;
	bh=4TJ71rrSwUEE1HIHUin4z7wKGnrlMiKRyujpjCWgHew=;
	h=To:Subject:From:Date:From;
	b=MScD6ZZcnAB+snfwq1lumF8CdDsobZysGTQFpY8/UMzCxxq3T143aSacTQpKO1E7m
	 saHymBaQcwo0n7VGPKwn9mMSfio/TmlD5PNYfYK4y8Fbt1b/sBZH4X3xZ4EixAVtlh
	 tZfRGOVKzn34TaD6AcR4JZnF1ENj2IqUryAxpbZjLfl2Y9FKipayrwY5h0GkBWXipf
	 JH7ZATh9cgk2udlDsM/OSaaqcvo8eI4PncRk65xRAwII58Q8h2smQomK45H/2XRTc4
	 giY5whnrOWtF8s8nP1U6M+urT+dDl5cCUkzrq8COuE8/qDSfE7vOFQGKRsp3ok9zZk
	 9OgaUVF8NNj8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02DD2F34D
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832683357.5001.2803726527437986963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebff0f8a78193998ceba82a3dbca421c1962a5b3833656baee7a98171f5e57a
Date: Tue, 13 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768326833
