Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203AA320F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757966994; cv=none; b=EDKM2HuF64KiXQjAh/STVgZ9wHK5AP9zgjtYfcx9FSn8Dtl0GcpFYXkOxgLyYf/2SWpDS/cfeXCPvupfgzA7pUasT6tfcDPsE5PX+j3Zw+rrs0x+mO/X+i+Eh8hN61u0/SVDhbUzZ82U7BBacYTgN1Q/G/Lh+0yfkGYxjTioAWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757966994; c=relaxed/simple;
	bh=CrquLBHp4BgePUxoYCdP5BR9837d8dxUkHqezI77r5E=;
	h=To:Subject:From:Message-Id:Date; b=cdWL+mBwj3rZZADA0FijMuAMu3/NHmGtGvrrRJZcoryPXDgebF5Volvbhf714mOWy/1Tc3/xzO0+Tk2ikfN6RsMTd8fRzWS9vbIJW5XhZ4Ejlq+d2+HvEYDp3U5B0J8Okn27lzNZPPQ7kBK492xtoBWYjYe/lQvSbjE53OxRCws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWFEWK4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWFEWK4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6858C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757966993;
	bh=CrquLBHp4BgePUxoYCdP5BR9837d8dxUkHqezI77r5E=;
	h=To:Subject:From:Date:From;
	b=MWFEWK4CfuxCHxaQrmuKNgOR7GyJDdidCSozReP4fHOh/7eqVoeQrOewlfte2OxMM
	 RH2IAkot0450UtkDrW19VeSOQuXuUdX/Y7Vtr7ZlFsHujh27IKiasr7tRbTelodhfP
	 tm/spCpg+Cx0HDyI/JGdSgHBtYx40Rd3vNyMlEz4w9zp8bETqjn2IbamQjLUl74AQd
	 dw4kc476TZCPGuJmzDJLw+d5rkE6cXiLhGi/dP0UITqHQ5FAT/NtuSFY9v/ENL8QkC
	 c6B3FyxRbVlWlDIEPSl4TbHIwew2u7G37t9lDOZgIa4RfIaB8L4qWihY1Tng/zYeRt
	 tehpRx/8Z1+Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91123CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796699358.7585.4327022568224496217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea2b42ca000f6d0e7f3bb97477280c0900c7f7829443c85113c51d04f361e1e
Date: Mon, 15 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757966993
