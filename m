Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3544920EB
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743592194; cv=none; b=WOIGBaRL+MCbKIRc9boYEq+HZeCRETOorzOQDagBYWpni/3es6qf20KN/yRUQXBQY7qtp+GgUEPl91Nc90d32nuzTQzNdf90HYrhVfPd4d17iMltd2v2pM904WUXXafgPrQmw/a27mgB8ABcWjCJhkbMypsSPq7cr2HS+ZI3jxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743592194; c=relaxed/simple;
	bh=KJXYwwQL7TAxfoKsVc1Sqe90hZyjhrl8YziYi+MWL9I=;
	h=To:Subject:From:Message-Id:Date; b=D+qdvfkxwrW9/QoSbfB5Ig/ilk2LslIuDMZCX2rfvEBAHqHTyEGMTuuwjpPoHDznk8TYgVsjJlTj38nq2hhLJ12cWFbCvyygvRTg+0XadObTI95hmmmp4fSQShkizYawrq72zl3fujBpS/d+xuVf/CDLiPAW0zoUnBMgl1b1Uvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpKCGAcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpKCGAcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7C2C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743592193;
	bh=KJXYwwQL7TAxfoKsVc1Sqe90hZyjhrl8YziYi+MWL9I=;
	h=To:Subject:From:Date:From;
	b=cpKCGAcxs2FrxJsg3XjlO77EuXQJQYORjI2edcUk0cd1f2wS4n5o2AQf2vyPG7Jj5
	 XLaxx5ysW3E0CVjC7vJLURHCs07DjyK4+hER79l2F1vRwkhcfsv+8G9jvlnCbsDmg0
	 YBttABGk5ce3SJgusZ8bwvWDMEkTUUHk+mz7Gpy+vMBgGdCUlMy6l9dTncO6HRx55x
	 0jH74rBEYNeO4tOSeERAhmhIJqIoek/rU8wjV/e6at343Ig26rcscEasgXOQWNOO7j
	 endWSvgSngVEzv4iqTALCjsdxEWBFR/UR0ZqO6Y4pSiWhReehxHFKans3/iwkxj+3D
	 qDVRUxuB/POcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D118C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359219363.6859.3256938643137759952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ced80556d0c3ee2c5c656896138e1cf0047b077e16963f805f0274a6ef24038
Date: Wed, 02 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743592193
