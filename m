Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AE115747D
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728048954; cv=none; b=UzXwG2pVR6nJb9nOMOgsB8/MOu44dWgaCQ8Wl58BdCQ2aCAIPlvIOFmgHVc+fr7l+HbwUJ8E442COK+/gMFMsu5ZB7YI+Tg0+hluFapsl47S3aDoBgpQZ6xRI3REtzvkuzavRX1L4zdNA+npVEy+yvDoMyzKLFp7XttSlOFMqm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728048954; c=relaxed/simple;
	bh=9oHhdO9Bc6AsX1dQ5Cow7Tj+pN00yAtaFgSyHstmA30=;
	h=To:Subject:From:Message-Id:Date; b=LVBk+7YFfgCphye3v2u+7RPmnhLF8wBhCWeKz6SLdXWAeHDrhJ7h5zQcnrk1qJRQLdCivhu1EHxJWk1boAcn9QNOgrLIK4jclhB2QfljjjOK58XnE+zQThmN3RVuCnWFYUmeJu7J8V7c2nier3Mb0AH7iqQ3UCf9uE6HizDl2Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T05kzGbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T05kzGbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36D5C567CD
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728048953;
	bh=9oHhdO9Bc6AsX1dQ5Cow7Tj+pN00yAtaFgSyHstmA30=;
	h=To:Subject:From:Date:From;
	b=T05kzGbeRUcbgdKoUYYbHrGmNo1ZdFCgNYLTaq9TM1sXG57R5pGzzjZRHIIDWX0+c
	 cAlc4wrS9jjdjLy7eVGPuTA17hek8LZT2kG7kNWZUj1bLZnXMB/AVIZGWeP/vKH/nT
	 3kTXc2V5qtZPWUl3zTJ+6fdNydHnXzlmUkTysm7sF5g0pSOc4r4BaorfiUaOKR5TwB
	 ANZsSgqfwnsq0rGHYiao5oSmRlC2aPpuQpBasCTFI0ffl67IXEJRuNnQL3Vv1ARe8z
	 J7JKNye+Y3bGXycebbq+onpoyl05SIYMDBQYbT8fTve7Lfo5Y2L6ndbonDprFKp368
	 3SAR5xAOupDEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A368FCFA77B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804895365.15477.15310235307142462028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26db5344bdca0e23b0b91c8512c7095781909a699d4885051be9ce1d2c035640
Date: Fri, 04 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728048953
