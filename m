Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B4726ED43
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761433194; cv=none; b=WdL2kuB/UgshM9b1yehqUhxa5HCf/G8BRnLyn0QGXkpNogwkcl7XvyPxw/TuTe/I4T3jqpkwOAusKwXi74J+P/iMwkApmNE0Q4MOcq0ZtHz460wWcGHERN1IROaqBOw8tA3DMyelo2yxP12hvqNrWjalh6EBG+9Nb6AxmREBsq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761433194; c=relaxed/simple;
	bh=J7RnLeNv7dsQamZ2ndh9x+qyyvy87sVO0xIe0rOOWhQ=;
	h=To:Subject:From:Message-Id:Date; b=nmbX68ElV59SxMKaCTyut+at5gx07ItdQ4tTGOStlvEmliBhoIFF9wauAQ2rxV4ZjQmHY/tvXa5iDJUblq1tfmA2hsf0Q2tvyMIATGswcNrZ0QacZkCNnAV/RaW1YU7WxO7QROmM1PBo4D/cNn2+5Wvh2WFM2L9Zxn6zGLeQ7qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GucySft9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GucySft9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C00C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761433193;
	bh=J7RnLeNv7dsQamZ2ndh9x+qyyvy87sVO0xIe0rOOWhQ=;
	h=To:Subject:From:Date:From;
	b=GucySft9ZZnH3kqmqOjY7ladcovrbPe+gX15BfMtfKHvCrBCXZRbS0VoDAUR9/rNk
	 dS7pRJFITAZDo2H7WQH2fCZWj5/Dw6azgS35fHaKuhYMxO3kAHNujtofmxRnmN291J
	 fjynsPpv6+JLUrN34vtKKKC5idyVpS54Ny9T8nYZPOFm8Z7Qw5GnHphbC0sw8zT7qQ
	 Z7dzPfZBbzsRq6K+NGyPsqaXQQ+wgIIkpOncId4kDfwDRKXcEoYv7qBPjSHd4cENls
	 SkqbmPg7P1lpCRaP08Ag+0L+TY6WRIu5Cw2lQlwY4ixfYIOa+CRnw1osDy4HHUlQq3
	 wg2POVwd6ckSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B69CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143319359.28570.4515778368536481143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df4f4860ab6c5905d8a66e90af07314e560476f3d4d311d4a94b1ed55de9739
Date: Sat, 25 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761433193
