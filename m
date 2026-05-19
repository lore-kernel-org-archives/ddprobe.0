Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9BB3B4EA5
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779188434; cv=none; b=iWisplnHJzeKmFOTLYYbaVhdJ3Ee4KuitHMvHQ9FgRbJD3JclxN+50SlupsLIIkpn/+WJ0NixOIKCpy/nWM2c8NzZ0jldY9OqFRxtGCvwSafEyMXYggX1RWIhk7HScSowalKzo/aTejPjSTUyday6dMsEdkhOuV+f4Ga//sq+9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779188434; c=relaxed/simple;
	bh=nW9M1t4PHj3/nTPbNdlMeDLRAkMx6iIpyKxyBPnVkmY=;
	h=To:Subject:From:Message-Id:Date; b=bTZ4nr024TZcv9+383hyadoHtxhRX20+W2MKqJb8fG+6Tx7+oRhOjDCQbHhs19JbEWmzqb1aupBXM1G1/8B2/st5dk999YJprDuxnO1yaZl8Vls5vODJ4moB2L+IRrXV+WwQXGPC0yPOhudpAgWmvIduO7YfEvDNJ/sa0bA0okw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuWBfVPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuWBfVPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC319C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779188433;
	bh=nW9M1t4PHj3/nTPbNdlMeDLRAkMx6iIpyKxyBPnVkmY=;
	h=To:Subject:From:Date:From;
	b=HuWBfVPAdO6Wf5AL4c7uejrgKfilUO/Ve6HKo2WhcoVH9h6kLmqC4YAld9oYiNwal
	 qzDNrjkL9ZYPBVlQYeK+DZfTtqWebC0mEMGp5FkcJITPLHgQPI79cAjC69NRC3Y0C/
	 /PawVKbkLZ1tGTVE/A8BJRc/TLoUhpbyTyZU3XaBYRtOw1yEoDOf0LJjgCb97crjI4
	 H8Q3XhU3ij7mMBaWj3l9d1aNzAk+DoM23wrRRoudDw+ARiBFpTSd/Rur+Ak0w4g0ND
	 d9dWwxA29+HiZyupua4iblq3YCJhncuvA1lWPuZ3OqHKiaL+RtTW5WdkdW0Znf3Esd
	 zU1n7fSWQBP/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD66ECD4F57
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918843370.6716.566108000383067553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da9b275d50ad1d5ca5758e4a44775e3d8f41c42f25ac85b00ba5d94a872a778
Date: Tue, 19 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779188433
