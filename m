Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5931F36AEF
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715337143; cv=none; b=oWGmk3yX+bhbHpvZDVMhSK9dek/dPhW6OuvTqnAmNKMiwX0va7D1S6sqPWkjla9Z8Mj/cZz58ONvplUnJvp3pChoAv8MIl0p4zcU9J7qas9y/75J/U7Gk9BVjzUs08zlFu1SMPc2yQFlDdxvbPh4EeQqzDUbuULqCexBi6a5gAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715337143; c=relaxed/simple;
	bh=36xwvWB6Z69jYEL7th7a0n5nhsRNB+M3y3yN6kNmj0Q=;
	h=To:Subject:From:Message-Id:Date; b=Sx3BFlf/UjVL8d3JDkfmgQAMrriJFTmQUnmAVF4NiFF3auYskV7IHX0ZDLsChjvP4UNn5OtkVXYUDGrYnrhtc84GYiq2FMQKeviMdzTsj+EU8ZRST1Z4CTphO7nib7xgl4G2dSw5uSy/xIkfrwGkUIMAfsRjSaqGqGysjL1Kn1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViAZRPpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViAZRPpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE6CC2BD11
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715337142;
	bh=36xwvWB6Z69jYEL7th7a0n5nhsRNB+M3y3yN6kNmj0Q=;
	h=To:Subject:From:Date:From;
	b=ViAZRPpqSgwRP+XGv1AqWFlzlnShbZi50bJYvXGUtNp4V68hyKBGrYmYPPPEm8QCC
	 8ykxX5Obaf/rdb1EEUaUiYyTVsDpJhSLGuFy1Lfw7ytU30Hc7q4Wfn4LJkYIDidb3f
	 0ipGpKiqKuXAhBL84yfmvr/qkpbTjWYsunbjGU0cHWzx6fIhz3wWpO7v0BALTzdBOn
	 fwY1TcaUbyTd1FX7oaCO1VaxQN2XrfxCjN3eNAtJGxaUDf0NS6Mf9NQgHFbvhYoRgm
	 Wbl4tRQgbBn/bVKyWmSfVHl2y/nSRO/Uek1dTbO5HsuiK5CeWEXMcUYSRs/JwT6n/f
	 N5aHIylOkppeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64E4C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533714278.16362.7126419800579763878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f153901dabb94292f9596413b1de0aa3193b1e515700e58fc17ec07dc2dd62
Date: Fri, 10 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715337142
