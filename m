Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2389E356767
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779530554; cv=none; b=NkMYKiTAW5r9Vb7QQbZUmQ9B/M+PFoxN/d8IhbdMAAOFRgC1qyjCgMSyaj1pq0wpuS3Tr9E9pYL4UrdqwYdMKkGAMv/IzRqUkG79X9tqFl+gcHLArU1UZBXPMrQFiuWdGsudQepkbLsQff9UdsXgmS2tcuB0/DX/5jEk2EX/A0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779530554; c=relaxed/simple;
	bh=Y9eQUOLsgZcYomU00Gl4X1ZPd4hnu6m0GTChtVQwqy8=;
	h=To:Subject:From:Message-Id:Date; b=qPnLob6OMEJ0jGJ4c810tQN5x+jGHUr5bVwgFh2kAg1MlSG5p2K1c7K90GK5Q+QlSgnuMTFWNrvCZswHNvNGqfSZ2MjjUJe6NialqSQjRFStpX+H6x8JFfB6aHbTM3GfzQsMySI6m8TT8qMaknzZ5fyd2MxT3XJ+GTFcBgMEwn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh63Ej07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh63Ej07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF39CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779530553;
	bh=Y9eQUOLsgZcYomU00Gl4X1ZPd4hnu6m0GTChtVQwqy8=;
	h=To:Subject:From:Date:From;
	b=Xh63Ej07D2CQ888i97r2InnUQLnRpp/fMLNIhp8eD2b6ZgGraACLpQgNE7gW1Xet3
	 mIUsHXhVHp6tdT/6G2tqS2REa+cJUKQV61r3lPcHANM2V4cufMuLcgOE2wOk+etB+Y
	 n5oQ/gz7hSqdQm3HUSwFsNxpwWq4gfh8bBKg58NuJoiIzJb/vMDxDL8H2W16etvIbx
	 aDFZkq96cjGBr6uDgXEJ80X5j3G5R7dMj89L3cmz9JjH2erEOEEACa+1l/IjeF90FW
	 uylMpY0a/z4H0XoM0Pm+3Mg0IgbPun6h4YKKHM/r9dTmwITW76cKGmU/d1NbHL5/Fq
	 ccjRXnLImhtxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8799CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953055368.29068.4860101309783817570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dca994f88e76943143402b27c46dd7275a6c6f3418a08473d4b7825ea77efcb
Date: Sat, 23 May 2026 10:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779530553
