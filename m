Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77792BD587
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777826854; cv=none; b=baLSiL0G+vhYQvW3hu9tuZ02l9hDZJmtIKJDHbr++f3mqyLDw7pm+6k3NM65Pl8umcZLYvO8RGFaZAaoHZIgN72p6YB2GTqvpHfJStEqAabAphE7RtZhreMT+LvYqKoaXdl+APrU8M7dyx+ho2WWnpjAqFpz5O+4ud5l5ZA0AVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777826854; c=relaxed/simple;
	bh=9fvI/PxFP6H3DjYfava+xoEImZue4to9fkn5Xr/HW2w=;
	h=To:Subject:From:Message-Id:Date; b=lSPdnNZ/AyQFk0548KC/a6/qgiM0a5zBn6eatQb/DORxQvb9X9KwbANWmWRh5YERYXqfqEFNNcdX4AoISOHFcDZTsqug+h5zme1R96mQsIhVrIzCi2c4I96oMG+zxib749P6z+9px1AKEPBer1dh0k2bqMRzJfT4QBXbMQc7lMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyE1BbG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyE1BbG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC63C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777826853;
	bh=9fvI/PxFP6H3DjYfava+xoEImZue4to9fkn5Xr/HW2w=;
	h=To:Subject:From:Date:From;
	b=ZyE1BbG1ItZI30Yn/pjrUC5mfoGxbi+iH2h7l3C804gFyq4FLKC2fkQ1FrNBtsGlG
	 YnQzoGdXfpmEDWJDBMPmx5bBfqeY8ZxQk+0R9k44kj4x9Uif7EvQAfShHAK9j/bqw9
	 gW8iGvkac2eetLAboIWAgraBF2sTwQOOC1Abx4NlgszYxGu/yEa6AMwsmYnW4LPSaH
	 lZjpBgbzRX43T1fP/RDoaGrwnjEErvCyB1uOA8w8ZM6M35kLy+6YTRzbiJsYsr4DJT
	 FSmfPt64VKmDf2tVX1jKjA5Z0UWLxNx98GPNAkm2v43XfUAx9lSSvI7bptR1y0bES5
	 G7d6WUQ52xYNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9730CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782685368.26728.12191101657105748062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aef15137c03b980b279eaed3c25a42daebe9e267f40dacfc15a0077ae8ab48d
Date: Sun, 03 May 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777826853
