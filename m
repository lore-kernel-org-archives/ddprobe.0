Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2529B3016F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764664974; cv=none; b=JkpMDMFl4AlMeGGnjP07EBb8jWCLOYuWYdM/lPFhzXwiu7KHXoU/g8N4bQF+pDM+Oz7cVV1Es4J5vOPT4M1JQt37JFBEq3/iexAaSGd0CaDGwAuE9TmVIcAA9rfIqPMWQ8vtrivbwM03VTJwwTnsMlFXQOOl72U+xIKU0Cg45oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764664974; c=relaxed/simple;
	bh=cxaH5OphUeVrpqcUdRsJSGX9I/LlnOrhi89EP0PD6a0=;
	h=To:Subject:From:Message-Id:Date; b=DSFxhvQF5S0G5Gh1oPEAs9/erUHVrDq8RM1pkXlqr2kA5Yv2fz7tTKOxdSoDQLINV+l+cCq8lrvUzi18oF4X4hkvnBX88CG4nAImJoJ04XcFdqvbGayDd3LaqwABZqi7AtBUDk7lZgnz201XkdoUJrxpg7c8I2u9sKV27A7gKH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnFHeM2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnFHeM2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E38EC116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764664973;
	bh=cxaH5OphUeVrpqcUdRsJSGX9I/LlnOrhi89EP0PD6a0=;
	h=To:Subject:From:Date:From;
	b=hnFHeM2mYbBI9MBbqcflHYsfMA+hU/Woui/CIbpMyUv5eQvlkQA/lQcmittC0coii
	 iTwqLoITe4w1eotYg4yPwBqFqENAv4bxKoPxev0d9YE3W/6On2BVK6aSMdkrH8IKzT
	 sDG2CVgTZGUDmbyb4qPaSondCTesSFrBjEQ39DUfxZ3WUu57P08mk1pwMsNTe08z/H
	 RwTPZM/2ZUPKZF1jGJMkhZZSyY/Uj68HozDuYaGnmo7u6iqoa4agiEmnJfZH02Ep94
	 UjcuSZ2TjN6JlY5A3nQ4NQdWBpLz9rBcN1ko1S96Xyu1rpNnNtXZAHkQauIBf3Tv5e
	 p6yOaDpHLntZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F2CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466497358.9752.13653915887660825086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0069f1908280610aa15d651e3e81fa6d60500918bd26c8a21ec42a6dc0ada5
Date: Tue, 02 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764664973
