Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCAA36D4E1
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786524634; cv=none; b=iKjWAKCHL6GBy/t3EpAcaiGEoyRaS/AQoXPKXY23ZJZSv36mUCO9kdSIDe+eHzDlqxJra1qpCSmSsNU8ag562nCS9Evv9nmM9wRFLUNyBeJ3joG5SjcuxJTJqgcDkC/+5AB/ykanQ5gkShhocnaZyFxsCF7mM4bYjN2g8fV7vCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786524634; c=relaxed/simple;
	bh=RnvfyZkQ46OKx9IHVQA7mjyxlJDZZLvKZLoAKQC3CF0=;
	h=To:Subject:From:Message-Id:Date; b=BRNjjjxyoTcE5IdouMPmZ5LqkcgaM6Z1ymS80H65APvwfq2wt4HA+qyb81YT56sutTH8PVOWYKgkbSC3MmT/F1wn45InHouLYcSB+RBwmHrO8JK12dxTie1s52vFJR5OLVwamttQXRpZEnASs1RAq5/K4GFchWkS8mN/6kLgNos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTWMYNsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTWMYNsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF84EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786524633;
	bh=RnvfyZkQ46OKx9IHVQA7mjyxlJDZZLvKZLoAKQC3CF0=;
	h=To:Subject:From:Date:From;
	b=qTWMYNswdb7ZnMXgr8dRhmKy5jbx8QhqKDrkpt6b7RQhtsxTd7dy51KKhVcaTnEhD
	 rO2oidVXBDgYDF3co0z3eMDdE32917NCwG/BDxvwfm6M6LEqqPBs0OOUzDAwfv+jsV
	 cGPwefga8ccawRvyGJ+pErpLVOLRfErtORU1AbWsFzWVRboTUSns/Fos1F3b7tGKzy
	 rjmOrMHm8XQaui77CIfx4j1VSBdj25IcUioDoZjPhgx0v5hpDo8/w3Yilxdve3kwIs
	 8YKb8dXW7PN603IfcA4DASl0Xs72whN14EwQaYQkZ28aQXYIC9EE+4zqAUDY1PEngT
	 rYlVAv6u8+9Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DBEC5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652463368.17761.10284926052888347661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1018f1c149ed63693c1394066c33011ac29a8220110467264c48946709a8ad
Date: Wed, 12 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786524633
