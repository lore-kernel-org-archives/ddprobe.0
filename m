Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D84EE552
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756891794; cv=none; b=ZFd0qy35ljSE4i/+jJ9w6uJRvqVBPLjVsfA7TscMjnqAhhQBzP4YJlaDwOOwMBnsehyka5fxTLfgPOjFrbYfBkxXp9NOLVtmJxuymJQ38M5Lyrh4UmugjJIT9jWutSbt0O+TDVOgPbMmT0hSTsCDgzTqcraA1hcAtRVVPOZ/Yfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756891794; c=relaxed/simple;
	bh=dOG6PtaSFXMPLnyf1/Fwd3gIhyIRUGzx5df8JQxQ5CQ=;
	h=To:Subject:From:Message-Id:Date; b=s3LohsGTaAe332i4UtBSIZ9VYPXrDuLt7kXDxXLkTa6q4t9cirzXc9I6IVWK9mQ4F7n8lJ7811O/dnCOFVNc2qm8KCuoDVLKKmmtgud/+GdB6Sb2g89uUwiJgECWBIAJh8iNhl8n+qUGfAIVwRaawKqtYVdNX9hSc6G6aeBTPak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5Xz4Itv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5Xz4Itv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55BFC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756891793;
	bh=dOG6PtaSFXMPLnyf1/Fwd3gIhyIRUGzx5df8JQxQ5CQ=;
	h=To:Subject:From:Date:From;
	b=h5Xz4Itvo50Vp+wwqTlsU12SzpUTG4V03lRQZy8d7Efn6K4G98HgD0PPrGKuFmqrP
	 qqecnxG5gSTxG0Ln+GDPeOLCbITpPrO2b+MCHqd2JP0VkRYEPmNyRrN+bbl48x1xa0
	 Fwv4a5vO6/ApUuVR9Cuhj0veGo/H70WdNk7050xSqTtHU5W4ZWCnW9sM4owh688PoP
	 Hhe4wYfli8bF27aHGxTyNBlpQpLotFxHgEXWLL2o5Gp4l61CCSu07ep4vABGbiBZwB
	 TU9j3OL024Do4MxPYELYn/AymifeJTfl+T7AFC7iuHfcDn2/HzZ9OgM+/wy6gQngAw
	 dfz9jotimLymw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE34CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689179358.3739.7504944404260774837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c4fa6647b0039f5094f09fff40a0acc1c4cbdd3c344fb44540e27cc1eac415
Date: Wed, 03 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756891793
