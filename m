Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D56019D065
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767005034; cv=none; b=e/HtWc8mj1PrUbGe7AxEgRCMEp9XXtYGMUZVtI+Yb3KLpeXeuhVneMVRvfxR5CbwoiYuVngfe0bnScVSbpGUc5U0aCA5wBH8owuapVdsuzD2HzswuI4SLfalid385U5Zw6QaFombpkDQyewzTviXwe/HpO4k+AyKwWiK4qK7G78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767005034; c=relaxed/simple;
	bh=AMV/ihtqXVIa/Cp0ofLvddf0vRtayba2IgrGFD7w35s=;
	h=To:Subject:From:Message-Id:Date; b=li8yBvpTf9i8m/DzeM1KPIc6la+rywh7fDCibFbGlMKg34Ex3TPybLHo5GcRZpoFZiAq8xuA+WIVkZtdd7V+395WvY8E20zrDhDyBjifmwzn8k2mRTUgCtVQUcksZw/H7/rNjmn+rBC3ibE7M2Ek/aqRcoFd+3ERip8vsfLkZps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpUvvN4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpUvvN4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8124C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767005033;
	bh=AMV/ihtqXVIa/Cp0ofLvddf0vRtayba2IgrGFD7w35s=;
	h=To:Subject:From:Date:From;
	b=FpUvvN4ntPxqs/vmvpaj/F8gWqeJmOI8fMDywYa7g3bTtoQiqXXEdqD1pJokHFxJQ
	 5owiQTQ0MkmCB5GddDYocfPj/weX7us/JIHcg3KGGIM9Bfs0ttXM8yMWygK/ee4UpD
	 TUCBnJ31so8qSMwTr0YJ6mxtzSmVpNIbWR78kWGB9e94MhAWe9i4FK/3gecWe2nwgb
	 qyfambL3yZH2vUuzKEukanZ7Eilw+mur4l6iQopoqBxwgv3bSxPz37RnK66VrfqXQQ
	 i6A2ReAngQySK4b12VYByKZGmMWPEkCw6mgTh14/bCiaAV02hB5+TnT/mCs4ymXaex
	 rbHu6FYDqk7Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0302D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700503363.13221.5602747535484961260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13b6c7b38a720329d960d846e2d99ad625d9212242eb8d2c9c76d0d39bf0e1f
Date: Mon, 29 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767005033
