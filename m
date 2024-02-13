Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133924205D
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707826697; cv=none; b=txzJWcYEcfN11r+UwNum0gLG8Zwsp1wrG3QlmF4zFlh7NO4aBoeT3L51qDB9VxUmqAwsdb2bFu//NeqOkqIpRCEPIb8T3IUwAZK/V/he3tox2qr+kD7PC0aOXJfDzTtGw9oNeAuGaJdfGBI58Jf1JGSVwGjNVybqwV3BIvmOvVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707826697; c=relaxed/simple;
	bh=+pJzUQtvDfs83kosBEreJfS1blzvUC++mv+6TpAoJ00=;
	h=To:Subject:From:Message-Id:Date; b=T+aRFrge7HVNzEh5knCijY4v1jlDwVmjrjfRCluPR2RtzjUrtybSPK8O1h3GrMcvdnI58zmHkiGbhpw2J97/+YXDSvsRnObK/qxT0gmS6Z17E1fiALJxpJndt6dD7ZkUsuNF6tmQiFPa5SvGr1Nglkk3sueYwTt3LfSosfmmffo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMp+/PPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMp+/PPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B5DC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707826696;
	bh=+pJzUQtvDfs83kosBEreJfS1blzvUC++mv+6TpAoJ00=;
	h=To:Subject:From:Date:From;
	b=jMp+/PPQWQCrN5brjVzVlhS8aeacDbwLrC4xanZqMu5E0YtSiLFK3K9p+y3m6ni2A
	 417QjMEGW7hpeqotnAWzEcMMG3a3QOoXSHtMMtZNlGp7gEpaJn/kkISBmU16Y3f96A
	 kpmmLJz/R5SocZqZuXet6Z56LXNHUTh3ZQwsz9bdj3A0l4NDlK9JvRcaewtANYVbib
	 H8ERK1sJ7mcvPlS792v6l6i38tDWRgk922xJ9qRNOv8afO1RPfTmFwX57hESraJjjF
	 wMRpnibrCKx+loiTqwg3qsrAZ3iAdW/mmJ8uv+IfKMoYBI6coNjvmiC42p76+zEKAj
	 IHh8i0vJGEfdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A0E1C48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170782669642.8465.18014584042662084835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67eb98d60b9385e17b298868c720be9272286e157843d7ad8e6415d780a5c43
Date: Tue, 13 Feb 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707826696
