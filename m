Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283C527F18F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771349694; cv=none; b=MP5+FV1kMk9+60L3HAact88HSmoTiI0bBou00KhcGyPxhaSUC5A77Zo29GjGyj3TMbq/xY6bVrYTb15Y/pj8tM269+BBNdmBp3pXmg6/mqkMwdfKpImJmT1T1Yl+GAO6uk2fXzfn31/RrQCEfXatbQceMcflWKg00az9bEWv2rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771349694; c=relaxed/simple;
	bh=6e6OLsP+EfCKY120rKg8YYgt/RViGRCoclQCyowdROg=;
	h=To:Subject:From:Message-Id:Date; b=rPKO+loaRZIwv0uHtX/4UnfzYZ/2MhbMAFOj4WMRuWGX9gSXhJHGFAnOOTnamA5sYfPA4ncKAhe/BpP7cpWdrQDVvLNvDL7HKAX6xtQVHhS22PK99+M+gbD5PlhHt+l6SXAR2Q0dXVs8G2trrSVtQ+/We1ms++bTqOJflcmQPbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBqM8PBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBqM8PBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E5DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771349693;
	bh=6e6OLsP+EfCKY120rKg8YYgt/RViGRCoclQCyowdROg=;
	h=To:Subject:From:Date:From;
	b=LBqM8PBn0H8ipMBr0eq9RQu7DXlJOHjKLs27ntkzwRTQ3BSR/9//nI0J9cXotfS8g
	 QnhHW7z70AcMFhClnfzuwacOfLDTUHHR4k5DlorOSoQ+xpIqXywF3IQ57FAJFMUfUV
	 8VAie/jdCZTiLmCGr6iCaUVt9fqgRoae7+ZQPvN0ryGeMipaFLgbcSd4MeuclWNrt1
	 TDYBdELb9/Q5kdjjXCkRyTHSNaxTZrkH2XA0xQ1hpuUtg5CmFmUqAcMeJKQpVr3PnR
	 rS1ocwQnn3BelEpgZ3vl7Z/SZGY7cBkz7ptt+7weVT6phNibHWX1d6NAoX5j7BPv9j
	 6emTzWGBnArMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B92AE9A025
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134969361.5523.3015183516230064346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc63a21dcb5e74442c798b475060b3bbdf872b497dc469695262990c27e7a81e
Date: Tue, 17 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771349693
