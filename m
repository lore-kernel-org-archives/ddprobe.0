Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C031200C2
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766617434; cv=none; b=l9s8pV+/G5O6YIlv5F4BcJSgLfhoAaUlT2niYVbggfcPKpK76wlvnZVU4rcJODny//Ri7T/AuRoIbzV73G2YYDO5ZsNpKCFzO1OxB5D7+lfzb2vYhlwpkXOfZPWjHJKPGqDtroLT3D+sx2F3pSKn/zz5zTLzQggttFbtzWOQFGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766617434; c=relaxed/simple;
	bh=Ylq7vro6saiy68mpLTaK/xIjKwDd6pPgcAUiKP+1b64=;
	h=To:Subject:From:Message-Id:Date; b=mcMHS21IedaZHfrvOhiPZvRBiVrvEYaNNlLiIyA8Qr6q9S9luJTs4+QAkdSIXNsvst5H+vBeItAH6ijZHVrW88O+Q5/EkQt3V5oM12Y7npJz4n5TUSzKy+ps8f0S6wrQnjXk7HLMhlyF01WFZrl13LIX0zcsLUIv9/GfwTMrYyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2geypqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2geypqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F95C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766617433;
	bh=Ylq7vro6saiy68mpLTaK/xIjKwDd6pPgcAUiKP+1b64=;
	h=To:Subject:From:Date:From;
	b=i2geypqQFrpYdCM65Sztfl7ti8td5M8aTg3Cqg1YTSu+N5f3J+uzVEf1bTYeqRPKk
	 3y+80TldJz9bW6TcaOTYVxuywjPjQEVngcHL4E2o0Th4Fqy7EzuH5SiqSFKUs5pvF3
	 IS75QoA4PbCVQN8WPzBRoUnRtbs7c73vKrhar6PcrRBgIStRIDNo0znOS4qDlGJ37n
	 rgsSY1/gHtzEon2iNJWzYv5pZYWmoTmUHLEHRGBA9ZZNhhAnxcVZhSGe/EknrJG9Yk
	 fNTs07AxWX6vvudr6VwmievhHIkdpw2xA5sAyzQ8cQKo22ffAPvkqQo+mEK7T4D63Y
	 sEtQwCq9AT+Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9249BE78498
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661743357.18393.11660311016960540905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44f256e27b628f7f4ffe7844541388e1dbceda9be43ade238549cb5d0a677db
Date: Wed, 24 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766617433
