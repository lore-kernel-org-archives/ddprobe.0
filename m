Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD253A1BF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705918097; cv=none; b=UX7eMpDItWDuvogxQ33yTQ0fnH7bGMlTOI6g9ebtv33tEGSc1BpPxlDK+IF1XG0zqZIQmdhpecKpmaiEgJnKANK1yeclDawgOaptOncRiFbS71q5obVgXh5Kof5nmLxFbb7vxFY+hIlcP6DV6SnQHKCLlkoqYBs/Ea6OTGnGWvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705918097; c=relaxed/simple;
	bh=VfUYyKAF/3QBnhhjyFnBbLm/q4TmHzdwLA+MvlttCGM=;
	h=To:Subject:From:Message-Id:Date; b=XzzULSCJRmuZgsQ61nOZxteV86YKRCxwc1BmseeaohVZ9WfgYiVAt4EDPLN4mDmXxaAgCpPDL3GjwvSvOPh23y1Bcrd+JFV///sHIcKMk6jwIdihlfxkOapHxoFKnUbW/0IbEY6sJkdRK1Ge+MKxJa8ycFFq6nolNyrjdKHeeOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ+XDsBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQ+XDsBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75945C433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705918096;
	bh=VfUYyKAF/3QBnhhjyFnBbLm/q4TmHzdwLA+MvlttCGM=;
	h=To:Subject:From:Date:From;
	b=VQ+XDsBg1/Eyss3r/nUuya/9qBvvZM3fwZYqs5rZVT3bi3XBxLFnkW4BTZkNlUIZO
	 /s22hitk7/LdtDBqdv/Fh4PDmEb96kr4EU1osFX8rJ/TwC1sIQgRKcBfFWt8s7LeUA
	 kWRTL5oPqdLzvgraiz1E9O/9sB7Qtjllnxqqk1+VXvsvmm628fa1feiKW7mgcCTG1w
	 bmrABLUfLJPBde5Ne0FyG42cSC3Jw+yLY3xdbDRhbIrnYPva22PhTp/njShz5V0CpY
	 gp/iiFwQjjCn6yWAnP04YK9P5CDQPB32/HiaiTGKDbwE1cP4wKigeKr6mZJ4i4Qr9H
	 inyfVg3fRQg+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D527C47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170591809637.15192.4966312236052132356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff25e2217c5215d4474cc8c2e1740af4d32a98686c5e3c0104dc03435b64548
Date: Mon, 22 Jan 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705918096
