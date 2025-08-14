Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19442225761
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755188994; cv=none; b=q/puEy8Cgwq2XFamT5CdUquVlGCeBKv3myJlFceT4dNsHUS91Hm+igHwPU5EHWsfBBRg5NHGkKGDOA1ls0V5/9B3UuxiJ5SPkCyCUM5J78bxI2Sl/seV2R8XVdHB6Pk9EYgQ9CrPRfUTV7l345afbJ1rsTQYNpeNNjEMw721rEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755188994; c=relaxed/simple;
	bh=rKKo+kkc9YCqRm7Ec2nudwFpD2A+vllO3D9JdvJauPo=;
	h=To:Subject:From:Message-Id:Date; b=QYHz575KXYGFOIpWbAL7uZSv4PzGpX7M6sTKznwXERziqKJlywlhb/6BAQN1jJ3KXmYhwFfnKu2sZHXDcLEj4JRET3ImIWPSuyJnFcPtOh9mA5RTXUkSQjJXtdoNIN462YOCTNdJaLt8shmL2OJsnrrr6BBudYpN315ktahklos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2mRdbTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2mRdbTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0D5C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755188993;
	bh=rKKo+kkc9YCqRm7Ec2nudwFpD2A+vllO3D9JdvJauPo=;
	h=To:Subject:From:Date:From;
	b=K2mRdbTh3qcgYBQMMGcklSBzlpm6eh42Oj/rGfYoNPksP7IAShzN5XBihGofn7aNv
	 4DKx/rtacdzaH6jtV9Y/vdeFSXILD6AI+HtJLkhWgdrR+t4yAv+X7+u4NMT3oA+5zZ
	 T1Oz3k4XvWrDeF69st6rX/YWrW2aD+e4kwR8hQqHSEidKtQod7F+GH4CW6sgASN/p/
	 Bu3P6cf0Z/tamNXbPZnaTVEL+C3KIg24Kot1dlpt8j6KS5uZl432lZyI85ckwfKCmK
	 QWSPLQ5kL0zBqhBTjmlGUgn8NVAL2MmWLgHThXHVNN74Ev3d5AVf0K8OznH/aaOpVa
	 4xYm0CNqa62TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F34CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518899358.28412.14148918875008440938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aee05c961d6d47bc2807ed3c21f2a4ef0ca2f6ac690f23c09ad3dfa2de33892
Date: Thu, 14 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755188993
