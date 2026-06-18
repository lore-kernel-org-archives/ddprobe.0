Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45647146A66
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781763994; cv=none; b=bplNLOwLzR7JkqevuuxYe6jysUE+GBdTKXXZY5VwXaUfqYmywgcgGWSeMkm7cM6XeedGAkvE9hPFcwM4j28GAu4uX2sHIw9ojl8wsnMM/j6KRpXJi4O12jhJ9vDsk4zdJObRtdCZvysDW9jfh3DAOOtbnclJay2UnC+Yz7gPA1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781763994; c=relaxed/simple;
	bh=kj79n9YefmNtRo9LpVmxgaGjyIqlF9UjBtMNm1BAHUw=;
	h=To:Subject:From:Message-Id:Date; b=O/tLK7lRFSTs9eQ0wpOUqA+ycA9grs1OjgnkKEIPeglivtOaqUDG9Wzoe4qcSMuEojCipigc9xr9d8YfKqMZkzPCRVGR4LlK7b52uUIOEP40obLIVsh0mVwXgYMaCX4MihZz2t7S5ebOLZQvabiHfStUzVHcDHCJOb8EzF5nKP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzsVzaen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzsVzaen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD30EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781763993;
	bh=kj79n9YefmNtRo9LpVmxgaGjyIqlF9UjBtMNm1BAHUw=;
	h=To:Subject:From:Date:From;
	b=YzsVzaenVx1r8Se1tYEGqw8mZHoVWnRteJzCimge1WVsMJheeyGdlahn6clcusIys
	 a6Y/X3SOj/aBdikbgFIni9LUtgTkDx+2tlUGVb8NcqbXzEoGwewx0x5mGYc+20S6If
	 KdpnvL/Oc0NAsCmiFHU9QT3MEYpxnC2fl5oMfzs7BT1k+ZRegT8ZYbBMlkvyrBmmDW
	 fINyvlP23aTInb96Wa69zRjbGOqb2gc7nmeg5xUWUihA0IMCFy3SRHFkOihgEbakAL
	 S25C8RvylDhbT5zpnBGaQKVrqe6vbzmgpgc7/NWUiPljiYftEP5RrleiUxWc+zfMFo
	 b/4I1afYsVdCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC5CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176399370.25626.4558800423616420116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d977049ddd9051c8f27996864c273550767c0c375c29b84b0fdfaed937ad1a
Date: Thu, 18 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781763993
