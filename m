Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347CA17C224
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735023954; cv=none; b=UxUkl6AKq5W0Ym7Ixa8asi8Uo+xd0nekjC0jkP2NFwu7NpX62XEs/f9+vmb2acx4VoZaN/1amOqPg38sX0XJuxfdap52OUPuiRYaT2bU3P8L+RstzrYNfwqKO+CwuvNspgofEYfjg2u5AOAJQuvnXzdqZ23gEdypKdUi0gLiy20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735023954; c=relaxed/simple;
	bh=OMxYZ00jyTlKrvkYym7URXMIsJTxbCwKFFiBxkxWovs=;
	h=To:Subject:From:Message-Id:Date; b=Y275dFELnejmW21edDiyOKne+zmL/oVv5BruXBuEsoZ13K0PjnsUcjKYzFhe4mcl5KRV/fhY9ZQ7avnZjgvSzvKbqfpWeF4g7xs4NJGAEOC2co3bwTN9O9IpNN4NhXUFhyZV0pw7xmS74irnMFcZRFDG2SUTD+HF0D2dT3o6w0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opLAko70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opLAko70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB7FC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735023953;
	bh=OMxYZ00jyTlKrvkYym7URXMIsJTxbCwKFFiBxkxWovs=;
	h=To:Subject:From:Date:From;
	b=opLAko705vH9HG+d5kVc5M2c92norrOsajAqFPelC1z9fak6TDx/oRKSyOv0ITmVF
	 FnQq6ZCgTpPApTz6q5ERtiS0fvp+uFDObcGXliVvMM2nqnmUUBuPrmtPWMjre3uxsn
	 3DBqom63N0XbZLx7Y/R/Ptq3OnsdamS7iXVf1BlS8lQ0ncPVkoJSzTClYAq7DME+R3
	 L/7d4pnfUZUCBP2pPQ0PJTusGieRFva0ptPJAktNCn29uT17JT87u6ngGhQH6h4iID
	 30CqQvlrgA2hsWiqT1bOzlUckQioz4548akIrKAa88f4F0I3QRI5X6JaFQdYEbn2Vx
	 lld40mBD8FP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6455E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173502395366.27034.5789973935930217645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10e37e4dd035c3fe94d4d6119aa580ac33e70dec64ab8fa0ebe85475fafc788
Date: Tue, 24 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735023953
