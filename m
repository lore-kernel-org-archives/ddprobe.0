Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAAC240245
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736781954; cv=none; b=HDjk7y1cwQ0NQTY3D573pABO0axUJ948vvChoVy0O4mea+JuJoRTgsr1Gb9DcttyRm9LRS88y4dS7CVn8nSfhhOShjUcK+lrH9wDTAqegMz3RMFg1Vk2d2MOC2gTM1nZy6rtr1PwG5ooKUkqpwnegJc/tsdE5WV8Y+lh5bIkH+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736781954; c=relaxed/simple;
	bh=PPNtBgy+zV6oCBtlyDHv2scsKMN1AJ10gMFAAB+vuNs=;
	h=To:Subject:From:Message-Id:Date; b=Ea5Vr1TsFpk3qFFy9s7R6cWbmoAU/eIsqx5cGGOcnDt5mcCnkQaxNw3nyjHEuRtJ4atzoIhDv0yDZvLafo10N20bFDHWT2mGxxG/ClfK6MzpUU4QCgiFTK1danQ+dnMX2SmsaOs9E3HgPZ9QRfdxqtih/58q87TEuTIqjRatbzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHaldmdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHaldmdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A877AC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736781953;
	bh=PPNtBgy+zV6oCBtlyDHv2scsKMN1AJ10gMFAAB+vuNs=;
	h=To:Subject:From:Date:From;
	b=mHaldmdi9g/ChkHYTSBzrIufcJzCqvUNUxfco3TavD8OPDV8sEJ6ek1WS39jmazCs
	 7V8pr9i2fRsOB2Pe+QU7T3NPz+VcAL11bc6snDR15wavV7VL/S8/dGYDkDCjNjEeUw
	 D7UL49tt7K6NAuaNYVERZ4a6PuA+qD34SDG/7kxKeiMgWNSGdmLhYIYLxnVn2bHm8m
	 mEFfmgTPk9rtC7Mu24euM71vfvHmbnpkHwFrVsMJf/DAyAxRn0oLcvB3dCLZ70M+ke
	 czNst6ZhNp279tYrSOwyk/TLe2yJYG/A2w2+qOc/QSU6CyV32fESa4RMmL777zHMkW
	 DMIllRVfnxWiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E1CC02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678195360.11332.13896953384905966137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9fba3497a98dbd59b8556fbc922b50c61e2d12681afb7c78a95fb604e8801a
Date: Mon, 13 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736781953
