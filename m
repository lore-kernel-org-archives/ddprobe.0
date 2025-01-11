Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D17B1CFBC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736635554; cv=none; b=M6Kwly4AtgWZy1EIw8Gcl6c8Rl5hP9R5xqRyu71UKNZOn20TDMUaS2vu9wsnk08BJSB7loux3NyqaqOsM9VHmUpKpQys4pCjwaQ+H590g9HMeT0HePONPPEFXBob66QUUKg59d23XsBwKbW5FdP9pxoyc2BEal8l0VnhGOO2raw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736635554; c=relaxed/simple;
	bh=8ps3h5Xz6F2m3O/3ihdFPSd+d7fmy2CbJBRSAmkGPKk=;
	h=To:Subject:From:Message-Id:Date; b=Jre9o5jJf0PJioKAS7MEz8/K1DNo5BlCC7KedgtprBwOFvyiN3XoIDqd9QTX84j8bgK2iM2Sb2/G/fakU5+TfAUG1amG39TAXrLPUGhSUkae8Tg7jtGx3F5AQR/hrvq8Cnj2YGIWLe+peOrxpO1DDiIZFlBhzu95s29WZveSKRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cl0MjKxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cl0MjKxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A612EC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736635553;
	bh=8ps3h5Xz6F2m3O/3ihdFPSd+d7fmy2CbJBRSAmkGPKk=;
	h=To:Subject:From:Date:From;
	b=cl0MjKxHYcqVrN+1FmBKX9UXkoX77hG/LNvvSrdXODBDuSeYW2rN3RyRcFgjrqPuj
	 BoSlISzEAlic9QB7Laa7ag6P2Rvz29ONI9hgPG+bxZ9eiMvqe21pV+68TiipgT0JlX
	 U94XlPjBV7G7ZY+CngBkRSDf4CWztt/doGGePMnVejEybs8qvMjkjaww4qIQfp/grZ
	 Xb2hw6QR93Vy+lIRDzr29+1jZxk4d/WnZrvkhmxf9gsOYGBZFe8cosSngVCGIFsSUu
	 PH9IKEpZKFd7tJCa+z80bUvvr8ml63azobqsd18pC7qIKNutO81KP5iPcuzyibb86N
	 EQZGgg9Yum2PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B2E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173663555358.15361.10021275123145252394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732b1aca21955e740b4404ff1b74c3f3934684434a056e84a2bc00e7dcfc5c38
Date: Sat, 11 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736635553
