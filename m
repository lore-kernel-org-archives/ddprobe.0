Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638623A1A27
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789413634; cv=none; b=W4Wir5SdsSorsCpqhXyXwzysxy9MWug+HUth4q1j7cinjtSJsbSrZw6fZdLhklEXDQikCyRH3lOmI49BblczIxk56kB4Up6f5QZsV9/tVS9g6WS2WmmAiynHQBQCIQOattj9UrkjytVEB/lzcn7yEgjY5LIvP2j9O/RJjfaLZCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789413634; c=relaxed/simple;
	bh=7GC1jg2zdh2d2tJ6BMGf1qz4SHs15vdU79w2sPxHg6g=;
	h=To:Subject:From:Message-Id:Date; b=nqsOLdMJzbtrCUOIQOVyu035pvEXSf0PqKE/6vEtlohadL3ic58tAJwypSAFNPE+9i8a9RwzG/ajLLudiZdm6OkHB7hC1POARDXn4Jjj806iY0dGJLrsZA9KbybxcRyIfATr6J08WlbOViN/8jIjGBFfMmgwSdEKke4zlMsphmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIZcHAlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIZcHAlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4125C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789413633;
	bh=7GC1jg2zdh2d2tJ6BMGf1qz4SHs15vdU79w2sPxHg6g=;
	h=To:Subject:From:Date:From;
	b=VIZcHAlDnzNIhVLik4OVqUmzFd9Pqq3uno+dFR9m8UPAEHYkT0E+l/4YxuSVZ5JgP
	 wKsA2+LUopr6EHL9sel9qO3W43CuSXkiZDETuYkxP6TzR0cDsAbw01a5PZC/dP1ptL
	 XA60ntDRlt26/t4StYfV5o4kK8+aqeGjSKogWINUANqyk4bBoW0sr6Vrzq0BNrT0JR
	 n70MDbmPPD3o3DOm4FSIwePnVngdu2baBSpht/hkodHpixKcnmJotp6En2yjwow6xA
	 UXC8YWgqZLxRYv0hmXauRuwPevHXgoicC/U4hDFwbq+/86h/wWbsPpra9UMFs8D7wi
	 VpZJ9YqQxe0eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD93EC88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178941363370.6389.12101074330210409057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b70343c45917d48051b8392d946fb04f43362f6a4e1e62a05a97b77efb6033
Date: Mon, 14 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789413633
