Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493E012E7C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719132143; cv=none; b=C3u31q7k15yP4Xzs7l6/kP8SnZ+VWzd7ERWaVGxSbyOIOCkuZ54i6W/WaR5jY2ZyPF+QpUP1rPuIoFkdFVW6Dth8fxXo3j4b+OaBpI4VRahiGg5fvCnzCVCp6AcPoTJ4nPoHSUvli7YqiEEJRs2AQg50/iMsXQKlCKJg5a6gyh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719132143; c=relaxed/simple;
	bh=88bG/wvUAOsQQvF2dSLH/6jnWiVbHKwvbmcmBS6OH5I=;
	h=To:Subject:From:Message-Id:Date; b=OtfEhs1mqUNWERM/33IgBmsKfyJebmGC8K7eZd4M5dRlYijZbvZTms7Jnujwq5GzkmsKOuI/SPExsqnaDgCuNTx8Q910fRFSv0guQp0qyuFIKfQcm5Lrlf65rBNqWAbgYEuCWxCH6ugoz/EGMKHXk0TK/WNC8xITT9rCoSCHQ3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rViqzepU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rViqzepU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3ACBC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719132142;
	bh=88bG/wvUAOsQQvF2dSLH/6jnWiVbHKwvbmcmBS6OH5I=;
	h=To:Subject:From:Date:From;
	b=rViqzepU2jBu7ttOATinjouj+TTuAcJV2pKRbTqCBkjn/VLRi2+lbztbvMA+ZPhU6
	 kVfSmixV+8Ig3xlH+0hdeYr8NGTKKxc3a17PL4FcodDJM+grBCACMkc86uGZLi/zGe
	 Og+soQ0OupqJNBaxg/jOcm5ynVgQpdj2HnEd47yy77Jrq3Xtn93yOgkrsqiCwFs9xn
	 RmZFywDIWJhuprHHIYaDTlFZrJ8JA13dPks1yDb+7yQHdzjtGBZlnQPrCh2g2XYuKA
	 zJl2msk9KXtFjOkyz0nGj9IT4qS5X5D3krHa5jy8jjevT532Y5/xWgCM5OtZiwud8N
	 Ajh4D9uTxom+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07CAC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913214276.20654.10497772850609375121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4df8346abb45cb3e273cbd096c3fd8259bdeb99f5c7ae5dd2e9524af0addc18
Date: Sun, 23 Jun 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719132142
