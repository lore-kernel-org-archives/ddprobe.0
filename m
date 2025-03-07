Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0FB24336D
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741374534; cv=none; b=pUdE3f5KcbZ+CTkWTbpBQBCcch6M/WAAd14xryrdpLUvWhyy1oXdJnXgFqs1djqUBxUnb4IFmicbrwbzuAGTrdySZUJyTnBoF69axQB4/ezTEuASwJmGtEooU3sQ8Q6x+jGyFuvkpCigKIthWgL+20VQJ+dxAXj9/iAn9dQAceE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741374534; c=relaxed/simple;
	bh=2+ABPsPmkH0j/MG9/1BdBRLYwtebBSGIeJcZG/Ovnj0=;
	h=To:Subject:From:Message-Id:Date; b=N/SDuIXBM4xuQma+TcWVKn5AU16Nb34vML5YOTFjiEsoHSS1DmWTmVcRo6P31CVmVoqj5SmjaFIODargQG8HYgTeESAH32czcHojiv41pDzq+AOC5s89sa5yOFoLvhKaCqFWT901Db4MdJk4ydYnBnP5WPqRIw5OsDOoPOwvGNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAGUPogP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAGUPogP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACF2C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741374533;
	bh=2+ABPsPmkH0j/MG9/1BdBRLYwtebBSGIeJcZG/Ovnj0=;
	h=To:Subject:From:Date:From;
	b=GAGUPogPS2gEtE0kgaVjWU1inmYD5yEiJ7EPBg8W74TVLBcm45S5P9i6v7lfbidCN
	 itF6ksIj/7G3ump24T7qUJiBbCDR2XkhiO8bEBtQ47WP+JlBnHxtO8fADg/hW6cAMG
	 RPs4vfBot/RnIXflqdqXSElbUhckyacFlqFwp5J2KggdMIuOjv8FXBMCB/COMhLcJ7
	 NqV1HmVBiEL1Hs3evfqpSswXsflycvmkhVbwK49uNAB0Oq7x2HBrZNgcF7esdFFV3G
	 W6dT67x66Lh08K6QRwP+I+PmkYw+j5MV9LlawiogVWsQSwv+QNkG4teMFJfvzowK9j
	 yAsRfEDG/WeFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A251EC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174137453365.26162.12368459106283328575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac8c81872272a7dee001c125f9019167ab377e860ae06e9ea980617021bbccd
Date: Fri, 07 Mar 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741374533
