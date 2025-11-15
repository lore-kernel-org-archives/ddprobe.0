Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DAE1F4613
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763239854; cv=none; b=Gg1vM8uXmi3+7Z6LaYK+g6U4FyMOvahlkfywbie7vNOo8bFC83wVixAOwXJlj/G9vm9Fpw3onB7nZ/+bBMVvEiW0HurDbM5ivquU1oV2G92dPPKAfL4fuShJaDcyzryT9uoB2vxGH8xTLxg3TaO9snwlWVCUZFthnUODDx2HxBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763239854; c=relaxed/simple;
	bh=4unETJP65cZR1Gjt+btAOC2xaCfZi5NAQZy9EsKBjKM=;
	h=To:Subject:From:Message-Id:Date; b=BOH9Q2ajsVBnqt3/izEOWmgPREakRV0WLKtrLrhDYmd9HX1AdgUHFR34IUs7tsOQy8IZdUYfKjT1GLZXLMoouVvNSONVjXHtllCVQAkb1Z6esQxkH6CWbIUpbtgLyhVD566xCBSbvmQ16u/OolA+2TaDBSeuLJ6iBSCQFt0I/FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+mGJaQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+mGJaQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6425C113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763239853;
	bh=4unETJP65cZR1Gjt+btAOC2xaCfZi5NAQZy9EsKBjKM=;
	h=To:Subject:From:Date:From;
	b=u+mGJaQXIlSG5xwLYJDSGrBqqfGoGNee8aykqPqCp6xsCayGJkMaQnCvxgAqbRjiu
	 Z7JPADQsvSw88hd5eiGFB+QYjXhzXzwrgVFx2N6w730xir7wBi3aeQ4XNLDo/3glSv
	 +g/vdOuyA0yONJRQ0qFY7S8+dFGzhMIJrWoXTu/Mq9yTeY9/SBQ60gaaHW7zHtEy6E
	 Rpnm9Hhnh2aHNGxTR0EJ+C2pFpyu6urpueoMrhXLqrmQeREQGSE2+qT+16qhPzjXKL
	 9LxzUH72nDCZ1AZL0iogsv3f0TVSfbVN52a90bsRADk1dHtoa1sKz3gA8rqgQ/oUtb
	 nLCTOhHEmygyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98303CEBF86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323985358.27877.5466695536883411210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5529d20ce9ae4fb0330d39765af4fc444d267b9d42bccdd6a6c27eb6bd54f976
Date: Sat, 15 Nov 2025 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763239853
