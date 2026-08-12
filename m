Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5263F330647
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786528834; cv=none; b=WoPHRnBdyymo83Pk61v4rZ9LryNAfk4bMgJqXvETCofudPehwaHc4awbgv/2G2EUDVxnImka3UExqvrnB/MH/9A55wRmPFdIKpqR3KuMbYZhvbKB0074wW6en9KnYa5tAXjjNIdSKd2RbSIb0ktjB2YuHO2CFLjRSKsOhI4UFNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786528834; c=relaxed/simple;
	bh=NOdXf9LAMg4GktOc2eUQIHdfdNcQ2HD6YzzSZhShnU8=;
	h=To:Subject:From:Message-Id:Date; b=k6q61gKyPsIEkW4UZqzdj3Ar4Me7+Jo1svhsby6rVOPXNubXbdTYyVUPRCFvnwvw6qHJlFQpxFatnDG8CLrsFWozPuBfSmiJ3g1pbHwTilZjbAHsNA3wZM9ypXZynGgvthYlzzQleMocuiC9V2p7aR4afHdzB7vZG542xn4S69I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsbRsiW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsbRsiW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AE0C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786528833;
	bh=NOdXf9LAMg4GktOc2eUQIHdfdNcQ2HD6YzzSZhShnU8=;
	h=To:Subject:From:Date:From;
	b=AsbRsiW8MzqaYb+32g6kymRgyr/BsnYE+R5aKYc9TgniGlJZk0xwBo640eVTTeBI2
	 MFYvrDK4DMwhQaaMzEsRmGw9ilbjQLhfHLhqYaJl64C4SOFEAzrAV+dmsgiifyxP6P
	 D7aYUqLMyC6yVbrPZMYk71dCb96Ce9yz3D7NYfitnpv7iZ3yl+Sf3zTns5sXFLof/K
	 VAyEYUoAVsYkMioK5CIatQQV7l6mDFh0cjJzQxHk8eTNVVOifBm2lsMT9zPOa6OTau
	 pZVdR3aqZ9W2lWytXC587lyJY0pg4//GiRqqzb5gsYiINV+s4r/vgsPttrxa/w2l6/
	 7BMU6qExiGTTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC06C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652883368.29485.13965331687566751554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0feac3ab29c2ffd4bfaaf246f8a9548306eac762cbef6b9547af3427892bb26c
Date: Wed, 12 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786528833
