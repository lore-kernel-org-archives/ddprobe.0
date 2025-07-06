Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC0719882B
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751787595; cv=none; b=o9KW1IgJlPs5U27AMUmenkSYp9M/gX6dAmy9KVZhvSD5SOCIsnZ0NBSh9nhg6K3jjd3mHnLVQ/mMvzhH/i4E6J4YOxQEdBu1NKsifaWcne8PNfnOjxegHntsnceM706GmTBN8OlbsZqvbGNLEcvBz8OAF6jWIxcpFfObB0ADWLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751787595; c=relaxed/simple;
	bh=gycMFyVxzw2SlLjwEc8l19oKV8UavjjPbtO86sfcyl8=;
	h=To:Subject:From:Message-Id:Date; b=YZt/UxihHVNu0sDSfnd18eGg+0VBZmWewxFjQlldeAJ+tKar672RFq6V65RBnevBCMi0s4k16xJEF8rrzWinFxNew1T+bbVJ/i8Sgpzaw+LIVBfPVhHl/dXnxelSULERmy7Myv/9xGH3MCPxLo3Izr0c9s81Zs1VNAX00PiuwsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbgQwIg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbgQwIg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB1EC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751787593;
	bh=gycMFyVxzw2SlLjwEc8l19oKV8UavjjPbtO86sfcyl8=;
	h=To:Subject:From:Date:From;
	b=BbgQwIg66AUfI3nln3bg3zgrFvwL7twIJuxitNSTCtuXIiIuazT5Tz5PwBNFzm6SQ
	 FjDEGdHPjI8yhytkbW+ZQMNF5lcscjneL723eP5zcTFmWP2oDJeWCeNJ2RlAMlQDCp
	 I40S99xGpzx8N347Oc/IelrKtEqbZMCFdUKUhTnAnbrqeYmu2TY4dGcOKjYE9AbzmH
	 lcyZ23k86Ixv/PM9oTA3dEEIHllOw2ySM4yncRIJg+OI+wIvZIc6S9gxSaj9Ti1HEv
	 M3z+euVczTx2rtMk2HlOZetYe/pUwSWGVTlwb0HAUTzOc9e42eP7wfboBl3BM6cUtO
	 4nvwcbsALLM9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FBC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178759357.20900.9768263963918921967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683ba81a0ebf882b134c39613ad4a3f9f8180eb8c03c08f85d06ab4dbb01359c
Date: Sun, 06 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751787593
