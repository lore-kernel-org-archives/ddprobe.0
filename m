Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB031DA0E0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741546734; cv=none; b=Qr5JSIi1Xz6t+TY5vOV+O3JAVSA37nl+n9Q7IDv5QSOUD0VtbwjZS2aTBrqpG1EXFYPhsscSUgUvURahFngBVuggegCLxisMHxzLD+apGcBDusklrKa6ClRxD46Hqvb7PvHIlcU4R8Y4UGtjDEoa5za1YwgoHSBBB767oRYhWjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741546734; c=relaxed/simple;
	bh=JhjZFyIAIlAU5d8qL9H8L5OK26Z8WqE26k2O/uLQBts=;
	h=To:Subject:From:Message-Id:Date; b=c0sYz0nVMmsuhkwGOkxGyzKbwWIdp0/uwwP6KPIMh/+bDLqTo3BYeMu3LFmciGInXUd1Ce8D9f3H9H8b412Jyy/q0SMFlLZKtb99AR6EOoE+VLaMHx2gWfRtB0BTguN4KXVK59nrb7Y0L9pbCr1ICv77AqCW2z7EKS5QyOr7+/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YltFUL3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YltFUL3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6321C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741546733;
	bh=JhjZFyIAIlAU5d8qL9H8L5OK26Z8WqE26k2O/uLQBts=;
	h=To:Subject:From:Date:From;
	b=YltFUL3PcjBDXKibai71wwjhJiS7CY0IeJ73O6s3Weupowp5X5+FtT0WAleIHWS//
	 5Kp6Q7nOT2ny4gw7BsGzysfx0S/lzEGlvukrVFT5umjpW4gzVPIoTMI+1mqevNDaoC
	 E75Y+q/kiIJJB6isXTA0dOuyhAL7Tg6ND3XEElYc1ZbHF5nNxwWgo3EjBqjyAn8vv0
	 TBtAvkLYmu78eMgqmN3qVE8x2tfMqAzmNqcbEygBOfR0kuHK4qxeU1zx0+/qry/NXZ
	 MB928TRXKxbqiaeYDH2n/GjPLMfAy/xNcvNeFwikg9ntHrmoaT4Lvq27L42KsHMoAd
	 Iw/0b/zwPHBgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900ECC28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154673358.3922.16168102096286615353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec5bc22267f152d4b2c368b2b7541a3bdf44507e1a4f15e835e7022c749e139
Date: Sun, 09 Mar 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741546733
