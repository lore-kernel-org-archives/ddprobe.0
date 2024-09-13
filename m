Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA6173
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726188354; cv=none; b=h0MRmKat1zsCg7kBYkQvdnwJqfNTbYDTCROGHBHW9foPtrAE6KAya5Dzn+Lhfc0apkTyh6zFlLC57HnRJGuFC0uGy1EFnuPL85nX28MeWa8kNMRhvGB3LiADcP2CEii7yDTpr3OdkvglTJHPmQ2psEUOz+2SuXo50J4DrW1mIw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726188354; c=relaxed/simple;
	bh=GiRJi+o9miTLTo0Hdriix06kZ9pKtW8q0Yq04OhkcYQ=;
	h=To:Subject:From:Message-Id:Date; b=fahM3Rdc8Fi+qkNJD+aMwegr04BE/rktmHh4vSwTN97zAbnbxJP2PPuUZMK46SK2B3zdMop5phFkFWgeqxvRMswab7/oLvUfwP8Ynm3Qb+tJFF5SCByAVTAbIlSYpCFs2AWzqhJrWWpcmUvPBD4/wQPsWcEwWoy6ldOf+nn9s4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dl2X/egF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dl2X/egF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6425C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726188353;
	bh=GiRJi+o9miTLTo0Hdriix06kZ9pKtW8q0Yq04OhkcYQ=;
	h=To:Subject:From:Date:From;
	b=dl2X/egF1norrMVeWPfgIQzNTM5PrOJID2eROCcd+ZLCtX0dTC+hi7QKhJ+U3wqVo
	 KyNMKGrXPdwpGtUrwn3K2jRKE/fot2kdOoWS1090Hr6CxkeDgUxyxys6+8M+Tb+Ru5
	 VA7aSKf8yJizM3eAUd1oSwoA9Cm1TigPetjA4DVLCXe+Ini6njnVqLEyWe5u7UmXNZ
	 iXD4zZqwvVhF3d02K6TreVSYqt/b6YZ78mNbvxg7qffFpdo1VEK66i0PmVl29kbQkY
	 5aXgdf4eBdQFoPgU2tNDgx5AeiEfDCwONk38qcueDr0PByuS5EQdnDR/gC7bQWxbhR
	 5P7EZTAF5iwlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BF9EEE273
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172618835359.1854.12841603808392061914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ef86c121dff954a3e6a54d9c1ec8e795cbc29177cb658c0ed47e566bbfc5f5
Date: Fri, 13 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726188353
