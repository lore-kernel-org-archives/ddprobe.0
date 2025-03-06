Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBF71E487
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 13:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741268334; cv=none; b=PB6+PKP2s38StYFiQhlLc8AQ1pd5dSCCcFdUtOBF+Y7PalS0ILqiOa+7g7M3qcVsPolcDjYtys5MN4iJKC7iDYDZP4l4+liQhOUzpF+G+67UcERkt8OF1K43DM7OHXi5LaIhTLKTDSlZ73Bsn0teLBn+UuM7y1tU37esewXiPUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741268334; c=relaxed/simple;
	bh=fdRVRN+I5ejZ0iKn1BAV2eBOm006UszZepxS4Cc/wQ4=;
	h=To:Subject:From:Message-Id:Date; b=bziZNQED9J1fQJgbZ4zZ7PhApfg4XRSpDyIoHGhYCN78T/AsdI+DvTJLnITC+/Z14+yO0l+bT2hXMDVXKWBSepEeGuLSGPz+dDvqszlPY8tAn36pG0dXl6KzZeC2HIAmoB4e5QgMv6hu2JhUvLHJHJiBkj9d7dAj16Y7t3szUc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXSkSrDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXSkSrDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CA9C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 13:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741268333;
	bh=fdRVRN+I5ejZ0iKn1BAV2eBOm006UszZepxS4Cc/wQ4=;
	h=To:Subject:From:Date:From;
	b=UXSkSrDgRuJ1Qg/4sa+6X96uN1Ceh0yJ85nb53qPb31HJXo2xTmmPfJQ/vPcvFV90
	 Vnm9ZfUJsIRp33k0HT6b7kasi2ggzxJWrhh+9MJTmqtzjsqpTnn8pTpUTh8EA/IY59
	 wtZebhxExI94WZWqh3JGGrh7l5RDPqzCNKtVgw/jvdXmXkIRr12stGCgCNzfDnsHKQ
	 6PEBSiLUfCZkpzQOAY8MkO3Gdh/xRIERWJK1E9dqp5TZInKqloLKQCPi6L2CawDDK1
	 A6pG0BegiuOMiVjp3ZML3lXyOlCIpBgIo+rOCvjhDttTKXBocyXgWDa5dm5ro9CoPm
	 bpce2QmNJowsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FDAC282EC
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 13:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174126833360.25238.2612274590422529992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cad63e477465dfb1aac2aa31a65a4008bdfff515feac71e41364b22bb1a3c70
Date: Thu, 06 Mar 2025 13:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741268333
