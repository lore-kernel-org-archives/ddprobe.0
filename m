Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F7277F12
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718784563; cv=none; b=Dfc69cwEBccOQCJySmR5W6C8zfugtOBmAk78kQnES6cwomlwi0d/PiEQhiynPWnzbGbeDJjUEmA+HCFS/7m8GpUntAorAbF9GlWooVcjWnX/2ybwGsi+IBejMJ/x+CY+ba2iMP34KIoGyzJCUfsDQ5dvdMY5Bu7jmtpWEkembac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718784563; c=relaxed/simple;
	bh=2YzD1B/8qnxwvbIB1ZF1UJITixOwABFn4sFGfho/PGg=;
	h=To:Subject:From:Message-Id:Date; b=HW0DKZTKr+4ixem5GW4YvQvajMVkS6OplFkh6rMtuwLtlQF+v9s1qEYMMqXT3nNjy8sT4Lh/1eHn8aW2t0QOWMuCzc3xD8mloAIP9Q1/iafK5nhdAYi4/WHWo5f+pMhfZSrAKI7gjCvzV/eFaD5yTRGR4+I0dOAi8K0eyWxmM7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8JbUOTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8JbUOTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3764C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718784562;
	bh=2YzD1B/8qnxwvbIB1ZF1UJITixOwABFn4sFGfho/PGg=;
	h=To:Subject:From:Date:From;
	b=r8JbUOTOlqCBEXrU8rtw0qFupmTWcaE6Jk27qMqbp/lsC7w8pXCcbLjinF+C7GQfo
	 c43XhPey+Q0c/850ojn51XQl2NB9IXaXZtHLIn9uJiWMTIDtJ4J7ZY667Dm8WWHe6j
	 8BjEs3gYud0rLQSX2ohRnhYmv5UFNVYb1WMcDpigTPJ2QFpmvCBGIXGRSSYcm06ef6
	 NxfkJvjtOZN3ElAJHPvb5iBt8BgoJmhg/rpTIaMQwm2GYcvBW/e+C3quqsBXesmGmn
	 VmbK9KWLxoEBHUxzPzcZRXRK/SVHJV7v6nAxe1xoQ/bQEzjnvGAHAyu0oH4NW0Of4Q
	 JOgqY0aYnbyyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C2FC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878456277.22345.9039388833563688103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e6cdd1ce00c859e63de6e084360b73bc27a8ff3bdddb8f8615815973316d64
Date: Wed, 19 Jun 2024 08:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718784562
