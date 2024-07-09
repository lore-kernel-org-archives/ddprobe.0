Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593A63C39
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720483583; cv=none; b=dNqK+dtJ+sAZt9gHLULIdoEb21qYmlVDUbgIc5/ZdvrqA7Roh5rzRu7GmDsts+tF8Ox8Jeywiply19cewGHR3XZFc6y+QrxIkZ2iGGz93YLcrX0+0SH+fUnwIIT7NrwmYarXom1bV23ABr39Gd14mPYTfLMu2Z3+qU/e3r9tiTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720483583; c=relaxed/simple;
	bh=rj+0IjQo9TUSwflS4tvWzHrgX0kgCMZ2Vn0Q7JXQn7g=;
	h=To:Subject:From:Message-Id:Date; b=u9q7vrn0YtpHu+kSIbmVV+mjwHaOyGiHFvcJzdXVF0uAEvSZDPYJCPETXxjBHWd86veQZY/TgttajrKGmhdFoxzlvw6wLLNzB9smCfeu0ZT9ThvgsJO4XHYft6s5BmgFQw3C0j5GEdJio2w7zZDgsCUhkpU2UShjFX2KvU5z9DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=me2ub2z9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="me2ub2z9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC347C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720483583;
	bh=rj+0IjQo9TUSwflS4tvWzHrgX0kgCMZ2Vn0Q7JXQn7g=;
	h=To:Subject:From:Date:From;
	b=me2ub2z9RCaDO912GYbbfytiywXAR851JcIdtoMDr8zspaEQ5461vlyNoqPfzNr3H
	 dEgTNAQwZGrfBDiyRY2/uaW+BKqxi+ankJGK1S2u/6ovehosaz9tna7U8a0AtLDLrq
	 e8JupYsXEyjbke5JDempG/C5kLwkshpN9RKiqSGmwidTGS1CjtVgpjSBqf7Yqw1I0D
	 vW+7nvAVHcRl2+Xszvz5yqkysI8CyibXlR3c6zUNyappFW8xYbB0YB4tX4R5u0+wDQ
	 Eu8qz2WWjvBHZvaRVExx8dR81Fg8INYaxv2X9jnmtLIKbKF9Cyh6u6H07QawyDiivh
	 WZCJVi4F8RWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2781C3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 00:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172048358282.3037.402254253475871221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a0ed62d00a7d3bb94d8d6fedc4de6314246ec302b8920fc36bc87e2be1959c6
Date: Tue, 09 Jul 2024 00:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720483582
