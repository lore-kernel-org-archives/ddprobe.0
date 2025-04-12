Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331BB11187
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744417794; cv=none; b=ExbhRHanlvkpESOsHogUoyClTJ/XE64AENxR63J0Uxc2hzJ0VLa5ETWXza5PBPsv5rj90RzzWPg6l8P7OUzA0pAfhV6pPO3KDO0F1w6s9MvbWmqp4RDuMI6qMpUBy9Wf6iDZo5T+I50gieHaRWsuJ/zYEcWjsBNFrQDWq1J2jmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744417794; c=relaxed/simple;
	bh=kPMWf9jnYhYzXR8J0MMc9Ehxk/+npNMCLGDfFPhWwEA=;
	h=To:Subject:From:Message-Id:Date; b=BmW7oJkIUZLYT7ZR3dYcramCZ9C4tzluvkqM3+O4nN6LFI/PsRTLioc5f1iENJtYqPJqR42WBPHW9oofMWk2715Q/FSJcZxkaoCmcS49d3Jj4931TEJX+NYhgPmckSN5MBpWBZd9617qltvUtWQXrKuioVJK/UsZ6bQhVvJuLG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kh4+Ilf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kh4+Ilf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A991EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744417793;
	bh=kPMWf9jnYhYzXR8J0MMc9Ehxk/+npNMCLGDfFPhWwEA=;
	h=To:Subject:From:Date:From;
	b=Kh4+Ilf2ek93YLV0w07F8+YT/w5YzPikDlf6uVtV7nlH2g+nB/gS1OEeVYGTQPzM6
	 bAJbKrlnzy0QLIda7KOL3pHr7FBziH0yY2iIQ41pu8TbGduhlJn2nWp+yn/IITieqt
	 /GWfLPg5dMFr2oRsG3OSZTbHaqQGRdHxO+9FeVNhy3/TuappCdi4TwVx8YvgiCdRE3
	 678pKcXqyXgUzLYYfWAoCV1LEWwsn6ZshSxN4ecOXzqKzf/0kYLvIgzDKVEUnMo0mg
	 9xeHhdyAvsRU5yg/erZ5ayjqXKNFt8PsOUwUlrxEwvXAz4cs3+h2RQEqII8IoQUBSb
	 DKP0nwyt4bVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98471C369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441779360.21995.10605841251744155570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912d1ef9ff6ce2591c102c969915ce48cda7230ea5a27e2c891e46b6319c928c
Date: Sat, 12 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744417793
