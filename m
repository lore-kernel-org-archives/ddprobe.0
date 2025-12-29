Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2123A23AE87
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767035034; cv=none; b=ClRxOfuAwCljDF5Ev9dYtilggy4+1/FnmPjCx+eCmGpP4ksT/QIrU/fWSuFG9uqdMBKgjQfIwb3SL99Y3kNfAIkdKdijm5jlZbVHlBqCESyCCG0B1F/mCviC4DFeWV1UkC4hzY+L/FxaKlhmZ5bka7gwsrZ1QBeoIdVJHjDuV2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767035034; c=relaxed/simple;
	bh=gVF1qmPSEQDUkDR9+TaVl/+vMe2dIwBh5HYUUS5w5+8=;
	h=To:Subject:From:Message-Id:Date; b=aMVZBqp7ojtCU149lhyECLnz9EEd0WhUEzpb9cO7HO7+9iIvyuPeARJ9MAEro0uyC6h7V5nW8IrVKYyCn+zOWzRoz72I0uvUw5wT9inxwtQ/AGukZtWXk27WJGBkXFc0I6n1eCUiQN6fJanwhBMfjss6PvV9OYsnh4NnzgFFPmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfFDB8v1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfFDB8v1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F5C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767035033;
	bh=gVF1qmPSEQDUkDR9+TaVl/+vMe2dIwBh5HYUUS5w5+8=;
	h=To:Subject:From:Date:From;
	b=sfFDB8v1gKkmTj8h+a8mBhjd6c1BstzhWVlIMBqdj4HLitPycvM+y+bUfUOghFWOD
	 2qSEB+UU9Ty2qQq7/KoyFdUD9/CpF4G9xCtZTaBI8HrZcE+Av4Hj1Ir22dqJuDIxfA
	 cDrIlivJuXKA3Np6xTwsquZ6UM7gl/9fhUewfIiDT2ciBQl2jo576ayNoqSY6ZEy23
	 ySrqo4baMxv+35d/ctb5iVhiKQjbeAMr261cydhvLBddCVCPswrJwaqGVVtY+0CBwd
	 vQ57tf21IyBLsWDWBFCZplc5T6iu86H+vr5jMehfBXtLB8EXcJgZ5ZuIaQZ5YqfxYH
	 4EKX5RsJ767Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9295AE92FCB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703503358.25290.5107542141172361839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6fdb9f1b7cc4dd8ab2eb1599323a839aac408bcc8f24285eb325039b0b17436
Date: Mon, 29 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767035033
