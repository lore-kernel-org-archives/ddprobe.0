Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF1315279A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718813963; cv=none; b=rS//v+AvxniO9s543FWUC0ILqaYuHGQs3S9q0TSGVDKmCnbhCnLCoieniu72TUw8gI3i56oWk3hvLoIPxg6p5CXRCT+6UfPoHA+aO6WC8BvrbgACZniL5UcqgMR6sVYl6KP5KqzeITrARwTijrRPcthwOPjJBqptkPyEa10HTwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718813963; c=relaxed/simple;
	bh=GFPTMlue4EComHIMsmIhmb36Z0WT0QiIoK1s6ftFcmY=;
	h=To:Subject:From:Message-Id:Date; b=urZCimZ0rp1zUyqBV+tfHICS0QREiPHgVo0bzweXdEIAaH60uxTtNgSMB8SLkHpJ3tB/RWaqw+YDzZP6xm+5PQWySAY+P6QXLAc0+wiEveoabltwdxqBIgkmyPG1Do+ZosfTDT2hmJCaFJpFZtCQqYuN7j6OBdzgENC9R086HGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfjUOZzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfjUOZzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD74CC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718813962;
	bh=GFPTMlue4EComHIMsmIhmb36Z0WT0QiIoK1s6ftFcmY=;
	h=To:Subject:From:Date:From;
	b=gfjUOZznLKgXZGi3D6cvEYCVbfeyxJWy/utKhJnJ45f3Wwthi/hwm4yO1Tuxio2N0
	 LpPK6sNnBxMk+fQuiQlBaNFFrAC3vG2mgPKxAdQKVkqXHzM8S8E8RHalPUc/NS7eNR
	 ihy06ucl5upc/JlgJyrWbMGYO9wLng9MzeoFt9Yq6eDfbYlJe2kS/pzUJQhCW1zCej
	 php3lrNgwcY/UuewNAASfGM7dhBRHsjVtFJqtS4iqbp/US5cgu+fWBfsFGyNjZcszx
	 +aiHhr/OrUwmFFgJm4i0R4IsZFaUzfQs0eNl6g7p2b4hH4OB3W1ARWPu1Xiaggh80T
	 rv89gy2/p6C3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C538BC27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881396279.8354.8580725473599479792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f42cc52a91fe1310829a62a320753354676179bee2c373ccde284bd88cea57c
Date: Wed, 19 Jun 2024 16:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718813962
