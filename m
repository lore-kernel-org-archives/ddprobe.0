Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23739231836
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772350494; cv=none; b=hCS+3scp+LbTS6shzM4za6pEP2sDfjbfXRNkOlKg56P9SgloPChdibVDp5+Da0bD7KbAxhYEuoYIvzZH50it5Sfa3/+6eh3YKE/Am9slLPTJYChMLz7urLtKvEal55QirYHa93kcN9MRzK6MUQP4V3pf7QpN3RYT92B9kGV5SIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772350494; c=relaxed/simple;
	bh=3no1UNaKiEazq2UHZDt2yB6bNd0HKWSHnT6Wl8MqhkA=;
	h=To:Subject:From:Message-Id:Date; b=KMyAmr6nithaXKb6m0SqrQoNVeK10pJd3PqBud0Gv8nkFa4xJT00oXWbru+XA3uU81dXEa++w10qXFXtcvXHI0h4pe+e9RC27ujCzVCtXG85mb501oHOpqKhoH+lZeaEkTSjDOUQYgpze5ctsPCndsRNlYvcwfPVuXxoU5T63Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlAGEM3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlAGEM3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FC4C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772350493;
	bh=3no1UNaKiEazq2UHZDt2yB6bNd0HKWSHnT6Wl8MqhkA=;
	h=To:Subject:From:Date:From;
	b=nlAGEM3Q8IZO4MVP0AUyOSuqsYJiMFFVq2Jcp+qsXbDd2NzXDTcte1P8ye8gF8T+a
	 qisjlS6pRkxLh5MqQ5tf++8lPjkQJt1jAxiH4Vzdiy7EMWTZSr6noJ0I3lTRgQkTLE
	 n7Ogw6HpaYZV3Kw0IM0JUnd5G+83UxfpZLh+1+kzyXc61d5kV+8+Tsx9UvrOGAkkHy
	 jyo05SYTI6ghvHIKeFGbbbLMWEJNidgBddcE9Wa0HM/b+EbzRC9/q4hKffMLs//BBR
	 py7IFiHfgORTz+k+hIdQFT6w1E4fBjztwjNWT7k4Tggz7nUySVgMfr7anKqakICT4K
	 a54kXbfzP+miw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C53AFD0055
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235049359.14857.9591862127472557824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a73d600c5062f94689ac4e86b63e959a3056ac29e98f8583667366a58b80c5
Date: Sun, 01 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772350493
