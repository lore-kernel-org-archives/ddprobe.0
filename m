Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5EE48C8A2
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780515874; cv=none; b=q5bszsfbr0q9VDUAs4R1zm/5fRUWYZ8AhFzhCdWj4Co/0g5dzzK6Y6jBC9iwkcKGkB8TZJdpQScjagXxTbuHcCSBgNtHAdgNpPIopIXqGher1qmGUS8KS8wdSrPSruuH6K74xklOqNPZVeCBXVXjSpVOpiwuaLXf+SbERCXq/mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780515874; c=relaxed/simple;
	bh=Qvd48HBMB/g1ObIX4uBEyb1LwKZDPUdMzzbHY/TVWSM=;
	h=To:Subject:From:Message-Id:Date; b=sS4HvGkM3xn2QeRDHrFE/Hkd6oW4QOzgzAFNGgyMO4I8YPif7OQPN8fdOb9skLIVSy++D7rEHrnbz0CIYqkPb4zCN3zlXZd+BRpzmbmkfQ+/g/au3qzlffqfZyAty2mf63T5fTDYK+T0HXvwvsyqesUdi+bqNluZCVnd7vMPiHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIOpElPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIOpElPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CBFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780515873;
	bh=Qvd48HBMB/g1ObIX4uBEyb1LwKZDPUdMzzbHY/TVWSM=;
	h=To:Subject:From:Date:From;
	b=pIOpElPZIOs5542eTJayM5xDsmRPvPE1A7B6VoorTBXglc9ttS2QCmvpMJ1Xl3E9t
	 6df808vsMVsGajtwzLCwDnU6HUZkwQ6jowqLzIQQmWPsJKxJXNc9pm2LX0uyS7O58w
	 KeI9mgmnBcDRMjbepk7uD9nW3S2KbvtTJ095JgX16up3y68kFwoEniqVEbwk19qjY/
	 OCXzsvrSfdhA1BxgGmfKJnzpg40bVDTJlJajebQeYBAGzZcV0oDyP+O7zlKoRVRt1o
	 Tr66i0qJhQwe1LXcqF76F7R1v2VDAVzjf4tUlACtpkWEJ1K6Au3VnTyNjZjjaRcCKG
	 0CdpEnVgK435Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1F5CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051587370.16991.6381356920549541640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00074d6624ac5eee828afc82185df2e66ac2f6967034ab74dbe7738ea2faee9e
Date: Wed, 03 Jun 2026 19:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780515873
