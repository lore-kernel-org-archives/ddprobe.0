Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6248BEE
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729911354; cv=none; b=sLq3pKNXNMU7bu7DPUD/mctvZkj5ZK5O747VW/44+DefpZY2S2WGgJxkfriOw00UoyEX0l5HttvR5evAeEWnnaR0z3m749CNFLrsnb7sTDYofB+TkzIuP2Lmpq21fRFaX+OQTC8CgQmvwBhXkd6l/rsJrILvlAvqITAkX0ihGlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729911354; c=relaxed/simple;
	bh=2o5xyl5XxpecXdly4Ril3FyyoReiKFbBkHGTp1S9PIc=;
	h=To:Subject:From:Message-Id:Date; b=TNr3q0xFw4cEr8sHPN4NseXIdNZFMtIZwir0ICphsgZ+LNF5w8BtbhU895iLd+6d5Odd/V6DP9WAxk4+vCOGaeYqJXzFsf67IOUwki1eddeouOTm9Ie7RWwsG+kYFpXkQq1AAr7bcOuWap/UyNd0WPPA4DOQVWGG9OzujXaTw9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtMBKtEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtMBKtEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F24C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729911353;
	bh=2o5xyl5XxpecXdly4Ril3FyyoReiKFbBkHGTp1S9PIc=;
	h=To:Subject:From:Date:From;
	b=QtMBKtEf5NdBc55bC7wZhrE3YoiZb1gLOoCNmURqdlR+PKRNczsDCKBtgmciV8BWH
	 F/ReOI2HVpxzB4QoxuYd0MYGbp1TLEUNS/dv8FFuA2+LfwtDRCleRwl8psFC2yZyn8
	 m0Zj1jzaze0pEHSPu+5Bc4XiB6YKllX77fuQckj6+3V9eVmJqwDii+tZ9s9s/sxpSd
	 GEavk7m1ZKM+3ayatvqACPKQlwZG6oLv8TVe3oNOKjfmwp5yHSX7IaPUBO97yDY7yv
	 DqRnLR/mpS9KFX4R/rFqGR8pOpVbyIorkZ8YVYOpe91539aEr+voxTRK5W1aIlaz6r
	 jWxloU0/TRCJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9904CD149ED
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172991135359.19103.11172256779496353085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc400eb172c47b5c0716055286a3ed569923a250c536596a1640d29ee0e0187
Date: Sat, 26 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729911353
