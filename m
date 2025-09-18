Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FFB34BA53
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758219593; cv=none; b=UGq00PZ/a8a3uNQU8Jbswhy4oe5GdMn063RhkgDqwaJq8iJKk9HnJaXMFkCkSwy/5+gDWVd9nrPOk0penTpkZW3cWOVZ9C5qA6PbyuT4lWApQCDl+Y+7CFgHUgAT3oJSfTwF2vFikydsDAIquCyzD36yTdbB2WE8/Vke0ZGsOOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758219593; c=relaxed/simple;
	bh=9Jg3iDwobfXtB1FBRYUq9DtuuGmt0D7IgHcV/3S+vDk=;
	h=To:Subject:From:Message-Id:Date; b=hDpC18MRMVBE/+rZwMXIUn8IXfuxGiosB42BdcMZsVKpemq6t0EhVhR72Wn3Qgn/7TBp1UT7BFYpsKkOX/qie8MV3J1jlPXN5vcYJ0oPETzmdC5iI2KoKIit+BK+hi2SojGtFUbHvrFFhomgau2bdRe2sOsnzdTHGnvXSty9cTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fw5Zj9tD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fw5Zj9tD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758219593;
	bh=9Jg3iDwobfXtB1FBRYUq9DtuuGmt0D7IgHcV/3S+vDk=;
	h=To:Subject:From:Date:From;
	b=fw5Zj9tDx8PhyX4AWK90r30j616WmzteWNJ8Zh78fwocnR30ikVzip/t+RmzHKH7K
	 O+y69fTlxpCQUdcxg59xqgElOmhIBnw8AhWaAOenEx/sz/MrSrDFqPCvHEa17x2VDG
	 zPNzUQuFuJpGYoYvN2piNxAUCF+Y7CKyGEkUn7VLWa5rXxQR1GCBQdQXuRrdNFhZtX
	 xMYEnreTMeCpvvQaO2PICtFTkzseV6U9PhjWMe3YC6707euupb9Q+Qqx1mPhMFjXX9
	 0WFRhJnwmonN3cFPb8v8901QFlve2Di4FRjFiKTTqlCa0chI80YrZYq7qtpftpdop2
	 OK/Xii289jP0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9253CCA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821959359.8814.699298409632241397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66af574f17a5dc5fc0813100e4dc85d7ed3995dfab71c0039666b96157e038e
Date: Thu, 18 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758219593
