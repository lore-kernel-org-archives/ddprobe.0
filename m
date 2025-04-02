Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A27D1DDC28
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743622794; cv=none; b=WgfpjLiZdNLqOBCXVeFRp//4ye44F4Gr1Gkz3y9kZwU0XcayQ4Ubn6+DVPPT59o1H+tA/2TzkLAugng+hzAyM9np83hDfV6DW/EGph9kTwnHknr1mQzUf3vlXadbbZiISMxic48+b3QsbjfPBO2g8RYM6DoJITy99NxDQy9q8+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743622794; c=relaxed/simple;
	bh=XJiqqcJi/k24PwA1ACsv+iyIv7VAU/cYl1ZRR4smr38=;
	h=To:Subject:From:Message-Id:Date; b=imVulNrA8y+7N5FwzW0GFlZll6hr+zyeSBwzXwpWLaV7Q34ezx9ZaBwEjtnjeZMLT2KprPooh0whARz9hA9to3J9OFTU0tz3WIJki5PY+Ay3abXNpo9exJYNTkgGNEMb0eeaPSU86UTLcKJMi3HppM3L8K76F96rvHaOVOmXHEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSdI0c4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSdI0c4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE407C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743622793;
	bh=XJiqqcJi/k24PwA1ACsv+iyIv7VAU/cYl1ZRR4smr38=;
	h=To:Subject:From:Date:From;
	b=nSdI0c4jl1kLySuOsDxF6ZFw3mc3Yo8AXs/fuDIdGyCePjhym1e0IiOV7swvRJEpU
	 deXdu3SzNFkZ6lsZUPgpPpxAXxKyoUU7y+a7eGzLCYXCCV3RMuGTyWirz1p0TxFdBa
	 MatGiw2EEYzj9OQ6vAHpCoF46u/25sIKXc8M+RaDYCO932WUqShvMtiilT7Si35Lff
	 eIv7wf3Cak/yUFcvpWWfBMUnq2Ip2CL0xqsZdNAyspj0lJp3m0U8/Fp7cWdHhnIxxF
	 uH2OBEQcb6Jpx5Pd7BYvZKZg0vsBb+FMUU67VrVjMJrWg+OQMB8OdbNuCkPmfgZyIo
	 TAC4F+jsnrsew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991CAC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362279361.11928.3236099869394630666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9680a8cfb187532f3e99065cad72fafe55f0c388400895b96f23af90d3b6f1d
Date: Wed, 02 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743622793
