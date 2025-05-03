Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D623269CE0
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746282594; cv=none; b=sKaJ2dro4L1QWD0hWjIz1R38HCb+RfH5xleYO2AuZNJK3MsxkCrUJ7VwY74rNC5Hph5j36IVtuMZwEP48AymSuIQgTlSTVR6YJbA2GU/Kn9HqBJH474xvdyaLJgEqAFreUnTTj849rx56L33xu5FQLRjSQdm3EOPfoawYYEY2OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746282594; c=relaxed/simple;
	bh=2CVjzSBKKwg7Fdp8TBC0xF8SqRQ+Jm5RPq/TvPACwuU=;
	h=To:Subject:From:Message-Id:Date; b=fCLJvfXPNiC4JCjwp5YHfgA/+iutoKKQAWR4HdoocuPsMgGz9x2/3B1kJExEq5bvSW2W6OKCE4Dh7RuHeui4qsZkRecJ9COXDTbr9XzfJ/ELn8TnvNiZ5K744p4r8fwHJsNWsE+KgOpJ8H3yCoRRGLi8rVzsSJ72cxv7w8tp15I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSQkCMrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSQkCMrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746282593;
	bh=2CVjzSBKKwg7Fdp8TBC0xF8SqRQ+Jm5RPq/TvPACwuU=;
	h=To:Subject:From:Date:From;
	b=PSQkCMrgB/qg1QJsgh24WeUFQfOsM19iLIK64M+qmq90mjUj3UQ2d6zknA69sbaXR
	 Spg9ByuygEKQQleyR/yN34gQvah11AbovAhNpVYQPy3SnQR5fnLYfRL3zziPVbnDhU
	 R9njNT+AMqS9h4BUbLFe3xy5OkmOaSWGY1+kXehhvRfAdcw0gq3grfjue5YOiedok+
	 Zwn/0BfOLqrAztmpqz+xoacFqCEtPu2Dg8vbxtcUiW4pwQKbwqJiGuMimODmebpp+h
	 36LtBdChKHjZ6nkb5iSSzr9aSVpv/RtSIFclHxjlqNF/LJjDdBR4SPmSt1K7xHxFks
	 0Qg71F0eE7FLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC86C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628259357.12565.13285673775946223411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735cc56eb43c5e6ebd42f1739356219a71497c05d02b83b5ed710a76c027ba4c
Date: Sat, 03 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746282593
