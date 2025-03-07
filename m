Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C4020CCFD
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741345134; cv=none; b=s6ZZSQHMsnTysjpWFx4wBjSzDA+kA37hq1MHpWq7OvufqGvvvm0EsliqKDMvFJZcnLIOd81D8g/4syn0glbmeBXkBALn9BD/mHJJKnZ2z0ZLNM9iFUW+ubMieyJ9w82QClyfQOY3CR6ap9QzDKnw1Lwuv64rF5fvP/H5hZITfMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741345134; c=relaxed/simple;
	bh=a6+lx5DhKvY4NixauGHReaDp2F2H3EDaCEmB6gD25EY=;
	h=To:Subject:From:Message-Id:Date; b=m7MkJ9913liMZ7/PLGnrwMv1GgGubzbK89PtKcdFuehgDc8STb85usUSVPZNuTIy8pnjSHCKxpHkD49dhUnHk+gqtg9krGs9YOvJ2ebdjwZHSugqMb6riHVJfmwc+T1waKt4+EHPfXwRW8q2VwC3hceFytN8iZvaLK0SZ5OZLrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/qMjCFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/qMjCFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A4EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741345133;
	bh=a6+lx5DhKvY4NixauGHReaDp2F2H3EDaCEmB6gD25EY=;
	h=To:Subject:From:Date:From;
	b=S/qMjCFWhYsg9V4fKLEjM6ZkwrvCdL+DFxojfnxnO6rvpQ7qhuvcrZsc1Fg84FABg
	 UBQWrGIO4R95fKLcIWFzW5hUzKWfIEhS5zxo7ECrixsbKmp/MZWR2H640RQfO6rX5+
	 nkGlDSsebXGIz2WucFR0mjH8Q4HH9SVwh/tu7xEHRWwC7GtlRad5UyEvR/Tim/vTzS
	 sQ0VceeLWLClPKwxX+JGvrwbHG3TeWwiEuutSjk73SxIw9S1Z8htGOhSIRXpiMnuwL
	 rKqWHfECCQP6LocM4ir9u7E6saTe7JWnEbHkGB9eTbO//RAyxJIr8fFyZFvikgNoAy
	 SLE4hrlSGsnrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A04EC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174134513362.29765.10320555057030903328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6499192a7b68152ed860624986b9dba26f24c38cacfb89edcebc7f615dde0ae8
Date: Fri, 07 Mar 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741345133
