Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A51D14A82
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720389983; cv=none; b=taOrmXrxK+GHOWyuJdBxdMdWTu4OS8QXy7XiBcNzAhCorwrDChNa+mSE/J5+92iZKsU6QV+hT2zIBP27HomicC3BZx8kmBy4SxRsHBP7N/yQiiBF3mkuOu7RxdAgRAkdZhcyeiFVDAeXYSDwRT+wMzZ82yAnL5tzPZ/GfnVM3h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720389983; c=relaxed/simple;
	bh=/3zakcxCwYIlbIkIRhmcHlCLjGRN3k2b61jSpLvbS9g=;
	h=To:Subject:From:Message-Id:Date; b=t2vCUsUkPm29ibx+f0hebWslcMMCqQp88V7FoEZ1AXX7dIdNtVIgKrZKzbKQlfNVAGPfX/Dxo4mpawi+dwgNr4XNsUW/4QslRMtdq6cIVOp9co1I3uJ8yTY2gwH9B/NopaH1ySBVW3RQUS3BT8kl85WdWOGwNZi8xeSQ0FitWcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhUrsGts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhUrsGts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E053EC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720389982;
	bh=/3zakcxCwYIlbIkIRhmcHlCLjGRN3k2b61jSpLvbS9g=;
	h=To:Subject:From:Date:From;
	b=RhUrsGtsv8+T/CsFKVcgxXpmLf3QlnnLkptn7CdEaiwhrescmo4b2fcEfujBxL1uP
	 uH696qeWlLoTJPEflmnsUnz5lmMwDyL9MfHWh87Yg9ZCMjHouQEFu7y3Cb1Z4TSIxd
	 gqsdK826/ngOLpp0NU48lM/NnNHchMT2Rugxug/HXGskDZt95ZGCGZfVX6xMYGR5Fq
	 vjdCzVaKKeY638L/gdiBjwObWoppP0ctTJ0RHY3i9BLbH2XDuiPJ4sJXGdsCPHGTwc
	 JRsoV2vRVZ7O/VvxCKAxnMtzy1cOBgKH7wVrIvtmZkKpoOljHxSuwlhzlyVM6kQRe0
	 QbEKESNDYuKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CD2C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038998277.1126.2472499312694487018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86411df86ebb5d435e80c604f20a9367d712634f7a3cb607edc2e25f6dd25eb
Date: Sun, 07 Jul 2024 22:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720389982
