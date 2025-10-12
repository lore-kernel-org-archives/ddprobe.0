Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C597D2475C2
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760313593; cv=none; b=V1XYl8QAN27MJ6AFkN1jC594Mzr2iiLIz3tNWgSFzqdxWrEFwDf43iyIt8L9qB58+KXMcvf+1NcSXg80rAiflLsdz+81/1tFOJuisD2eb+aIT3Op28LJkGEYNVvreI+pG/j5wxgjV/q+aIUwix5G4FWTA7loABWuZXlfnrgf+QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760313593; c=relaxed/simple;
	bh=v434A4eXUuD0H/pYKvf3847Kp7biW3fiNlMCoex5cWU=;
	h=To:Subject:From:Message-Id:Date; b=Yz+fid8EOr8f/rtnmsaGL133TNRenVrRQ5heS71X4Xi+R/tSVK+lBZv0IEpsiGi36bbostbMXJR6ZDiXWaTeEPDiuhPK+0N/BEm88+Aa01QAYgYJxYWbVLBCg1z122UifGNrbwS61dWbu2F6Fm2vbRlIpmfY9qbtYEXdIfWvp2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCtNriR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCtNriR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F89C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760313593;
	bh=v434A4eXUuD0H/pYKvf3847Kp7biW3fiNlMCoex5cWU=;
	h=To:Subject:From:Date:From;
	b=YCtNriR1M9ma/LEnRF6ku/81SHvMmIy4Hn3wnN40HY1NzgdkwMHI6BQQg5w3vfOyg
	 1z+1TTowKVmD2fFxZh8d936nuaEg4KXWv80Bjn5K+ohsKz14qhyByGkWMxl/6gt7VL
	 /S0tJUBFO9ibK94pC8Ay0uHaIoFYB0nBH8d0I1flHpqfjNPGilr1NR1UrnirVooGUv
	 VboNhvFj5taok2dbxY3vI+bXRa6cHsTq0MKjcPXXvX9Hw7EZ+Uu2pGlVkTwxTpoKau
	 i2pvu0O2al79sL1J0TdAStDyCQgD/fvqzs2CphpvSKb5E3TKVeRITRjYlEYUYosYad
	 af05Rnjg25clQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E8CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031359358.12705.14548926547339059049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a97692b017143606c78dc753fe32e9a8b0d7f7d9840f048c9bc278dc7b6a8a
Date: Sun, 12 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760313593
