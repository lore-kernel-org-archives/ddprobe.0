Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483B543F0AB
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784271514; cv=none; b=pXwa90t3F9KoojqwQLWBqD1hiyAxHnb8+FUI7Co84VOYm01WQUv/8aDHi32jg8ocFBu4C8JsdOTI79AJKsUUsw+2dP93in4mO0wLGbNbxHAav83/7MDbIlls3BpjSBDetLKqhuWT/ZXLC7SFXapq4AyzujOEOVFxVP2dMnT4Unc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784271514; c=relaxed/simple;
	bh=6PiBq5NhIpWc+b9J7ALe6H8ynhWuyO1MIsxHaNXX1f0=;
	h=To:Subject:From:Message-Id:Date; b=oBMcoDXnCM2dl45WP/w1lAjvn48uFp4hbF9QNw8UONkv5+BuYn91On42lN2uK3GEFW8PNokwwTywWXpQwp0KfEH543cwNO3RYXRoVYSVdW83MnRIYyqhfPAVOE817LSHUcTr72S0bbdfytc0qon67eRVtid9vWs6r2hn7gb40rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKePP1+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKePP1+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D252AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784271513;
	bh=6PiBq5NhIpWc+b9J7ALe6H8ynhWuyO1MIsxHaNXX1f0=;
	h=To:Subject:From:Date:From;
	b=pKePP1+GnCoFJQ/EtJin74QhpoZlsi5E0/q7L1OgTtkFefXyZFAkU65DmvpJDqt37
	 fTVVQesdropDubpkeyd0uVsXXbNJpkZodiIO0uEwSfJyG+d/FMmVS0j2XYDR75zkkT
	 msEOpITq62siMYia4OXNiwGX7QBR2znOsgYDUxNvMwXu+KsHnEF9dGbNJOTv4zkhq4
	 QGtFkqfbwLaLXUac9Q6fGmAIAMM/JwaT5ao87+bzpAzcCOg4lf07AIFW4dLEhR0QmQ
	 h63hn7q3LmWTa+JToyXY5JldZw5b8GWfk//Nu8/qYQWIwLqP+sXpOlXFw5ZZPfAHPC
	 3kxa8JAeqAKDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF29EC44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427151368.20324.1806739720394128122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f077e8d69bbda334c9a5bbb02c2a8af95bb02604d7e10ba1c94990d511337ec
Date: Fri, 17 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784271513
