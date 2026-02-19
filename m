Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EBE287268
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771539293; cv=none; b=EtqQzudwOKrjGKpYjYxSwG08J5ZUvvuYFCgj0Jb8u4WaDG5icYWhOCogcjFdU2fwbO4w8TcSrbd+DEHRr/soSMa3Xo2w1bVABOjBtkqoyh7SHwTob8fmR1qbDJIzymS0J+xyYXbd7uFrw0BleCUiJ1/4XbJtelWKkl+SqX2pAuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771539293; c=relaxed/simple;
	bh=ZWZm9u3vpkySYxfXN6e6MvtSgTUxQ5kMXX2mOyKlhP8=;
	h=To:Subject:From:Message-Id:Date; b=hYWhS6jZL7CShcpaJB2i69W3/9LrXNQ0Qvb1r4/7Vq/hIaJwZ8E4RjVWA81pMGKBdvuioHAZ5gJDf+w2HGh6tBDmu5D5s/ISISC1BZ7+5UBK+6FhTsPp09hSar/eFGxULtnriqyS9JOZrYx3FfCJiB6nD6CkoX+AHDWWNEhfgPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMeTBu91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMeTBu91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A582FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771539293;
	bh=ZWZm9u3vpkySYxfXN6e6MvtSgTUxQ5kMXX2mOyKlhP8=;
	h=To:Subject:From:Date:From;
	b=lMeTBu91VINa4peHblLHIYYAihk5ATAg7asItRch6kAC3btRIiXdVd//2Yjmf5wYu
	 StWpKOweE951pA/8oCBxPolrurpOuN6IAnWGFZGKsc/pHVmHQat6E64CUrei70ez+o
	 H75Tlg5PUeLGA5Dxnn4sHifQmoRI8b+Cq/BoqxuU6eXY3ckyUtbmSUfNzj4Df+jAOg
	 2fwGLoNv7C1VR4j+NhjnZvq02yPRorzwmndXjbM3LTChp92zE4y3pTLVFKPMEpnuOC
	 +Spb/qI3V+L21Sm+uv+1Y3CITQAcoe+aaMw4qlsxIoqtcGoBA0EoitWjzachFJuMR9
	 j2gTgD6+i+qDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E4CC531E5
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153929360.6121.4497599797204379501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f52649249026d6f071b2f7a52c89054cb962a882b7f8d31f8c777b5c34a97fe
Date: Thu, 19 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771539293
