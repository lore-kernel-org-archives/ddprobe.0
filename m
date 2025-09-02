Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4A02E92B4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756857594; cv=none; b=Z1cDFAEjq2Zu29LXBz/PVU/ZgUS9Xg0MCzCilHsqBTdodVJjXY0ot+qbx+qh04NsS/8gBWX21vqsI2gZ50D5zIVVgYJHfXX+4k8iRHlr6CDvb7MDSp+a73KibKXliCxMcS9O/sOx7h0MeEnAR9hooGwy86E8PJrMdPnAKYhgX6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756857594; c=relaxed/simple;
	bh=iQfKAUq3fgRaESYataVBQJcN+9wV45xpEAg8EZSKO5E=;
	h=To:Subject:From:Message-Id:Date; b=Dh9yKz3qWefoak8guQhjuiaNPbvYybQg8dzd6mMfuAkto2/FD01d6Y0Mt5i3P/sEfxxNcuRs3AnZU8fshqbHQ5ecg3J/koh31muzZNR7W6M3vzZttmJvYmZJTXGAosDztoY+JPH3bCaPCwzmk56y2UdQ9HuLOOAYWTky4Fh6+6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NykRArQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NykRArQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A733DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756857593;
	bh=iQfKAUq3fgRaESYataVBQJcN+9wV45xpEAg8EZSKO5E=;
	h=To:Subject:From:Date:From;
	b=NykRArQqReP8Ljp4sL0HIvetBp6noVme7/qVk8a7ycigx3WcnUyWvqTOlbyM0DdXd
	 Qh+1buADZp8GD5oL8t1N/79LoXv6umgoI4EoQEoPWHI9jLiIqjCYRfqVH2zAZmbx8f
	 Chl9ZDB8XCfa0n6Eo8QR8hRS2mQnZM3StsjZi/HFQSaSZLzrQJt5yhhfkLPojXiqX3
	 qLXljMIuMFRb/ublok8I5QZ1PFFaf8orUA7CZL2NMJDZ7n/YkQYQtJaVEA8AGEzRJ3
	 oq3jtzxICzfrQP/ev7vhHwrsZLn0t3p6l+7fasZLE4dP+6knNZutnnIkzc+TItAhy5
	 2of7bkjaMIG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BACA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685759357.367.9778370185808212484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9839cde8069b4cd04db2b2cce9c612e31735c90102b577f058272ec98dd9e602
Date: Tue, 02 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756857593
