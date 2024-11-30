Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2A022066
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732976754; cv=none; b=ghYiM3GR9yJgcMQ5MaantVqL8vFtVSnjVJ5CzOoBhqidN04XEQNJPIRKiQZKE/JwPFMGTzE37TiXNn5mYzYxdwqRZPB1IKIfog2DlCQWriKQO7kVOGKt/c5+c0TsefR7djx0uukBAYTK3IXn21fjrw9CEs5xZG/2/rYpqMGAFto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732976754; c=relaxed/simple;
	bh=OYkTYcTDZIedaqngXshHOUOrxZVCLW84u3wM48D7vLI=;
	h=To:Subject:From:Message-Id:Date; b=Oq42FPZAdx4B47kHrO58plKOad1cJeV7QNfjmFk8zM1/m/ehYxndJ3LPWOILxG4En15b8aBD2fA0VPu7aHllDyIhLqPbykkT/P7iTCxZs8UV7/k+brsSZxKKNn8ZvX1hPL3UThtlyzidJFMK60fYSb0dw1CgEsI6pltqSZyjA6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1Qd5M7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1Qd5M7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC9FC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732976753;
	bh=OYkTYcTDZIedaqngXshHOUOrxZVCLW84u3wM48D7vLI=;
	h=To:Subject:From:Date:From;
	b=e1Qd5M7x2S/f+bkjls/RKTTHnb7HZ+x5RQXrTxJcd+s+Z9/aV/HDay7Rj2+0uOOlH
	 TvHabCrsEg1mCiYtCswaeKfMHVM0VD25ceLWC483CwtBthiM9QZ8YUGUGt0dtpFuhG
	 pjvvF9DhVD04mBNEy2ElzBogs4P6GAL3PMi+sMININZqbWTZz4oXpNkwvFXe8fE9dF
	 hRK0xR+KaHPLrzDg5aRlwTRf+EJPxpuejPvFrX5NPqMGJ5pjVNxiWiRQruoZfAVe6Y
	 hoFSFakBnCirewjuibtBgOYsN5niXGIs3SVOT9jP0I+zy+GO/p4sMVE0KDRIwY1X4H
	 /vUMl53c1QvOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B81D73604
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297675364.12921.4128282498530285473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f4d7286e0fdf5d17b79fec51fa96e833aae740137c03d4c058eaf547d1bec7
Date: Sat, 30 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732976753
