Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEFB168C7
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725163554; cv=none; b=ZAmGsBl0pR4nCGxs9qAI8aRCkkG+/sinSbblQH8hXGdTVKucJfRdrg09+KCFN9Dm/dP3sE9FqWVKiHb8rZ1++5EcOhO48NGTgNHcW79NsILx/2tQkk0APeMuS/4vKDhRlb+DOd+icBKtmJKgIQqvqLcMpzODpLZa/LbUAv1MP+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725163554; c=relaxed/simple;
	bh=wohdwOTM2K8PvFupDEaCzcRbAxcArrkSWLnt0RgWmT0=;
	h=To:Subject:From:Message-Id:Date; b=EBatO8mNtE8a7qEz//k8O8bEQQ03bWky40F6u5WJdG3JeFcpBDlYAIoQtVytfwhSzIZ2FGkuQAJhSNViqF7zlAbbXY/amjnMsZWjCxg+lo1jFi+UEHVs3mx744QCL2KYst923qhUeLLtvXt3fcLMsiOaUWgJBf2+eP/s3XUqgqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTNBdZqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTNBdZqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B84C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725163553;
	bh=wohdwOTM2K8PvFupDEaCzcRbAxcArrkSWLnt0RgWmT0=;
	h=To:Subject:From:Date:From;
	b=TTNBdZqAD+snodmh+PlM3cVb2fAysYzFry4gmPOYeevrRide6mwFOOfSmCoZxvW6q
	 G12Buc8niFB1LpT4ebRZRS+2DToAIhs4f7PlaHluGWBMHqhwMuhG3I/n1NF+WKMeyK
	 d9nxj/LlVR0qx38wotRijaCZgboGOZm7mnRhpqQBMOOLxCQNKv0UuIe2N58PkzYojn
	 FgglahdUKmD/BKCaKSpF7ll0ytpllapK+Oy2/1L/j7SsgjN9M99H9cqRXQT2xmZdu4
	 T/1tvSBb7bLjiEXOF9KjABrDjS6TYgGbzjLz4L+5YVHhtgY1ucXk0rtxPPdEQ+wGjF
	 RdLFjFyRBPG4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E0FCA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172516355357.11085.10589182024437913051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5cdb26c826622757000c9acb061a16e4de1f47f4ff2fd938f62ad729ff9f21
Date: Sun, 01 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725163553
