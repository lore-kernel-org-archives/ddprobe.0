Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DCD249E0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705520297; cv=none; b=uoSYguDh6dniQGyU3zY9QE2hZjUhA9k1FGJygVtJRGDsq013UWmVhUjL0Y92pxtDIPGWZMB1hj6IsQUEfFD6fjZs8z01sBVv8V3OQ/hb9QcCn4anwodv3L5ZL23DRhG7Dyr1FAH/1GKIWJxbJrMGUmxnqno3cUiIdIPMQngkYcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705520297; c=relaxed/simple;
	bh=h5Lt2KNa92bzfjIOuo+9HVWCmhD48edFWogxOIS/NCM=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=RRRg7U2rVo/Ot9NjescWKedPFiJRGgNLXWoCbrf6iMwimgHoFIx5CDlvwt17kFKdnF9G45vsJk6U4SL6d6e+NrzY4bTdaxmfGt8Q4YPnRpDUF2XD9r0qsI2S/lbxaR4fYMfcL3I54Dn7nw+20XMDmlFThuOLplxCfzanI5dE1M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1S+S6BR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1S+S6BR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B265C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705520296;
	bh=h5Lt2KNa92bzfjIOuo+9HVWCmhD48edFWogxOIS/NCM=;
	h=To:Subject:From:Date:From;
	b=n1S+S6BRCcdn2W5xXm6VzeO9XcWfHuD37mM2MDij6WPQDD1IqO1Tv3c2Rhiwxx0SC
	 /LQxHcCDpY3LwQGZ3XAE4KAgBS114LN3sssPc3gfJAz25gPmWHPT57Ep1ogLh9YSeS
	 u/6Afm3WJD8LsCN3WeE/KPddC8u99bvFOQXpBTVbnmrOL3eZaYYKhAau57M1WsAsVO
	 YS/B3ObumgUBTNBcQ/t5T3OJrlre8w8E3hQtPJz9/m+/3Jbqt32av5HnExOzA5RqKC
	 awKPwym1gpEb6b7LKKJ4dGaCH+MEMsZoZkuDqK6Zc5RvTJCrN8LSuRqmiNjMFim/hd
	 bEtbOYn5YRUug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F37CC47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170552029637.14396.7163421365195979157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9e5c8d94cadaa8e072d8623fd6de6923a0ba2f1cb5a46f2aeaafe73058930d
Date: Wed, 17 Jan 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705520296
