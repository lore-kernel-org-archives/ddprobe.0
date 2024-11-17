Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CE133E1
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731801954; cv=none; b=XGZMjYEGvOE+dZZ8v0PUtvAm9iIQc06mhNx/LJxfTRqiUuqIaFeM0+1uKdRRV4Q09KYXpnyk2GW0/KtCjjTjAWOlRRpHjJ33GyKzFdqQ9HkHiNNEblQw48GBgXV5FyNxEMWbo3Vh5WyRUl84NCoNxvav24EFbcFST4JfD95BFg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731801954; c=relaxed/simple;
	bh=+F8Ojr4SrDndL4Bn9j7SJjMF2qhlyXrkTeaDxJ8tVGM=;
	h=To:Subject:From:Message-Id:Date; b=N+pNnI527qVqOiQDNPQCk45bD67CsTntGqeOC/BShFbUBUlD1KKhLpcIA64YnxtZktv3J091dz8I96Zigr+EiVr9NsjYvtwuUlyygT5fz5+yojC89wODYOvSBmGw72aDppi2VZzMfC1CnQZ3ndQwKexQv6fKGPsPnASrN0Jjeos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRJVFXzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRJVFXzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A4BC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731801953;
	bh=+F8Ojr4SrDndL4Bn9j7SJjMF2qhlyXrkTeaDxJ8tVGM=;
	h=To:Subject:From:Date:From;
	b=lRJVFXzn1ST971nsF6n3oqteffXtiHtjKo0BnKQ+yqNoK3ew8qegSa9O++JJEG2Cy
	 zRaHCMnX7XnhttIXJzDLW3Xa3vmEpPXCWDHHiadZJbOStXX0Vg3LV5syCyyfkBt/B9
	 e58kGzn6Xdwg1WfYz9v1SmZL0H/zRoSEDmECV6jT/M+3nhRY/4WYN+J1X5F+HL2seM
	 4bFTnKuh8CClVPKjTuS7SmjoFWVToXEdiIYRWPSL/vInEQyoAzGUJ9RJQXcNK5gh6S
	 fYc+9WLc8S3sbbAHgYRAYLonaT5dFxulbebAUE5g3Qk1t4jHPXPhhvKY8A2yVvks9O
	 tFaCapMf/qlsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94716D68BF6
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173180195358.2796.5868982734997779795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c1b4bd1404a52a211d770c9861e223a68313357c9141eb3345acf6faf1296a
Date: Sun, 17 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731801953
