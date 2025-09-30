Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A412940D
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759217394; cv=none; b=KupqszAAbpCwbIoqJAsBtqsRpO1Gb5LBM0ftA2xAsXC4Xphq19Up6TmePHwNtLSHDh+c/UhQA1eur3XMXG7JtnaSu9J7Ebl83WA2qo7DTQC8BIhff0t2lyPwomcBLZdgknAARhfJ3zjrRgiRtkfUyMc9+ye95xOyLL1B8GuezUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759217394; c=relaxed/simple;
	bh=pAZfPriQ+tLghFeHR9/3dHN4hFUn6haS1M2OGxdQQrM=;
	h=To:Subject:From:Message-Id:Date; b=P41yKM1IEaL0UmB3PCKNUPndLaDQolRYayRg7f+lq2MMt3e0ttv0Fv367/mn1Wnj6uHOQsjzaoYzhyLwRsdnxJyP1uc9fxkS2llLhPYAbtztXKIgUJBSHEFMqNGV330J3aVTL6xWrUmX59uAEH8jNuKrk7F14C+ClaORqHYr4tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASaDkGZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASaDkGZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F346C113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759217393;
	bh=pAZfPriQ+tLghFeHR9/3dHN4hFUn6haS1M2OGxdQQrM=;
	h=To:Subject:From:Date:From;
	b=ASaDkGZJndu4Su7tYagb1D9KtIV37yGLFHhgn14x4ZYrGAef5SAv2iPDX7wGV7diw
	 H1+O95P4+i8M39Sr5yReANJqm1H5KO3IHfyOYinxdFKYICGX/rzLbJidQ+uT98nxH7
	 ng2H4ZytSgDdX+vIC4/b+ynpP70LeJFTqUmEHTl3b+feKiNXmp09ZMaSkhWUEJrDAy
	 90EjvjGg8AmJTVmZ/4Zr/PJ9R0QB0o3bHZU8munJh4XgUasb9ngtu7sPfKPXzZbsow
	 1lLGZGeGM6ZaMuwD8RNT88FTQ+WsrOUZkjf44MURQ2yI0JLP02Pb5cidWg473rwnJB
	 BrjvZxXzPLxlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DBCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921739358.15149.7146424107391635471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421be9efc60059aebdb72720eb9b649fb5cb5f23c08471bc6572e94ca02f53d5
Date: Tue, 30 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759217393
