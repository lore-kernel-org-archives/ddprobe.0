Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3213A287517
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769412234; cv=none; b=Z3K4fuNjwaSyAoUML2gTdjI/62tBdCpKdmld964zQT9YTb/ddSbB2yaNHSY2cztksdpzKSoepLIVQB/Gl54cnZrMaeHsdutY5sYN9gA8Z4Jg+iHd+dc8iPSbl6VM2B5CgwkXd+nI2Ox7xUaxUdRrxK7n5cmu9S0LdQs81bpWy+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769412234; c=relaxed/simple;
	bh=Fo7HwrvGIXrNXaWioc6GjnNYJp8a+anjGAPQRxHVjbA=;
	h=To:Subject:From:Message-Id:Date; b=kFIvmqzY+P7cJlC4RuVRapa8qgGBrgCy+wEUd6Pn6B0z94bG8rZVQuZnoqsFv1riB1TcGD4C4XmWOFKnvBLcwvBPtw0iWIL12STWoaH3tBSzU6TZOg7/L02EeF7sBKUayLSo/hYT5poXrbE/fcwRvUZEGYslCtLofghPLRkAeZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9pdjhvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9pdjhvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44C2C19421
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769412233;
	bh=Fo7HwrvGIXrNXaWioc6GjnNYJp8a+anjGAPQRxHVjbA=;
	h=To:Subject:From:Date:From;
	b=o9pdjhvRaaYyp2m/BXXOWBrzxAhIFva7FWhRqubseA1oJYXqtJGx8OWgCCe1VNtIv
	 KeKNtBRKFE30Id7YNNJyyo7wv+kLNSZr02FxmWX+ztOjqSll8IxFRyjCjE2o9kd4hO
	 1qBDGQ8OfOaq4w200hMi7zeZCgLgM1U21uZV+TYCQzdMgSvCISOlGXsVCU2fhHoTZZ
	 kPVHuosJR6p/DBDPsJtd6QdWoR9ZZfR6qPKe+yzfjmFZXax5UFXVVMhPR6TKBlCaz/
	 M0QAj8vvtOCl8YeVJSbZd7aQVtqahxMSs1kdQCdTQ8WqGK42FIMfm5/VDHUwASp3rd
	 YBELKWmATi8nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C91C88E58
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941223365.3142.3390280698482175501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2903ff52f2ba4222297a5cb4b5aeb300d6dc21b3121acdfaf0f0ae92c6816c
Date: Mon, 26 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769412233
