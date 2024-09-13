Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133191BD4FF
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726221954; cv=none; b=bDTx892WzJoef2mC+tncab3ddkx/LBqx/Aww709eB1y80v12zSX8WNX2Om3fTEYmebp8S3Qourq7xy3/ZuMngxuXsifdb/GafqqbWd3PLuXMDNydEkeQLM4l4vNGj0T4Ae76RGGs41mxAc2mAQodmydU3XIQabGX4llB5ScSf/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726221954; c=relaxed/simple;
	bh=5pNLOEL2SsCnI8jGa7ubCI2QZVc2lcNxxTAe9LCa/ZU=;
	h=To:Subject:From:Message-Id:Date; b=Nk9h6WCyJtTxwKYdogtXUAFxn8zaZxoOO0pOs26k17/9S7QZe2ONPxv+xvz1swUSg8A3d9wwWOi4G59yHUMhR9MUPvTPGPY9wLYvUv6TgifOSziZysN47oiIOsW3xFFMYqmxrfUyqo2OD2ihluNTcJgOeAEbW7XQcruwNPtObus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EU3Gn7ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EU3Gn7ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A690AC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726221953;
	bh=5pNLOEL2SsCnI8jGa7ubCI2QZVc2lcNxxTAe9LCa/ZU=;
	h=To:Subject:From:Date:From;
	b=EU3Gn7nsRwk1xHj+WYO429ry3a9rVdvdKf54K7MsnKSAPDUdeW4CMO7lBzuFaSEa3
	 Hrc+fL8Nvcmn+NActx9smL2mfL0YMiu01TZlEcYgJ4gFplcJJP2amL4EUzfcTJFuSD
	 KBH+7xGDUrYN0IPt1+1bj7oydntNA2cLflMs5ZOb/sYP8riEQKxn5D/u+xQF9v1ArS
	 e8YBw0ACaV4yd6voUJZFZrV3JpqiMUpHTWNEFqkQoaZYAKGJ4iSu5DRc26igJmsh9y
	 RtYIKRRgAAeZU9gD42UnUfpocsT6167oF2XZDSF9c9nUPfAGik9FBMhNp3rTFmW2Tc
	 MvrZM75n932vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927DBFA373B
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172622195358.20268.1983251619484990249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6975c5bc8bfa93ee9ad78c1898128d8556a9d7332831cf1ff774fcf0f7b7af
Date: Fri, 13 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726221953
