Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B50133C8
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714185743; cv=none; b=JHUfTdgWgeteCjV+IJAGe84saGYmE/N8ijLpvYTbk1yx2sEjfbzf4x7V1lwHBshBL8gUV2895cQkMO1bvxOLJc5jQbhYLfgWoBUyXjo9H/im+D8YO2tPcc7NPEzRQdJCpbnineHQ3eckYwNOi8z9AWHHO48P0HjiJ8fRfWF2O4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714185743; c=relaxed/simple;
	bh=vADQ7mdXJn6/hv/1QsE4ywH6w6Ji0HmgFIgfSjkNkvA=;
	h=To:Subject:From:Message-Id:Date; b=MD6NRpYcagrvh54qz9G4IW83sUyHuyBMeXqU5R31iQ4CM32vX1Dj9aNGkiK+ZImsq/UBJQRYLfNawCldx6p2MIX5Ldu3qgxfkEerpylZ4TRYdV87jo/s14fXJuP6dEoZzWCBkdYHV1HpjjFV445BitufNKgjs3S3DexQqT3BlL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfEgxp8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfEgxp8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D5DC113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714185742;
	bh=vADQ7mdXJn6/hv/1QsE4ywH6w6Ji0HmgFIgfSjkNkvA=;
	h=To:Subject:From:Date:From;
	b=sfEgxp8STAjJO6DP9jfNANSwOndBeRXKg70wLXFvq8Tu2P1JI/lVNd4HbFKGLcNEC
	 KbdLSPGFmU49ef47W8PEVqje8DxtL/T3EJsUDkMvkvC1bM6oV4BZFxMbBgjO3IZ7sC
	 iA1wZLVlnumUaiqqYRhsnrwTiClmt5GkZgBoEWshH+ADWq/V3O3QV3yMP2jSFmzbUg
	 DUXQ0UCPW+RK6Bx7owIbKSm9sNAgLretBktP5BAGIPaEOpVNk6FGP5BFSo6kwntPnB
	 jfj1W8bKjap/yAiEzn+sc20ZsXP/jarC5AOpT5BMYhQiYMH6jVYw5X52/547dfaKem
	 /QDvUO2QIXikQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BDDC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418574277.13003.15402980666732160255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3a661f7eb29975949dab416e2b9204cc0ec002ffa985c63189de0cf61cef57
Date: Sat, 27 Apr 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714185742
