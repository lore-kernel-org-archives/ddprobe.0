Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581AF15D5C1
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727420154; cv=none; b=ShLNwFKGSGk5uXyk1kmZfAc78h/yLxbSbmfo16daH+T3rJHWdhFrmvRPGB2RutbeKz4kSQWBiUet7H4X/1j2QMNu7caQMAnutTWsXpv3zVRFbw69LUX+9Eqqq4jwSge3AVv+JDexloYBfck1+TkKDy5yfP9vkrmhzi0r6UCaBwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727420154; c=relaxed/simple;
	bh=tFaqOYU2kC3Pj2tCkNXYUPc9e2dozNMCSX8bmCRsYEw=;
	h=To:Subject:From:Message-Id:Date; b=TmapENJamDFyEzwPF9QYxald2AH+QzrDS3HXMqERoRTLhUbrWggBSXUhhIvFVG7Vvic8dJBM9ORk+M1ACW0/f3D25AfbF7E0NnYSwsLM5KZ+i6XBc76j38w9KQ3QBzEH5tqyA0fhEtGP9v9v+Gi4cpHrz9h2Po8fNXuiDVgthQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVM0Lynf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVM0Lynf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC071C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727420153;
	bh=tFaqOYU2kC3Pj2tCkNXYUPc9e2dozNMCSX8bmCRsYEw=;
	h=To:Subject:From:Date:From;
	b=CVM0LynfdN/h/jKmAtUuIiOZBeH4Vo+Wj6dYQQJse8sscnq96T5Zl4m2fBhX7dHyU
	 tuwiLF9NVvOtxvg20A73F6kmM7nweLj51FR/P7/Kue1O5TjR9B+SivmnFneBqpVR+F
	 2rDBFqD4dfYTY3vm3Zy5iDyir+zWpG4/DSaSnEST/YbQfRMvv03vCv/J+ZQ7/+z4AP
	 MU1PWSQ1DFHKV15ztVAmAi0HCEw5SxhD28UH5iEeRoLTMwgNfX90BDn+DIchzpOLgU
	 sMeaxpgZbkuK1ZiVdS7/y4oPEYeoVWBTa2ET0mO/f/Hdju0qize6MYZAg7RsGChvRg
	 +YcyDJGZdCulg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9489CEBF7A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742015368.19221.7742640811531644972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83aaf2f666af55d620047bbde8a9da62645edec5edd9e8a422a7ecaf0515a242
Date: Fri, 27 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727420153
