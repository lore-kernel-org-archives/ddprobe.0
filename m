Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4990A28F3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747094994; cv=none; b=FVAzJ3fPoTcCE+WTaRxCGbUmXIzxMlprt9dL+3phT7MSvO3br7Y8RUNjAmYhzAOU1Ku1tXmS50YQ3BDS/GKm3L+LsRVFm4Ce956y7brVMz72TpEdowqzZyzRjOQIKysYCkIio2yDbcKwO7n2K8OiOxQYdd5eQuSCwNh72PriCG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747094994; c=relaxed/simple;
	bh=ItdeLrQYJ0Z0jng69znxvV4oM2XHkRgSOTEWX2ABvH8=;
	h=To:Subject:From:Message-Id:Date; b=g4lqhy+8BJv5D94oRiJmmdL78Gn3NEqDZQFVa/zY4Ljte+9dp5ZSWhjdXLfJft+a7osUKQrQ7TJ1yBB7x/wlWWFrFTI333WVrw0uy7ea3y7ImIPaenizJwLlmQ3KqQVqQafBN+8Z2RkP3mdMwxIOAQ1/zBDQZrlCf8t6jJEmqYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwWETuUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwWETuUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6677C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747094993;
	bh=ItdeLrQYJ0Z0jng69znxvV4oM2XHkRgSOTEWX2ABvH8=;
	h=To:Subject:From:Date:From;
	b=rwWETuUNWhhQrAKNDEeNJ85KFhc790toA/cOu+Avtq5Mxi1ydj17e1tul4xL/UJ+W
	 hxlxfcyThevrS0HARfZHcEGs6r56pzt46+AHX5ZPErZb9Tch0nwvu+Bkfanzc/HbgT
	 K7XfmfYjkQ1dEMD7wF7kXbJe3qcMFV82VePCT4trPs+Sza0QBp3Sou9wPvTJHn00iW
	 Ae/MdqFDDT6GTOAEGe5004OzQSFFppv5rqI/dLsBsHX7n9qIBhNBNrNe2NiT/5rdVW
	 Yb4EZVibHrGy7xY5XUDhl04I5Cm2Se6m5gyGjUqfF4iVVojNazG0hQJH/nKvkwDWX7
	 AkD+mtiBtZKiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B0C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709499357.25374.15820241747828544957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981a58a65fd31e3ab85eabc655f1ffaead33e82b15bdc08e93c3ba25fd9d1b25
Date: Tue, 13 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747094993
