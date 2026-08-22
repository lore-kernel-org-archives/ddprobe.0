Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C85314B77
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787404835; cv=none; b=WtTCXyVnd7h4BZHxm1C9aKRlSUDvSDBWqU6dLS2uHz4Q0jdGe7pG8446SpA20M8ywYEyFaPiHH764T8mjtfNJJ8KjM2bnqqzsFg7bzQMaI9RKGdhIUqmhMZpCqXEMZJRrPaEj/wQ1FL1nsZmj/69cRKEz792wL1EjZLU5PRJXNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787404835; c=relaxed/simple;
	bh=8R9qczKowk+1S1OsH7M5yFy7HzlfkgK4YIKoc5gdwho=;
	h=To:Subject:From:Message-Id:Date; b=PegWpak4Jk3kVPFoouf6/lwLHwWR5s3Ne6dtxb6KlIqDjpukavAj4S4zm8FPypBdTXXsnoD35wfg5kFRDPHGdxpEXLpTm+UD94teMldTK6wJS1TIe+c/MQdIwsWq4usO2HlT7EZ6cEBJIHeyrOpS0jZub3FmTD1qik+xNteZtjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qluWGtgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qluWGtgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D691DC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787404833;
	bh=8R9qczKowk+1S1OsH7M5yFy7HzlfkgK4YIKoc5gdwho=;
	h=To:Subject:From:Date:From;
	b=qluWGtgIDvAD0HQOTaO1Fx3lCVde7aAQEo0jOW1RzJjJhCUc8djrQfQpa7IaFpyei
	 uTUBZjTbCm6oFDI4lEQf72ZDM0FKpEJdMH1CuwStf2QGsGh4SSpN+YvMtmz5pRPeVs
	 6+NM9tUEis4QrakgZyQa1gZNjUVdU5CibuxWYfV5+vNf0jKHe9pgb+5w++WfVk5sXp
	 OObvNSLKJ72b0PuxgECZkEOWVb/URhY+NXnpBHqfiQOMQzrbGlM3ZeOnmrFVSUcDuV
	 3exmimj6HBiX/3r4W7y1tv95Uc18rIMo8KPwXZ2zrZxvwZ80XvDJZ98Jz02iK7K0qd
	 vzGVSwEh4+ZfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0910C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740483371.30346.8156840247050096200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8053168224d1b4fcb857df5488e9408f0bf12f5e5dab138287b91913135e7d
Date: Sat, 22 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787404833
