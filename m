Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854D93B19D1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781880994; cv=none; b=XGfSH9lp/j+H2mpN6HBoG/pkK6TEhgBTElTMObxUU3ps//FpoPw0TTDguVQ+F7aw+kwN288i/zgc46Wlc6YH5CAzHyX3pnzcUGNtxgqyP1dUyUZ18jUQwrrwys5MEDiJRMi/G0B6LlLW7oo0kkVOUb0zKDhWyQypBpnfUD8bnQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781880994; c=relaxed/simple;
	bh=mf2TxpiGJjWtsDAFCTJRD+jw5l/HPIdLBot3YTZDbNs=;
	h=To:Subject:From:Message-Id:Date; b=rJOtcqeujjJqVKueD77aWnAn3o8WMtz9sbpHHZRNnOCh1oi8FDmtkr3hUlc9Lllsxfi9RksTMmtpsuUskPgXUSRzlKo0Alw53auwYodi3jDLoSnJuFu3pb4/qftIfZtWtwOcFUuchtZeqPucZ7Fiym0/VEOg7o42frUrIDaXei8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPhTJxDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPhTJxDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC81EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781880993;
	bh=mf2TxpiGJjWtsDAFCTJRD+jw5l/HPIdLBot3YTZDbNs=;
	h=To:Subject:From:Date:From;
	b=fPhTJxDjg0lGtxylxdUZzeUCBsxKFRDOzXhDqd6VpmOCEoU8A/zDJLvwE8fCR+SYR
	 6gPd0zgTxxUOhIKEkk5oSieGJVnqmi72XuApKugLNHBQtSYuxQfjo+Y97q9ozHIXKs
	 OctAqPu8kJ+q3b7p5gY1BP7m3zLKWoGbC6avSj41xXEkMcaFhGVz3B4EZmTx581j3a
	 5AhdWhPa5U7f0H3yhCzOVe/XAldqCRNQoQakqT5Yy2ydA/CPwMDpUIhYFNdYDT1eIY
	 164N93mqBekpnrCPI1YXR3YSRe6pWIU1b3qvqDYmwquyLVSkWJ3nxHGPTTasG28bfv
	 HlF5WgQuOSyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE04CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188099369.20013.8574257948844436091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3c47906a214e8e4a470772f377dddb730e21da05a9d05ebf0e0edb187e9ed3
Date: Fri, 19 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781880993
