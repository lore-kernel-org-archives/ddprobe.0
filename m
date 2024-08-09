Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161C917BBF
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723203954; cv=none; b=HJl3myD4VefLcblhpToGaAzidZ8P5QMr/4MpRJZO5ZWoxyFrN9iMscJekh28O5mwqYAmhrf2FMzt3bqrxDZAT8+GyaUAhAyFXUUeLLFoW3odquv3eODWhpfMmnL+wt9voIpRKGKSZyowrn2oqLng9cXFXlNwuyC7maxu1phVmyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723203954; c=relaxed/simple;
	bh=hlDqE9mNwP7f6XYetf9NsArSWfbHElw4kzcNkmHTBhQ=;
	h=To:Subject:From:Message-Id:Date; b=L7Jvaghww60mN4Nq1uTzwf36yNKFYwVaCgpqGFWzZ6bMvk/hMFz/dI2MSGmJNnVoiqX2tPxBPwHhZlJgGlRy9KHEIr3x4uoumET/z1icgv5+zGst1IHd+WpE3GqF8IN91fXuXaPg/AxYsV90DVFtQHMsNLtq14wuqyK+ytSBTWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r88xSp83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r88xSp83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C6AC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723203953;
	bh=hlDqE9mNwP7f6XYetf9NsArSWfbHElw4kzcNkmHTBhQ=;
	h=To:Subject:From:Date:From;
	b=r88xSp83Wn+1Ex0tko2S+cMeizoVXofCrJh+eu1N9/enea1yG+FuCOC7s0D661bFa
	 ufC3cejpbcllOgm4yvqWBzxPRmTnCjIUQq54Lx85lBRIDT1pT3BCigytnXb+DRe1Dx
	 OFHBBi27imS7J+xbmn604INc2irecSE9FfvmK8kMI5pWYDlQJfH3HrTo+Eg7XR0A2W
	 syVgVu9GEhfDWDrnzxez/yQbFO6yQ2a1YH9snHBDsrCtzmw2n5k8+DmV/bAhpfU1VM
	 vGO52DmFApKco7UuiMJWkjWnkbMQMoBaItb2RjIqXAT8bHpvSPy3L8l3h6c4wVyAZ9
	 a6WeQm7sKiFeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D1C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172320395360.3913.18053003171696703997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ae78d6ef1eb0b51407997cdc1579e687e95d94ca7fc58f3ba6d27efa61e13f
Date: Fri, 09 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723203953
