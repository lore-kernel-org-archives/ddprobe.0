Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D8332C33C
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770753834; cv=none; b=QlG6dSexnWycMlMSGowpE5yRUf0HMtGonvTs+LWzadAbzsH7qEOmDOyPLx/Osc1dkWDkGqB5fL1WD+m9BpliyzbBeewNxiZ09y4boXD2ljabwZZosEA2vOLgrr8g7ZyVPy6RQBS0C2OGIzJTQv2mS3PMSn051Mj2S+pHqavuYr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770753834; c=relaxed/simple;
	bh=8UOkadKXcaESGa/FOuqRKWHOXJGuweQV8Vr9zjB8KVY=;
	h=To:Subject:From:Message-Id:Date; b=Oi6zFr6luqzJJwLB6MlMO8G+eN4gGY8Fcq9Vt6010wvttRLTjSrGsPcsJEx/KNaG3r2mkl7fVLJUhRHnZ3wCH/Z1HckeJI3CF+0hfinI+IdpRmHsQ/kSIw17ha6xOwomzf9OqxP0Yp8NA66PRe6Usr4Rim/Q/VKMx9BJPWaGWqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlc2KBJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlc2KBJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C1DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770753833;
	bh=8UOkadKXcaESGa/FOuqRKWHOXJGuweQV8Vr9zjB8KVY=;
	h=To:Subject:From:Date:From;
	b=nlc2KBJTjQikhKxq7wOJdtEgm7jl0WWaoUrDkoAnURCvhgyQ4myMlao5fiaUqDLVd
	 sWn67E6y/RtCnP1qRzW4aVOKNP8x2l0ckfxFjdU89AAN75PSU0+9HddpF5Xrzkxg39
	 68jIh8mEa1YYbJIDG0Zn/6zLB+YGaMfsPqQ+PHyrVDvEmgWpb9/58xOCrvYKb8Zv5K
	 9KqVasWu02BYO0J53jvLLW5umHsz/UYc+LblM/nWNQ8fjTkjElqyEiqlrXakBXxdVk
	 mOPSt3rLwcHt4Rnoljs8pBMooHyF6OOJu+gccr1wgXIIkjlMggdTdLn6SVC9sU3Tt0
	 IAmGjw1dCDlSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8A1EB2705
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075383362.31021.10641149355793746463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9062e24a4fa6a5354be18ceb925a74482960b7f4271aea67e4e9e3e65788529f
Date: Tue, 10 Feb 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770753833
