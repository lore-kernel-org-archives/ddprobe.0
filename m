Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AD014C5B0
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748710194; cv=none; b=NLD9BIxPcOcYG+TGi5CiVqXuu4FuQUR+WqiIaixpENstdKV4m/kfGJ44pLYiglT8l5zu/QCIU0qM5QVYgIk33L6KdsHWyr6vi6yac1/PUDjvfcGwkXWqVknPinxGAAY/guiE0FJZeAZSEEN9Nv0tXd2nzK14EYKTlgnZqptUyb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748710194; c=relaxed/simple;
	bh=4d+4yNHbcCCVyeBlgiyLP+PMuX8coonp2L1L8K3278g=;
	h=To:Subject:From:Message-Id:Date; b=ZP5l4fVTp61RnariXtOFy42JvcW9fWrZf/weOM/UlFxwLB+t6Y2ZOoWmGNxDQyq9o4KtGkrN4XANTQZUbf3JKnHKiNsurzlC89b0NYdynVcc6VddAd2MKCLocit2hDHuHmzhJ6qGX9p42l+PHWwXPNB58SdWnTuFwL3kaRcQvvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXtiDW1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXtiDW1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD63C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748710193;
	bh=4d+4yNHbcCCVyeBlgiyLP+PMuX8coonp2L1L8K3278g=;
	h=To:Subject:From:Date:From;
	b=BXtiDW1BQeAfwVCFCFOsN8z1T/0dp37TSOoKFKxfpgWYboT9F2lUYdDsCsKDg/Uta
	 TSyrkmbG+kAcggly/HRsVaqPm3Lci3tLBMViOeDbzZfh0RjcHYuxyw3NUZk8HE9QyJ
	 I1xK//2AVqbdPw9ndsX+EkaqrShiyveI/tfMW3PAEPYUS/MXDI7ZJl44UshqbAq569
	 rWJ2opPQ9EGeOKxX0OtNpJBys4m9Orfu0HBHuFjWge3TBuDMx2wh0F+eyRhHbhW2dZ
	 GY1URZslfwNWjUjfVJIYh0tC5AK3qH3+5f+0/zK51xz+0Q4UR2TfMCqqgVEGamgvpW
	 zp8P7LPMpxvPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC71C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871019358.2243.11942199141391302279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f4829502d88ae7087942d011aea4592dc93be9f7050d4e534d3b3775c4d21a
Date: Sat, 31 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748710193
