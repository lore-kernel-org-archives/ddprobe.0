Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCF92F90DE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764877974; cv=none; b=mc47BDNPn9v6MLTpZpiJ+OiWjQSuRV0tb38SXirlde2B3poqaYAmOg0RpBdkkxTkeYndhHIOShmNEBw8krrPkEyl1VEmbfJFlRddrmZOWGue72PkzONMGEXmnqrDYHdoTzY1RIBkdrvzj4LC0DzUfm0EI+dc2i+JuKMrF5+jY2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764877974; c=relaxed/simple;
	bh=Ee5tkVmzaMwGy0+g1EEIz/vc3YZxrl53+b0t5wgBzNE=;
	h=To:Subject:From:Message-Id:Date; b=WUNnxsEr8tjWTWfPy3HH+iEC8FtOEryykWISiJUOLa5eqZmsUw4asnwkgMmsKLPkDj06RLSXrSdr4lcRjKKhOXgM+4RGyRt42n2suutuT5fgJoSn1P0I1latnIvUsymSYghQ5oMc6eDXoe/uxUq+W1hketrwyoQUKF8wopxB96Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lr9k/nLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lr9k/nLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5082C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764877973;
	bh=Ee5tkVmzaMwGy0+g1EEIz/vc3YZxrl53+b0t5wgBzNE=;
	h=To:Subject:From:Date:From;
	b=Lr9k/nLmFVyypny5lNOG3EBCL96SIzXJX68R8DFynBvSpEDSxMdFMSdaVWGhtmC2j
	 I+WZ7TB/PiZsu+3VlOvGGQlww+fjyYrmyIPmcrOqBwBgjIN7nAUxtm+iPHlNry6lA6
	 H1nD0NBfGod2ZmrAFx398ra4K7IxzDpQNqrmnJN7YlfXizoKMTXsblluLkNOmrlBb/
	 dzc6+L0eODz6ucTafyy1niXPvLWIAo8gTI0DyYj3kDCAnlbop1FKNV/bJaSvxEdedd
	 nYxkHd2hqlvsudb2q3gFazuIG54fL6U36BkE0e1KF/XImgqKtcIVn2a9LHFRCc9tmC
	 Dyskp6qex8EBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93060D29FBE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487797359.22794.394117075425052866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8944a54ab51f2097b9e8e22cc8d92cd79fda72d32140e22dd1d0f8b7d09fef77
Date: Thu, 04 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764877973
