Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247983148BD
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767602634; cv=none; b=VAHARqNPTzxsX6tXaTia22132UccoycEU/tzofc+fMLf6gXJwcbxY0YboVDLUgxl7i6XxL07SvNsAPZwc3d4/NI4umEbdHFtIPE+5XkY988yZDmo9iAzS4D2+eBS7FYJxMWx4qTO9ZvC4LezC0CHsd9BOhsgDDz8b0ipA4xNsOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767602634; c=relaxed/simple;
	bh=r8tHp+k/t5oin2P+mcbYt6yLqFdDIgB9bATevhmg+bE=;
	h=To:Subject:From:Message-Id:Date; b=PQsMkLlaLbogY9lHOWBtxkEAhJtba3Xz3g/JgOT75ik24PrN35o7Fgl2YM9j7H5RbKFCUkaFNrmpR7cDmupCCZeXSTNLv3H8zRKmn5GogHFB8ScW16mT6zIQT5q58eWoojmS8FTpz5ntF46iQelmK0BZGESP+jta9LY+3K3NS9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ek+T87u/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ek+T87u/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB66FC19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767602633;
	bh=r8tHp+k/t5oin2P+mcbYt6yLqFdDIgB9bATevhmg+bE=;
	h=To:Subject:From:Date:From;
	b=ek+T87u/70zKpxDFYmkrnto/fpZFEUJwcGbqFKnuHORh1TICYJ4WZ535BMuHuEvVG
	 ONfpPqJbcceA5IcsJgHmuhSj7aPM24sgvHcgRiD3cQQ//LIrEgMfnvI6w0ovNfWgvT
	 0C2kJTIUDipq636yWNm371boFmNKSP4izl2Xa93Yv5a2x6LaL54Wy3n1fsTIG6kRpk
	 fW3BFXV0Xw+8GxvDXxHunszFAdWFul0/Aridb1EP+TJoPtPzi3OVOSMamgvHcLQghQ
	 AegUbQh5YMa/m+GhisxGtgZfcBV/9DtBOSvhLb0pI4Oc2M6KNzgP21wM5iiTHgrnCL
	 eu6pSNkYIPf4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B86BC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760263362.29471.780492497495807739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc31447f99c459c400d385cd1d32432104b580e05b98542438d33345e9647056
Date: Mon, 05 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767602633
