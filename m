Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0551F94A
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745046594; cv=none; b=Ztzb67h0W4jq77Xoo/L/ao8F26ZyPDslYmdSb0y5mFlKCushkFlN/VzbN3mGYdu3rGgq24OsG4BiIsIhY+Rdh8WbpUg2cp8L1GeMQSSt600K9QeItri2Ilu4fY5wMuBFeejsrcK763OGz/jW+jr9zS/kzlsm82pWSBOfeU8nRbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745046594; c=relaxed/simple;
	bh=2Gz7oX3GhQdOgtkcj9wzJfA9fNij1oKDLpdERSdu5Us=;
	h=To:Subject:From:Message-Id:Date; b=UZIqpCQjHL5xTsGWLvtgTDiG5fiUQDyTXQEIeOdY6QIFO/hKJlRKz++7rDnwQ+tKpiUr2IOmu7d49Q4Er/LU+XTxl9AL0tgzs89pzIzwqi8s++DOFEmyjZTmDPk/HKSVO1vhU6mUVJW6vwAE3dpP7bqBDu/WoH1yzoCd0/8SiBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFKVVWBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFKVVWBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF0DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745046593;
	bh=2Gz7oX3GhQdOgtkcj9wzJfA9fNij1oKDLpdERSdu5Us=;
	h=To:Subject:From:Date:From;
	b=PFKVVWBUAC5aoBIKinXQLOdnJbq0YCTX/xEw+QQgW5ef7Ewb98e8kEJk6gw576wjL
	 C/ypTRbEam1sGkC3hO5g8njUdY33efsTW6SewE167pObDzDEVJ3Hisb6gchR6AYxtr
	 teCHo/90tQhvLZ6W4kiJ7Knk4sJ7rshL9p/mWBUYS7jY/SsmLk3o16nhCVql4JS2HT
	 GpCmeNtsypXODDq7pZ7G+ezaoD2hjlQQFDnUuZ2HWoT+YImivK4cyaY2StESFHl1tm
	 RNDl7zcTfXnZ2sxrPi8X/A2VrkesjEgpJtangyhnjBDu4c5lTFIKwiG3+BX3N0zEhV
	 Bk1SGRQa2a6Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9794FC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504659359.17705.8124408527033752661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38482c7b813c7891bba61697ed4c6986841de4241d9b8c0249b42abe057d9e2e
Date: Sat, 19 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745046593
