Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F0D63B9
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766889834; cv=none; b=jxmVuLlF8MQxvtBsiyUNikCcs7yufDHUwyXT1SKsfNswPIHvTEOQzBTlL30dQU68z6g+B7558UvdBoxX2RB7MGr4srIqmDTKrhU0awxiBZyTvY+Iho8KFsD35Da9qqqySXSd/qFzon3AtFvCpp0mBKOwfQkBIEEuI5GtiE2oRS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766889834; c=relaxed/simple;
	bh=Y929t8mI7IUlXx6AcqtgKIdQxiA57EuFv91HNH9T304=;
	h=To:Subject:From:Message-Id:Date; b=opSg1+HYsp3aqWcdJ8h0NOsqvcnUe7m/lBs/EI+1bth9O80PqSFCDqfds5bBj2kF0BknllrRC1BnQX+jO+YUnfJZoiwxth/i2rHtHtwF9TONwTCTZkwBC12b1/rbxJz90YpVNvnNzxOhkT15mRKGx2rEUigINL2QfVvGuAMax6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ddxu8t88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ddxu8t88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45F1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766889833;
	bh=Y929t8mI7IUlXx6AcqtgKIdQxiA57EuFv91HNH9T304=;
	h=To:Subject:From:Date:From;
	b=Ddxu8t886uppFTqt/n3UyQZ+Bu9DihtBKE6J89jBWJBH5Rl5Ms76t7xZNZLWaxXNx
	 vcHEH1ROuxjCbpcwFHTK/9ljw6vuZ+dsA5jJAeqYc+AzdqkNWlEdzy4NyXlYpKHROe
	 KEzgPiEQMZvPMjphjxYt4cAscAUFhejmOx46zRCt/izxxYOLHt//2qj8fttlpgH8H7
	 4zrwz6+Co1pqhZHa0zqdb5X2zsey9IIy3LacpncDvQQMO+MWJkbkzYH0nuOxFtokwj
	 ExIqjFi8m21RjAUecjyt8BNogNAeaZwDrUpez3msLivfd1AX1h0QWkGb+DktRhDwOo
	 vM1GzwDBo4OcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2397E92722
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688983358.5670.5630597703905616338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce976e2fb3017a99c4d7ccf4067e4ccf082c248f562c01bf5f63646c04309c3a
Date: Sun, 28 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766889833
