Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB6027FB2D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752115794; cv=none; b=SPLLGZzntP3B9yTuWsZrSBM5yughNgGYo2TYYC5g0iKcjFsdeYawkrKumi5er/ddtTA/o8ETwkQK+vlwAYYLrbW04p8x9fDTJ855ok6yRvlt/R/YFaEtEGF2mor6N1m/3xdKkCzl3dRvmrSX593KrtMXzyNY+eeHuM6ISDAfq7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752115794; c=relaxed/simple;
	bh=Ytfz91TQ2MGg2SoLyG2M3hjMuUt2aGvGhfn8XkcvI/U=;
	h=To:Subject:From:Message-Id:Date; b=QsDA2Ud7eQdbyW0okDe39lflU+2dwoNd4HskHSsK40zgChSBJ8kUFPk5T44+rVxhfwvbp7PAHNcqCDgw9/aP0M8JFEZKZQufBLkPozcH1MqoIvN61AMuWWMis5nJkyWR8E0o0mp5S0pECCMDNFmN+qacQwwaDS6+ESE5Prw74Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZnV0xlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZnV0xlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5D1C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752115793;
	bh=Ytfz91TQ2MGg2SoLyG2M3hjMuUt2aGvGhfn8XkcvI/U=;
	h=To:Subject:From:Date:From;
	b=TZnV0xlguIks36BtnzBrCsFV8pZXnnEfS6IBWMOFd6C4OkP9VfHAKGsZsHoQkHyJm
	 f6UAo1RAe/NfaXCw7mv7X7B8LMu6ssFlLIAB6YDPEdQNJMi8/IdaeODRxkaP64+7A/
	 x4hgHIgtKH3s6dX84BGNhHL68jsXtSO+bqpqO+16sIoyFYW9ZIx/r+N7CLaVQNkH7t
	 a3gANSuthuvfUVwlKidChH9tM4fFlA9LdanJJiTmPiUaHSONNMZbtUWk2+M1nTDCdb
	 n9LbqrrScEyjOPRCROvvs8JTf8QRRXjetilfG8C5SLQGx+FP7fs+YH5V3zqn20+uZS
	 mA8YmcnnMj36g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC87C83F0F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211579357.17906.9989535669934428780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05918b506c0204f4fa7ce3baca560a11b28133739481723f8bb7f93725f60c86
Date: Thu, 10 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752115793
