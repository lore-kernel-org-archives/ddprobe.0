Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAFA34405E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769639634; cv=none; b=J1SnbTIAX2o+3fdmqmSFupgFTzrPy2rEtVqJdSqk5ILClLTKiaXee3rCNsVPbTdLXVyz8+9VxXmH3kdPufMyvjL8h1daHjtcLNCoyRsNtmcSJRCHdB1BiIwvhUs9P6iINjxx+4VGXd7/9jj9h2r3VMpNP42dBk+a3NDv5HRWod0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769639634; c=relaxed/simple;
	bh=UW+qLUcQO4nWU6h07DX0YaAoTa6A1faW+2MzgwwVsoI=;
	h=To:Subject:From:Message-Id:Date; b=WrJ1f5FNV1EjE7ihhum/9J4zBY8IBwrZ3yWoRsDg1zDMRktljGwXN2AlSIC6yF6ibUi7UHIR662AUF3HrRPvDq006QXg1JLkp3fcGgyogqH/7OnoP6lAiaSec5z00qagDiFLJWhTIZ1i/Lid8gbuqykcRfxG8K91/mDaVxJUoGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUZ3x66c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUZ3x66c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DFFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769639633;
	bh=UW+qLUcQO4nWU6h07DX0YaAoTa6A1faW+2MzgwwVsoI=;
	h=To:Subject:From:Date:From;
	b=CUZ3x66cJQE3VPIO/2Ubwd4yPEAK2rlHLuwJU8HCbChH8zDgMJH+cucWWEtJ3y1rl
	 LSoJHvH/lXYnwEU1Fpg9fINgx7K94R8jVWwc0N/NdPlp9z2L2F/EK635UGA39AMh1g
	 L2vc5pNbGlfPfiZg2w6P97EgdSCO48NAD7vruuqPRYXa3opsSMi0sf518XuEk/qoVQ
	 XPSCoRnpe6WkmkD4AKzh1cpHqHFZuYTVu0pthxph2dNnHcS/CfQn7RMEYyp9byKht9
	 sPcuI44C2Tt0CZG+faHpo2G6w220CeIUFaY/4urNfR4EYtLNKksZ2brctzHh9ICl0r
	 TElBGD28DNbBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03D9D46C0A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963963362.8104.14961533054789526592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8f0686a805636ae0bcf5b94c4cadc6ce8bec33bf63a362d4fe5bbbbb77713a
Date: Wed, 28 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769639633
