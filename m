Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205FC266568
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763739114; cv=none; b=j3pYxSngpMtSzOLyHKi11hFCQ6jVZ2tZFm8RSysmsDo781gYQ1ltZ298Px6blMUdVD05uAiNEnkPLmAJRTgwmPrTPFyjkF9hKQ4hpBWSLmGqlMpdKvr8Ttn9JHggdIz6AbHg0ci0oqJ4985kpDq+cYes6+gYq5Qj7hBkDSgC+bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763739114; c=relaxed/simple;
	bh=ApZIYCeGIfyperHy9SmmoC+LK8L1tI8KfBDtAP8NAO8=;
	h=To:Subject:From:Message-Id:Date; b=XSZyAyYuCzrJ+OkhuVwhT1i2RRs5eoPPS9RHBmyV5qRHFKMxw2ibYDiX0IUEBiScYsupLsUrccPdIqB5IUJQJlZOal9ucgD2w97nXJBN32XD/gtRQUPD6S1WgsB2QSGOFCka0zQRpnVkuTkEuVqj5DDRNUZYwE6IFJZ7VQnvsb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTY+lVTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTY+lVTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA61DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763739113;
	bh=ApZIYCeGIfyperHy9SmmoC+LK8L1tI8KfBDtAP8NAO8=;
	h=To:Subject:From:Date:From;
	b=kTY+lVTCF3ar0cO5ZMCA3A5N1d7dEMPWUWH13duvkvo8FvLrxjOLPWcP5haYZJmZ8
	 nZzlPlgE/b9uqDCnhaQ47qhs1VXdjVdW9LuWaGIMeST3M7DJZ3Y6L1SPtFwVjMR0fT
	 ZzClaemNPil7lWCaElRc/vpR4+K5Y6Z48TxqOEBhzNkXo/9/RSMMrhn5GjudQvsDH7
	 KLnzwqJdTQJhYQYkGawFcy5IDe/QhMzLoeyGKwBmSylepl8DdmB90deJ7fwmL3Q8YH
	 zlDU6PX2pDa4M+q+R4MYXKPaXR/kkZXKetPt/0Gur7CITuimK4fQwCeh7F6PKbS8vp
	 bgQhl+1IIWXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980BDCFC28B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 15:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373911359.11464.7271472993779812978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08726949a46cba2e9befcafbd10e7339fe81dec4ab846c33fb153e122d5b0866
Date: Fri, 21 Nov 2025 15:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763739113
