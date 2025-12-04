Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C692F12B3
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764886374; cv=none; b=K0Jas/yPWyF6/AUNPg4sQRaaXnjy6pSFAAZclGKIDBzQ/P1iJrKfyV+JFnyWiVYYL/1sbeFRMPQWVa2PgBIv5qfD4DXLE8hwMgd/88pJENV8sTntndfqgbaxPPlWUUdWOsFdQid20t45vxoXOGQlzTfN0P7Q8U7vW7l/lXxUuBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764886374; c=relaxed/simple;
	bh=wm0XN5xoOzrjXZpmmUC9wUV2L9yT/702wUk6L/rM+Pc=;
	h=To:Subject:From:Message-Id:Date; b=Pu3tJa6uLiHG6b4gOjrI2je73dUdr+VDQ7CJooIJ90iQI8wbCk/H9hIIjARgXe56BxGccUlV41lX49VLxKVK8B6XmyhNcvfGcm/b8dmvkdWTGceCR5+11BJmzTQczdmjPeXBw4pVfjbUeXG/lppbjDxcF3NgJeVhnL0baAcc4mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5ePa4qJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5ePa4qJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3787C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764886373;
	bh=wm0XN5xoOzrjXZpmmUC9wUV2L9yT/702wUk6L/rM+Pc=;
	h=To:Subject:From:Date:From;
	b=P5ePa4qJeGzkg5VNRHv2TPvZGwScuaKInCZvycqMuNrRtt4gQlEmS0sA6mxYCcQpq
	 ptZbZ9V3tSa1DAZ0jwTLt4ZvGAEPR6pUcjW9v7/ZTzz0ZF+WHROicuMSnUHlANrAXz
	 ICJmlv4YLgIQRPb67ycUBfat+ChDxxWsnu3S0s7Cy8rBqhZsG5LGAlAMAtYM5T6jj/
	 s53qeXZY7r2LDOwbgKlbScCug9+joqS4R4M3JvcazsID9LLsA9zvdLP/frHyTpu7hD
	 pEUZKUY82zePWuT7J1i+vt5f3lsE/THyUQPd5x4iCmSoSD75YhuM3uDXN7+rPNuCHD
	 4Dd364tBF4cKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9284CD2A551
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488637358.5562.11936541609702755814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2b6dfe3b207c5541823b75b7d47c586504b77ff536434644ff1a40d28cb8c1
Date: Thu, 04 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764886373
