Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404C944C4FC
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791795634; cv=none; b=POaKfNCYvz+nxipCuQzMIJIr2LNyp+6u7lhcEYvA2mWaBiUri0mq1NP4x7cKBRi6rsGkz0t0ibvQiGBUpQrtXRQxqqD1gH9vbuPZIQj1wU96sqYSueVIYIJKvgWzuZPo1blEi45wahbt7fXFi5X0N1f0/Q5NZmU/fP/H0CuVUr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791795634; c=relaxed/simple;
	bh=QuN9/NOXgPXvQeLUVJWrdWQVt4s8t13GJ+sYuvnKE38=;
	h=To:Subject:From:Message-Id:Date; b=WCrGIVcjV6Z6SnARwF3geu2gcjg62Ary2o5G1T6guZQvbK2VSecpR6mzNK94ppE8VCSffdVcVU3kUEMmMjg0nPX8RfUzA2CFHwusBsp2KHjSY0BSJ61S6fkz0p5AAR+QrrguSczPVT5Gc4Aigyc2tZfzEmm3Z9ztfqVbm6Oa80o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsP+zrL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsP+zrL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6074C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791795633;
	bh=QuN9/NOXgPXvQeLUVJWrdWQVt4s8t13GJ+sYuvnKE38=;
	h=To:Subject:From:Date:From;
	b=AsP+zrL9/cvKoHD07kCSikm7EC5H1IOcn0nHSbiviNO6o5C5O1FKApCgFVOr7QcZj
	 GRWSTvZn/vUvhzNwhsfTKbPF8+svzv5S+slNzHqa98wk2Nz74NKrEzEh7cBGudN2ng
	 DuR071NbfluJ+9XuHFxZlJGKC/zuPf7cff5RcPApJeDHjxSzB5FQITa/dNyb/Dg02o
	 z28pKb8TRRFG7WLLIFrsqKOQVZ3yprSWvUfgh/AYWNHlrLYVdaDEfdJFIV39bGxsPQ
	 VIXb/HCeoPxEU1a/V8aUA1VcEupjOtjmsbpneIqtQUYHesoF9xwy/wLqcIVzQBTjye
	 +EUua7hXYWqhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB780CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179563369.3562.17115952255175801255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7151c5a1754b716ab8692b6f28348b4de2d30e8b71b5544de28e188f21de295e
Date: Mon, 12 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791795633
