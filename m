Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2458D266567
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745384394; cv=none; b=F9mfWVJ3V+4ICsHJKnP1S+xjfFOl92yHAtKdZlwc6JAIJ+wmMM8dtU27iZR6zAQL66sbNpvamBSFtBdTOLn4Td54LeGcRA5CjFZ+G9DqBN+5g6vDgtCaZU84mj1z1C9yN3GCUGyf//IrxuCiiIRCWxavfUWkLNLsHaBhgsiyPRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745384394; c=relaxed/simple;
	bh=LGas+41mDZWPK1TNMJUSKtsosydjTYYeX/kSw7iwz5w=;
	h=To:Subject:From:Message-Id:Date; b=Wyoqp3wM1BSdAAwPt4FDE2div3laWzq0qpCo/6rZOGrEDRLKFr6n36GnrmxvrupA0mixaynpc8U/5N0wt9m3y1IRRzWodzmMJg8M2l0wfpvlEXX2ArGUrYNNuNiqwe7u9NcL+3y3YCRUwKMnM66KbUwQ0BKXLzCh2hllFaFl1Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnDtClUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnDtClUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38EBC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745384393;
	bh=LGas+41mDZWPK1TNMJUSKtsosydjTYYeX/kSw7iwz5w=;
	h=To:Subject:From:Date:From;
	b=BnDtClUV7XKFfeWAd4OjytBIpWLcyzdGBqEEBKUwrpvsaOMl3hW8Brjd8iQVanlyZ
	 YThR7JNE/7OSBV+X9oyWzE++ouWBP3h2lK6pdTZAsW1jFXvhjib8NllPijzkZTbmB+
	 xMv/7/XZq0boornGeBUcUZJPSoNPQWYahBjdrNyyipCbE/CvwiB5t7JMq8qjZSFcFR
	 Fi0D4E/SI2gJFM6SB0jCjvjU6COYfazC5ydiAX3j+bYnlVZ25ppEzwSYF2xlKEjU0u
	 FT8B/w51XR8ZeJpyPbakIO5yg7nT66I0HnUjW/lLb56Gd8ibehsO5vMAYth+ipj6AA
	 Zu9iEQXGWY1RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90875C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538439358.16616.9980511672488999325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfbe1027daf843fd62d33493c0cc1e94575da911c2cf76a436f5f90748cbb72
Date: Wed, 23 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745384393
