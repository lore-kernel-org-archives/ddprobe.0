Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2772EA480
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791230434; cv=none; b=W1M4s9Sp5WD0zJKpnsZ5k52OndmKdc2thkGq6Z0i8fufIbCGryRuhp121D1opom+5QopUitULre4hCoiCJuKOGFn8ZG/9JTFa5QRzDnfvGXl6Xl4itWfmCNNT5jkjWaaLnQU26QC1Fan3UK0TIrbbyr7hi+RvCz4fG2T+krltFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791230434; c=relaxed/simple;
	bh=JavHw2k5S2ywDJX4Kwskv6j9fUtA6uP5f9LfIie666w=;
	h=To:Subject:From:Message-Id:Date; b=HxSqbsOdyZLV7jpbE6TwaXWbv+LzfFL/v58EoEDDB679ImAuZ5n0XZOr8d7Hk2BUxSf331aiUOJlQQUJPUdQIoYdXVKnFjcf8MUuqZbmeUnSMdsU7x3sMJFH1si32d87GzuPpZbCnif0RUDCZkH/PuwgF6axT2et0Z+67hYJ7qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDLATLkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDLATLkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD431C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791230433;
	bh=JavHw2k5S2ywDJX4Kwskv6j9fUtA6uP5f9LfIie666w=;
	h=To:Subject:From:Date:From;
	b=aDLATLkXUNDCgzza4gfB1jqL/tv/uFTM6tXxPXDqecTZpv5ywvmKE8vqE/AjgU+H+
	 TQ30HMGRsh7LJvYekOx0BceSwA18oNW4Olgukn45L5ETg2gRhScK4YibIB98jbLFld
	 PGc2wI8Yj/QXd+H5ekKTZ1XdIEpX2tx7fJPQNfJ/uwPVwOsVB9VYpNhoE715yVOFVw
	 F2Fa+9hTGk+WUkosStFbZ8nsEGU+qQRnMT3yJHEIQ6UY0WhUfFi8Wx8dVvz2qQIJvu
	 stDYj4t7CktawA0ELxCJ+mT5Qv8jrVPxNeW1+4qzeibFefRTaWqdm0IQKRbMieXts4
	 aJIdvFPG/4SIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB261CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123043369.27607.14357998561837987800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9245708c0627460d1a028f6052f5f70ba38ecb9a6c3cb89118be9bc51c920c9
Date: Mon, 05 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791230433
