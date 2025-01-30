Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388A6179BC
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738262755; cv=none; b=QVjnpegN0mVtilkPjqssBS+M+xZ624BzPosoPr5TIOp3u3g1VCgPEDxxEyv21kRZ7ukzksmd3/6pZPkW74tG8cPtZd1AqvyPSoMZkQaN5wq9TpP9IV45riEPq5HFYCU6PtvwdqYtrsX9C3rtDo5qbUteUelJqAF9XaerrR9HpWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738262755; c=relaxed/simple;
	bh=jWXvx78bZyVwN34jpApAc0IuQASa3dyj0K6uG271xlo=;
	h=To:Subject:From:Message-Id:Date; b=OH+z8OHXWW9nBFSRDeZ47jIVQ270ZfbUf4f+jZabBQeiRJfmid37h524zUUCK5SAbHHvkRgx2Q2wbvHfN0nYQMCFW5eqE7zWFefMLnyAg5zLnksOX1d9dCfe1sP4iOM2iZmtYCTkDQTmWznE30MTL1RCa1NY/aXaIVkyuI5MlfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsO0FxxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsO0FxxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD5C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738262753;
	bh=jWXvx78bZyVwN34jpApAc0IuQASa3dyj0K6uG271xlo=;
	h=To:Subject:From:Date:From;
	b=JsO0FxxKa4BxE9DleNy/MK7oYRXOOawJP1D3DZfUbkXh/snt8b0qJQ3Uy3Y699aRz
	 236JFXKC5EIRiMI9Uev3QgLTF8xd/XQQaliFV1E/jjm2ULuIHoeu8HWejwZ0wBogiD
	 kN5EuAGDlnjh3fdyLYcyBievEzKlBePic5bmXOUnJtmpCQjx3PHa1G9dojW4iVTlGO
	 Iant6kbe55IidhtRtgXZmBDD0vzV3G6e8+s6+n2uzmOH/Ai8t54Hq3puGq7T8C7dcj
	 kXGrtM/X7ZC2YmKkqYtxm6bw9GbJ/Wt6SIoXKwzPrXWGsF700sdKw91xf8x2VOrVLr
	 r+KwWAwk+S/tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91369C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173826275358.5075.3318501624846036715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f054f74cc4d842983c02bd254e43b7c9b3cc6cf13657db3eab6c182ca9f8c35
Date: Thu, 30 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738262753
