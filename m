Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353F227A476
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782162994; cv=none; b=meMzbFJkvyjmjWENQ+OamAx21phUixSN2BIhdkatgdliXkPoSbWsTNMVXIKb3Ka559ydWjMp28hRpt34W27bpgQeQ8RNmEnyw1bHHZF4puyDsZupL/hyQyk5bvT+ge0i/nxSqn5xszXVv1BtCrAFc36AcfNnLn66SDRvb7OJrjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782162994; c=relaxed/simple;
	bh=lVzLjjK/hK4vNGRA+suVv3C7XADV0r0sY57HEOSERP0=;
	h=To:Subject:From:Message-Id:Date; b=cZP1FlypDB3HXQscVMZsPpqHJEOjsUJibv7uNib1Z6iPry8wowO+3yv1l8iB9ep+ZSOtigXzcsBu8bwWJCb9zqBinatJlLfnukscveY18WH9Dfyih62fWKr1MHgrkxGtfSIXUclkZeXolDj70G6JKMEROIHSC9h3ShqzhBDYSAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkrw22Ky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkrw22Ky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5794C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782162993;
	bh=lVzLjjK/hK4vNGRA+suVv3C7XADV0r0sY57HEOSERP0=;
	h=To:Subject:From:Date:From;
	b=fkrw22KyYmxr8ztvoWg8oG9lyBNADKQvIzL1nVXlnH/lycqNOCLLj4qmHeJ5we3Ou
	 K6X66q8ww65fE56typpc1AODxNo6oJ5azTPR43kmOIWxNXgmAtbqd9D5lSQQQOkmlL
	 blZ/V3LNLkIHKwmRedr1+6zwUEMTjhHyl6ErR4dzyqqUuJ8QAZUMDIptvgaZitxrka
	 ZP1r9UNuK+AQbiRPeeOb2gdl6i20tA283yT0Fz7FJf0h6zEFIJELyfVRgQncwRkX3A
	 z208jvh0VWSST2XfiUm04P2IMxl1sotx0zghAsfNKdU4BCx+el4/EaLn6kbEUzW1D5
	 HESWKARY6cZww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CF9CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216299368.30855.15592986874730607096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b1dad0b895461c368c08c86ffb5be7bd7918177461bf65b59a5ae4bcf2cc70
Date: Mon, 22 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782162993
