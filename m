Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DDE2EC09B
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787997034; cv=none; b=hwcXDGKGr5bCztZ16FkgRBRO101SYuFg68/+ghw7SRRYT1ZJ9oxrciOO+qY3KscIgo/BER/d/yVIwe7RKX9JdfFAOPD5/BCwmSZHBZ/FUeNuULnB/+trq2xqLwqUCwxMfVbdVKiU+ZR4hdAUhdMHx0Ph0nQDaoo/scgTvayxr24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787997034; c=relaxed/simple;
	bh=yql6RzteAHQWJCmj88XV/9kkzzc908uub1XLPhzVTTU=;
	h=To:Subject:From:Message-Id:Date; b=m+WnYmNQ8i528412OKnvCxxSic6bJBqYyf3n9uxxAqMbDcMZ2+TH+KbNEWFUzE1bFVXJOxpogzhQUOH1Filxe9YA2eKeOwUek+w4pAAYjKbwwOfez0xXBUcXa6I6aCkmUf8lQh+Ay3C0IcU9mk0D3v0wAW2tIKN9aO3ECTd0GSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epkB6nvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epkB6nvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DE3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787997033;
	bh=yql6RzteAHQWJCmj88XV/9kkzzc908uub1XLPhzVTTU=;
	h=To:Subject:From:Date:From;
	b=epkB6nvFywtrZkGLRJQXVMLoSJjNl21uIdDb87PdDhqi4Nd62eX0tPTDBNCVWS+pj
	 rEh/QDWc269hZpfR/AtPevkNRys17QQIrQ1FyV8Ze/WcCQtPaqOlJ+KsPFsTPMaJG9
	 PvpFQHUQh9s/2G+XBFrD4oCB3Nxv5ayo2LPwuw2Xx7iiRhlZRiZTibPPpydNXCGxOQ
	 9xZQ9rupNZAJF4EhO8G/eOn/eJVlFIYll/9/gW8xjAzkfj3sn4bPW0YxhhqBJVDCDC
	 kUVV/Xwg4KJONzadRdaQcmXDmZfqk83ND1zKMX17mBpri75ty8L1WrR78wrFW/QXEq
	 bDzECSkwWB+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17E5C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799703374.22610.12322641117357252858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c06f955d9e3a18fd3e7ff51299a56da67ac946ed7edb58bb66c7f48eac7c2d
Date: Sat, 29 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787997033
