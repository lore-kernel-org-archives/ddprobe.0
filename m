Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB78EACD
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746244196; cv=none; b=YBVrwiNwkzMDXJqOtnN0SV1qcMlQdDeXfYR3jgCBSVz4TnqnzvnSXMC4CLgOQhnpGQ6CID2exSuzZYtMU0uUUgKB9Wjsh0tF29avZKuXHfjLcyuW020Df2J5aWfitJxT4ark5F5OP3WBTd4WoBj6BNRFzSpYoudG6Yxqbim2APY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746244196; c=relaxed/simple;
	bh=qzMl0kFuWVUXia7aiFYlSo6lg+yW1UHF6mOHq2zE1GU=;
	h=To:Subject:From:Message-Id:Date; b=UuYJGJ4lL58mj2S0CCQyCWCU/IVJ9KruIJqxdq6LenmuvFOG+cfUZkTDHEI6ecT33fCP/dUswbKkpQ2MO0J49z8QwdDMHkTvF9K4gdCrgFYbCQVwj8oXaqI380UAwNg3o7hU+FD1rbS03YNEYwSbg/XFQwW45s6hNBwWYy8rHrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FS5iZBzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FS5iZBzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7337C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746244193;
	bh=qzMl0kFuWVUXia7aiFYlSo6lg+yW1UHF6mOHq2zE1GU=;
	h=To:Subject:From:Date:From;
	b=FS5iZBzFuasafoRJ9Q7H7GNW/Vr6EMq1/YUB4nZeXMCpcqPyocm8gPOefPBcB95gT
	 t16V0N85QFo57JO8KlcyMygW8cQC6y9kulLisHrC8mjhOUyjLG5RCKW0EW8fhAD5F6
	 u+7xhNvTbUldYHxn09WUPPzl3mNmevBWDy6SoAAe7AYHeBj+h/wgqsWUZvlaiQ9Zx1
	 mE90Ss4qfI9kVC53ks2zRZrfr24th9qNcaKktxQsaPE02H8SN13gI/vNG7JwaYvUsy
	 e8gJdadbGZPhy9S8VZ9tiUc1CfpyisKJ100tYllFbrEUtcT/pta7eub7l5FNTs9UQC
	 dB12QrOzbFbUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EAFC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624419357.10287.11780042809900305353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c3525ef54a8cab41d776b6eb3ccd586d3b0c80f71684badad00f213f3caead
Date: Sat, 03 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746244193
