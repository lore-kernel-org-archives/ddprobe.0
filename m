Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5713B19A7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773216894; cv=none; b=JyasyaGU7CjBseyVIRN4/TReNtcyN3a7/e2KOTcgIPALZE51FVFXRM4HyTEh7Sw/PlAK0hmCpKqrh/GDAqg6le/xgDa9OjiDvsnOF/kFi2KGxAHPv8+/o1tB6AUbPLjEfMUH3oDrwblgpv394ZIEgbwMCzlkCU3ko8MvXWNLrQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773216894; c=relaxed/simple;
	bh=VGefdmL14aT0Nq7THsk111kqgO3m4TGJ7pNZejuDLPA=;
	h=To:Subject:From:Message-Id:Date; b=sIlrmPNrE/Lqr2omodSZGJIvsoLtGlqkpz15exMZdeWrNy+vVtVqWNlQouKrOyRsI2m/pLjA7IOzAAAy41irZrLDCcvbqzdrfGyS27jdPl4kxXYS6eZ3MdkEP9wVTetPSkGUrWTGy1/2+VqqOYv4akmqmqTzC2RxbzUNwS3VP44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bY0K8+F6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bY0K8+F6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A046AC2BC86
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773216893;
	bh=VGefdmL14aT0Nq7THsk111kqgO3m4TGJ7pNZejuDLPA=;
	h=To:Subject:From:Date:From;
	b=bY0K8+F6CK2zdMbNuc2l95TajgJnOzINrzAQp+zoOLFb1v/ojrsetaX7cKHwtaw+Z
	 wsjWJfbE2PaywyjEOxCwhV/0ZA/oacZVuYMaFz0RWN/7QOBtepJaP0hspQz+roEHc5
	 erGB+A8guZwqZ5YIbZ++wr9QPS3Q2mEJx6hIgW/hWtLiRmGmiXH6UgntLHHAbnmktd
	 59DNkwIFsN4dEsunsPKl42tN80S0agtRgIn02smQO0Mrsf/zKIhpXklmfop2wc929y
	 5DGjherZBIq45O75ts7H/l7TxecoQB8uYoYoLZ2AM9/qcxxkVFUHFuFQ5wXUDmPcx3
	 ZJbS7Uqep1lyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F862FD0653
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321689358.31224.12565542047598474315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9691c2485b1a058a77fb4718b3e0ca8db6603880106b3ff0bc0b7923f6f29575
Date: Wed, 11 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773216893
