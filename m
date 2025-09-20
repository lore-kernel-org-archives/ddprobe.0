Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D071FBE83
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758383394; cv=none; b=IwGBQF6Vi0Es/pdrb+k6pAzViZRHW3Xo5k4tV+VsL2I0eNO0ic3in1vCCRdPKKMyBqZ8ALsUKa9my8NFX8xVWUFCxR4zhM6UN8v80WskL/BRkhA9Wu7N/5nSO9LV70QfAnVQilpHxwSBAN9mnR+0hUEoq9IWbiGtqd0zswMIdJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758383394; c=relaxed/simple;
	bh=V4jRsy33bD6k0PaAk4axeJ/FsBxOcNJXle//SdsZ1Bs=;
	h=To:Subject:From:Message-Id:Date; b=LSGkxzVqHDP5swMmKfyrAA4JfYKdRp4KzEwW7dpqVX3djHn3G4bsLJiyrrixKn8LyCcI4spFFxn1+l3v8OZEK0CL5DhJtKcDFuAynZSxfOBb6z7ANnvOxnEfWRA08tLoJrm8vjWOTiYz0RS2hlcB7wWKe36uPVdRgWfTqfG+zFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlSlTGu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlSlTGu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9441C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758383393;
	bh=V4jRsy33bD6k0PaAk4axeJ/FsBxOcNJXle//SdsZ1Bs=;
	h=To:Subject:From:Date:From;
	b=SlSlTGu+vRw6wwMiZWCE2nLOf8CbUpCIGyF1wNyYa+00G1CEeYVw956dx/C9UDBYG
	 QmaLLtd8yHQ6zMTWG6i1gSNY/BIzMLKZ9dfei6jdhJokZ5lVCEDoCMSvEJp2mh6bdM
	 QphSjEAtPBKtcF96WPKxkMvLI634jMfkeTOOH8qtrPBLw11XVN2tIVLhb65hulVkRR
	 FHrEjtNO43pqXOBG3IKYK2HPfqzoZErugWeiN3JcMo8S9QYsxcStMxlSazVAZSqAN3
	 GFlesVix8gyvySPwYuIL2c+HKgwj27jpk+ypYkkBASGu4FvERVZBvHLW0zdAT9+x6L
	 Vdi0Llj44ZW1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9638CCAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838339358.26654.5391238997969320552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233ed623bfbdbf64a6c1a939c7cf4976cde555ef85f0faa383b4f319240a58bc
Date: Sat, 20 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758383393
