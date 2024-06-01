Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D43CA38
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717203263; cv=none; b=MzsY7qK1MEfc6AA4f30GxTjDlNEIRvL/q3Jc5PdtLbGnZ5hsNsbp5nJn71jw+J359Y8J+Gh5t3D+M3Sgk6FIEKC+3dtY+LPw5h7pXspg64a2zcqYGcTJkTAex4ej1Rb7ZmfAbZnzk00Qbrq1J6iLWtswRvZ5hFxErg56g3zz7KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717203263; c=relaxed/simple;
	bh=R1QpcKHhgZ2sO/v6eEzuwJGpL9ZrDFc7FDtsrBmDGXY=;
	h=To:Subject:From:Message-Id:Date; b=MCDSwPB4NU0Fd7KoopACKW0k/8rVIw8Uz0eIhp+WUmOmM7ejBiXE5NKLOZ839vS2kM72uiMTTEuWUPXV6jKZHObX351k5eOAhu7iNshG30quRxHYSGnQuBaI0MXw+XD9xMld0ni9/6w7HNzkcJS5mLYA2MU+qtptIjJoGtrAjpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7VGYit5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7VGYit5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD30C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717203262;
	bh=R1QpcKHhgZ2sO/v6eEzuwJGpL9ZrDFc7FDtsrBmDGXY=;
	h=To:Subject:From:Date:From;
	b=T7VGYit51/OrBfn8Ib/4o9qzpS+A2AyMXeAxMzteyuvIpinjM011EOTS5z9QO/dcj
	 /s/2t8lTcHUxzToTVu8ViHi7+HZI4jTram8vGz6IyTKcIy5ePrVIHnxC/imviFBHmb
	 Pfmi3krv+JXYFbLRvihC9QpBT4FThoHhtrPAISHq5KnlENHOVEmhxM6IkGDgYpVsow
	 Svpi3CV1WUuIHmx/l08EfD0Gf6DDdwL9Ib6X8dTYD/BR9Orf9mMZXwxrKo/nTTDYVV
	 B5N+/9J3yDcWUhotfsAEFhHThvoGU7jfvO133Y518ARvvB4iyff6fJr38rZLCSi8GR
	 9ophLj1fo5Avw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40A0C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720326279.14822.17036599207955032654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e732652397e55ac72518d5ca4ab2ebb9df1ef638501acb561d9fb4671263e07
Date: Sat, 01 Jun 2024 00:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717203262
