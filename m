Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA8F23BE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727664354; cv=none; b=FTkoeBfSxv2yNActwecU4ObpnlWWLTpMCsLUnmLOpbg+n91IghgWBmfmxdo/t11vafHLteyTXxkYoITM9fVG1e3XMnkUiUa99uVjoBDSF1/HWcaELJ4i1u3XVbbvdQT8i1hb6L4a2HcBF2YBk3ZyURRSVectcKb8u528WWXFHMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727664354; c=relaxed/simple;
	bh=mb+7csbpQsGpbNBE7m+8pV7wJrJ2oltn1woNjejTqs0=;
	h=To:Subject:From:Message-Id:Date; b=GdrJSg6E7lTM0rzTjxti2O2W0O6NQ3lHgqyZ2K0NmAXmYkL6Lt+RY7YHl+J55/sSc4k+7Ggj01Er74jvZ50P3IN0xxmXo++dGYx8FTKZ6I7ixg+han/JizM3ulLeOzaiNtWuBKpA/QLL9kqF7dsu5o7g4eCEV90UbGxd+U3Zr5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geZ2SyIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geZ2SyIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B466DC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727664353;
	bh=mb+7csbpQsGpbNBE7m+8pV7wJrJ2oltn1woNjejTqs0=;
	h=To:Subject:From:Date:From;
	b=geZ2SyIpOfPR4Ucc3BeoStg+yh7U+h0L1bgbNqFI8rCi3gBOQ+gXoa9AGcrk5bS+r
	 z9+uT3R5351Vi3dPha27ym7vUEIEErRondIVEs4P6ZwSqjQeiSIwGi7r0gI4LuaJVo
	 lmJVjJh/Dv3Ax/36OTmU+yV/QQXOcRI92YijRrlAEpC2KkRJCsNHdAH5XyShG4Oevx
	 BYMQOK0hJdu2m0BuVwEXUd4tcjPCf/3zywawUZpUa2yMwglpa6PiOk6GcOh9CY4sUZ
	 nCdrQTJ49d5BcrWIQp/mS1AlmPOlyPATbPRJpSKCJrjy766iSFgl+1DmTONnSvFdDm
	 mrvdpsW98EL5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99755CF6498
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766435360.10820.16996970031182833214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea03da68ff7da03c24687890a774039273fba7e33ac91f824fbe096b462f10b7
Date: Mon, 30 Sep 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727664353
