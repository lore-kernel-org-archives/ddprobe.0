Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5817E20CCE3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736511955; cv=none; b=uE1ZwQoiP8p6SAFeB2YAMhDzMOrUverIQVSFMUJp4hV0hP+7hKJNVW+0wjcRQUTRSBGcw7wf3HU1iJVitvc0kLSj96v+rzQtrRwGjxPYBdYh9AwgXDJhkmXiSadlHnz0IsDPGGrx/l4bQPraI2ZaV1s5qO1P6D02sc0kqc5+f2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736511955; c=relaxed/simple;
	bh=Vij+PSxw6TEEzYv/jbuyDyr3LrFN+wLsF98BugrgR1Y=;
	h=To:Subject:From:Message-Id:Date; b=sfJuO/bUsImApERtIeD1uM97fXwJ+lGhTGUmUQ84BQjx1Ua0+2ME1Pff4PjJR47755XqPwYvV4ceDc+VNXPkLi7Bmv4xiTeaYiDedH3dDWSfq22P43ZrBC/SQCWwcDlVGvvWVyvTrl1xK99fdL9MDoYFYxzUHFZT+RL7WiBfX3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3hma/io; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3hma/io"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22A0C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736511953;
	bh=Vij+PSxw6TEEzYv/jbuyDyr3LrFN+wLsF98BugrgR1Y=;
	h=To:Subject:From:Date:From;
	b=G3hma/io68IjYgH9IGSNBJ7GG6Zg1SYm7WjhqptiLOr3M3M1yXAER+tsx6X6ZqJC8
	 OebKTeTrGo/4ViAT8Xjv5ZFbrsT/oNoUo3BkHKo5Cr7LbxSJ/xvaxJzWIu3B2IsbPr
	 V1gWizkVcEdq2DAdsJOiADNw05g2NMG1PxxbxeB9Qvc05Kr3qwzEb+7U4bGyC3cDz5
	 DT85PDeRapZlQotWEH27dWv1YxrfYouXj3tfGPPLmEBBt8PXiLymUdzvuybUGHwOnG
	 8DKE65V3mRefAEhIs5f/wiSKCi7Xk2P5+uzueXh6jWFAB/iCELJo3AktUGuMJ2LJtq
	 o6iFQ7Bd0KrvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD699E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651195369.32271.9139515276518356180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2214012679c31eaffa891a9e7700f9c01fb3f3b3e8c9dae989ed7ae2055e143d
Date: Fri, 10 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736511953
