Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F41513FF6
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717931843; cv=none; b=oXcmui9y3YASeEwb6j55iT9Ml1rW9ItHqZze1B5f0UFXjCY0DWM8otG1wZbiS2gV61Pu2zGFZvauLS/509GaNYBzsbc462YhME7E1G0n1Mi1rGmwsT9RD3rIY0IW7tuuwLjcs55XhLpOXDsynJKc1u+XDt1FahLPk03vES97Xz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717931843; c=relaxed/simple;
	bh=3LlA5tUfO9sx2MegDa8AiEW1dxKonKInHMm6nSj4rrE=;
	h=To:Subject:From:Message-Id:Date; b=qabjNbXKr9KNOwzSRQZ4N5cEWKEZT7j3f6ElDyeym957qkE+9FnXAtsU+8+/0uLC4Yi/qL1Pix9KNtzOhF6wEtpbp/kfVvK8CX7LSbhjOvyvJfofQ/a94AviSnmFJ/BWQcdcE/GxqDTZrqRebDxZ3FEhSDUz8aCE/MRwLfjLB7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaP2U3RD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaP2U3RD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27F4C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717931842;
	bh=3LlA5tUfO9sx2MegDa8AiEW1dxKonKInHMm6nSj4rrE=;
	h=To:Subject:From:Date:From;
	b=WaP2U3RDfv4grmLxZobwi7VYQKQkkgfHKMauNLLN3A0auDgi4/68MWc/eIqb6qT2I
	 fedJPK+PGc6ABkRHn5AfXKizHnrRoaj6xY45g7dTDL4B5SOiUPnX6rIaT+Oi1AafkX
	 bCb9Oc4SyV0ja+FJIABvSKPtVTAvxs7iizgXHhAqByXuM4byBPGIGEEVqeTJ1/7+SW
	 cuGCMXE8W9mDFjY2lgMOioszNMQ+r9X2BUD5IsNymSZTQHysTQHlv7U/Okx+2QoxTy
	 Xymyngc5reSLE0HBSFzPqOyknCtH6E8xyx4Ynt8GLkFLlUUvJiTl7b+8eylbbj77Dp
	 HcRr2Ga+hTISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D1FC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793184276.32001.9707960544653878441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03da4ef8e91ff6053b3b8b5406e2d0b2581f49ef6c3b4351f8ad1868d9ba429a
Date: Sun, 09 Jun 2024 11:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717931842
