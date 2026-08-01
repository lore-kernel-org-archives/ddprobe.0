Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489273385BE
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785577234; cv=none; b=PHZ4et5Vv2/cvjvbtq5Vvs70E09kNg0ENbdDuiLiUdHyG+gVZJzm8JZ+dUAh5gQhB26ASk24Eu48b1HP61JD6jD6npX9LIc5CP3VF4kJmPOq7VXFFZACfcmDiapxbFPz9eDWu6OLz0ThgVJqkyL/cFc0/mbBG2dHb1es1vOTqKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785577234; c=relaxed/simple;
	bh=jgRZOEVJ7w4U74Vnwp8gTRHldamQRmC5nT2JPbPWIcY=;
	h=To:Subject:From:Message-Id:Date; b=Sf9bt/gYPv3TZAo6IuXjA7xqfK3wSor/YfTH1FD/B5cWR2QP1wFcc3BefiosIrGyB5ipFF64EnYAw+vLxTRDCW21RR6eiZOCpyIRUzhrN4SarDv4Sw3VgXf6r6Zmj53ZNEWPPVD3RxWejsqCgdjAxR0Nm9H/Fm6vLSURXwrwqBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvPRS2g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvPRS2g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99A6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785577233;
	bh=jgRZOEVJ7w4U74Vnwp8gTRHldamQRmC5nT2JPbPWIcY=;
	h=To:Subject:From:Date:From;
	b=RvPRS2g0xVIkS4ZKeWD6XE+AofY4J8DCrxOaxXRRtGv2CKcyuFPrXxno+elV+neMl
	 CRIJvniT7o8Cy6DGq2YKE1WNlYotychfAGePr2Jofmh0+rAUCJsVSk+r1XxGCiAZ94
	 ThxJtk0QHxrVaiUEOf412xh8tjQEZeNLJjPEoX73sRaSVE2HqJqakCx8Zfz55vrMjj
	 pUCYlgfUys4styfwtbqRKgvcui4A/gKmBYxQLt7G7VTDxS/eJC9Ew1pQWfZKn13mdH
	 M11PiZi2HRMdG1uYOPM4sxxaW9jUslb1OPL6M63PIYxf2BdNdR/Pz4VNHdz1JAqNT8
	 fl2tHyIEQe4ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82C1C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557723368.29258.8627040371154491844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c5cc2650be04c22ae84f09879b6d4d257ea6309335e13f6b9b40483091b719
Date: Sat, 01 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785577233
