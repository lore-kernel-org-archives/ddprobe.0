Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BBDA6CDD2
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714942943; cv=none; b=Dux27kIr6sMf5bXdKNXLH5dsvOysHdX5LwR/ehxVHxRuRYi4Al4Y5hOmQmNwm6DFsAnj4AJllt30/buGaa7KNKwzmCyrmYRFvdDtyXmjlqaddOygOumNqDOU/JKFCPggR74TH7BmCn/Fbmobc9pNfgrUKxd29gV8HlsvwDS0yz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714942943; c=relaxed/simple;
	bh=UQ1CWrYQXgBB+NNzNjFEsl2WH/1MTH0Ejb/0A+nmcjs=;
	h=To:Subject:From:Message-Id:Date; b=bQZUe4q9XuMn7Se28xTl0BsQVb+cXi6gW/5Xh3xVwGHsyehanrrq4LqQKiNHd4PSuxI2jlDYg8bjg+PlvalkLhCKrU6vRw1SfdsmClCY4bDekFWJ9F5aNMnGsnRK0C0YW89Jvl0LdEcHIvo9pEfSR287lXLp7VP8xGdNGcdopoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnNnzvQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnNnzvQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CBAC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714942942;
	bh=UQ1CWrYQXgBB+NNzNjFEsl2WH/1MTH0Ejb/0A+nmcjs=;
	h=To:Subject:From:Date:From;
	b=qnNnzvQSvnEw0SeITDz3DdIWio3zQKxpMxxstHek5D4reHKUak0YWYS0FVMuzwIxe
	 LwlBhenFfFrkVHCsMz4mIK/+2zVlhWHcQ78v8tsoQV9ydTF0ReTinFez4Fw9oDhu82
	 q8qS2rq8CLN7LRY8/R1Szo9HL/w3Z0Gk2cw7oCrh7VQLm01JVVn+2HrP0lDNUn5yhg
	 DDVs9FBBRv0pzyZH2AtRRXt103LboojuaqbL3dq1w7kI+c+Yzd6b2vHudk5e5LyYTE
	 86g8Nocjx67VnqIBezJg32LXUGSK3aNOcLvRo488eVQv+ttifT9EL147Ek7NstbodM
	 D930/53H76Fsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA3AC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494294280.14590.13917080033615347176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776e5d4c5300fc3290530be5dd9a6536a592bda348591740c1cf96cd2c962d80
Date: Sun, 05 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714942942
