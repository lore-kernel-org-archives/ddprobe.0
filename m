Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A92118CC15
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745830194; cv=none; b=aTjpVL4rC8BriNze4o/0BRAUR0VAqFW63icFO5hjjhCgj4e5LnvBVafHrAJqSlNVxsg1GMIzepmApBvshV9vptt25AqMEkLhdQr7XN1lQNWK34sShFPd2ylWvAksXtBqLuWE3CQk0Sg9/tGkE1Ctb2RG1FHjQeQBWvjsuX7W9nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745830194; c=relaxed/simple;
	bh=IMZ96DTaT2ILSI9ir7kYbGqiz/eqMbWURf+T8zGkYdc=;
	h=To:Subject:From:Message-Id:Date; b=fy5ATSNwwTNFH5JipNSReKoEq6Z21kJnSdJKExOFEuiwmwF4zpyH8nmrUlyIocvVE0N5p+f34kgZRU/mIvoFUhrQDfnSGgDsPJc0eh3K07lyrdChhW63qYofVnMH080imUSfdKiEXMeZTNWYq191qn7tnDMtvRviXvXNfuIKNNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Huvs9q0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Huvs9q0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A342DC4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745830193;
	bh=IMZ96DTaT2ILSI9ir7kYbGqiz/eqMbWURf+T8zGkYdc=;
	h=To:Subject:From:Date:From;
	b=Huvs9q0NhqjZllmJ6JFryyr20W34WSCA/bizuTS6feX3ZJFIGWPr5Xa+BmHkL5HQ2
	 JdyhzJWUXxMwQwDSDejRpgeCTnQZEt54VF5jNPqndnh2ZAkGwFefDhdAqCQpPJf5CG
	 nlLQ4nMu96/9CxdeXVROw61+4C5izKJ/kLUqfZd8dSHFWf/f2RYV9Sd7QPQkrjmtRd
	 99yFVMeImDWCbuGEosAACQ/OjISlKdBY4mX7HAO0eiYUdeJIrdjeMy02yW2OHSbX5t
	 r2bA6XtZ3Et5k6LTTxfQO6be/YjbnOt1FTpQbiteO5dKuhVKMCvLedheWB6avM2Npl
	 EhonelnlsZ8YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BCC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583019357.3022.877016708230155277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84245cf54c10cc099974ff8d7c2d3ac9cf6af875fedc254f54b3c9b21dd17b8a
Date: Mon, 28 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745830193
