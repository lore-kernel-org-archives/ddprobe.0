Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FB32D480F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767203034; cv=none; b=hASWA3nSAPjaSfRyM7BKAtggYgLn1lQUmuZ1525AnI+6pS7jPD9KV2p3AWRBeNStwHJShmN/2BNjwurWQIFt0hWst3d31g/49jDx28h0VPhs59rl4SZeQj97VzLOpCaLZJLtvGnBbfxT8DHMF7eu+dMKEHfgYF++1CIc3wRnSYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767203034; c=relaxed/simple;
	bh=HdPFBHvrh1gePZLLAe1rOpBbeUZYJSVLNqc1XPRoDuE=;
	h=To:Subject:From:Message-Id:Date; b=YljQmN3vbukMx340grq8FETsbI3dDgP1f88ycZPtZwpjbMlPwd+BHhq9OzQXCVLMR+AHrL6DjXKPetATN176Wjrr5H44EBAI3zL232n921hPUHi2cfBvpKwzb3JI46aVqUZmlxyipc7EwtHm2F8jtuZQLWUch/MXNIFTWnKSotk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6a7o6Ie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6a7o6Ie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6411C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767203033;
	bh=HdPFBHvrh1gePZLLAe1rOpBbeUZYJSVLNqc1XPRoDuE=;
	h=To:Subject:From:Date:From;
	b=m6a7o6IecEnxBZDJrlVbVAdqJotFd74nRFUNWrLy6PHihAAS3cY/ogSUNqejIjWuv
	 Y5pNNJZLKo9Fz01PRTu/QkQb46kwt16do1i1RGn2QJH1SRhb23SrUfoLpqPVyZ0oUE
	 6/hyK/upWir8N0lcj0QAIkZ4hQgS1s0y+9HQBhlfwVIPlhBUJFN5+FIExhT19pBMr9
	 ub2WlUw5cHMy6OgGdvUcIC6q6d3Ed08tQJH7HOP/dfslfrk9h6yDHvurqD2CtwsfIT
	 fGHmaQWNjvCYWX8o3WSPXFUVPtGuN+ZHUOX9dcXkPtrpa8i853B8KGCM8eaml1NfUD
	 Xg/0e4pSQ9LkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E15EE645E
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720303358.11299.7128610301104755951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970821da131851a3cf5afb0eb00744263bc647a870a0062bf0041a2da951cf82
Date: Wed, 31 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767203033
