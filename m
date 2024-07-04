Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A293F9C5
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 22:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720132523; cv=none; b=QnD8euV+75jJwEbVXgcDFAIlyDgJFF4jbx3xWS1ty74CUHJ9yNHAUgs4qP/TriPrMcyKTdWXtJtsrlQ142IU865ysoYoeXjQEtc7ngA9/GNXE2ExpnWHC6aIsXEFqxTg4+wChcGfXl+lcQ57V+41Kwn6FHw1qoxqiCWJPAdjfjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720132523; c=relaxed/simple;
	bh=pqsYE5ym2mcuVI9uy9zdydG/Nskwf4XIZxNqhvj//Jk=;
	h=To:Subject:From:Message-Id:Date; b=d5Ie0djDIDO4EHf7e4WBHNXiH8lJaTV2umSEgYizWH6FGgBch2AH6Wl9l23mWkAuy4wmr2i4RjFd4W6e7duZbYI72ErCV8IHYosQ9RHdCRcJ7Zs9uQyknYNRC+8bKD3ilzRpauCRlzsgTvhJvDoDW5LrtNosXRn/Q0eTrZ0k6V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjpwSpE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjpwSpE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D94C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 22:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720132522;
	bh=pqsYE5ym2mcuVI9uy9zdydG/Nskwf4XIZxNqhvj//Jk=;
	h=To:Subject:From:Date:From;
	b=bjpwSpE+vtExfPzqgCc00oM5eg+hajfhayowa7y9l19e45tvuY0xeZmuYY+aydwo2
	 psWNQTiEqN1uCT/fkltslNTL9A7Xf9cC8J8P3zmlPgpd4wOuqPsrTY4cWQbViw+9Tr
	 lk7C39eTfHgoHBQjFFO5YYiZw5laUWAxvjEycb/7NhjuWY3NAC2ivWjT2E2h5pwGCx
	 qS+GbiYwXwf0cAYGV2rtrr5NTko6ek7O0LYOjNARmAFkRvq+Isp44ydMfxCLHnr/16
	 N0gP1sL4/Ip7RQ2BnKt88EgBPexriGP4M9Mj1huWqHTVOVd+Caj4YwH5CRBgMPCFX4
	 j7Bh6oOfujpbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6089C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 22:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172013252277.19859.15075475142728339599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9c1d1d48f8cdc3624b4fb4977002aa12bac3f907a0fe4e7d74d2c2a5f05fc0
Date: Thu, 04 Jul 2024 22:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720132522
