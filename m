Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2A746B5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758382194; cv=none; b=rex9uu3m6nkU/ihAER01zVWxl28jzpG2bkCEXidmvDOW1ojetIBr2Gd8dPQ2aSqSbuaPJfevL749HRjXFQ4+xoD62kt5Rx2HxXBCfSS2ruiPwV+eI+nMAoinIFpDG1KU9Um3iom7jyjseI9v35TpcAPrlkBRy/BHkfRB+7FJF4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758382194; c=relaxed/simple;
	bh=OcJanwLXgiGBBjW7dPHBwCR2q0T39A5mC2ROs/0/3dc=;
	h=To:Subject:From:Message-Id:Date; b=Xv0vKca4CUYECC21BRIBhEDbxH0s78+NFS8s+I2p9zTNsiAygrBiF5NssTQ2oX2gVK8WTZ2uPWHpelac1FMatbctfKPei4Rm4vs9JEM6iomnRJFoNcaXFQ7YbP7echLKvetbsSrgtpxH3QE8yCNqEVAfIJRYQjMB2Bsfs9uQF7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQ4eQrXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQ4eQrXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CAC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758382193;
	bh=OcJanwLXgiGBBjW7dPHBwCR2q0T39A5mC2ROs/0/3dc=;
	h=To:Subject:From:Date:From;
	b=SQ4eQrXvC8CCN9bMpwBiBHmUNYs0QH09YYIHVOOtYh/SdJ0a/5lNPIs8CvkEed/pv
	 F9w4HMXNdVkWf7tgHZTrI62igxpX2q5VKaVtkEgNHVdhKvzb5VssAOS6KQhVtqSLFd
	 yM6YY+21uhY+nOIznpPCo65vlr8vcB3dgbe4Gp05NDjpl8BPSKov4xvWdy3hrOAgWZ
	 IkBqyivazIqoULmxcnGK2A7EYPzhwR40ompwNJLcOzHgbADU0ObpMf4oeSEavjmMah
	 H1l3JNqiBsM7U8Jn+BxKb0TQNYckt0AXCjDoVGnEF2il5TOgEUQKCfUOE0ksdiwVCn
	 9b5Kt3jYNa6Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F963CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838219358.1711.172144188583880541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7060139dd2364272c2ce4126ba8340a01a4d3b3eb4982fc14d8ad0e6859102c0
Date: Sat, 20 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758382193
