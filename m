Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1610B10798
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708060097; cv=none; b=KUyoW8GMqoPAPhAjpxrUFJmqY60CFfzhwyaVdxqnIm/qjCqD+G5gLNA8kbKg12HgIVcEIyikyhg2AbsuiMrUpJzxoXcjfI5a4ZDYWg1Xf5d8UYqxtBlDFGD/tQYzlj5JgqOt3dVrzcJ28Y3ztlK78h2hSUjjbyP13AJCN7W/WHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708060097; c=relaxed/simple;
	bh=q6ga9VeO73LKCYcn3jGSz9Mf/MX0xcpJB4fZ/wy0BFI=;
	h=To:Subject:From:Message-Id:Date; b=YFlHOBxxBUb+mLo7BJQoPlD0oY+C9tCxq9m70kh6EqEBoqTtNzUPxu+TXtlsyp/E9p8qwE5zB2ld+tsrAjn/Cn9+iWDYFeA85l/QCnSfzm8c9ElJckh9Etpxp09Io6kFqA9LlN18ChBVpcNoJ60LdffF4VC+TJlDWSQiwNPIAyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J47g+Igy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J47g+Igy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807CDC433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708060096;
	bh=q6ga9VeO73LKCYcn3jGSz9Mf/MX0xcpJB4fZ/wy0BFI=;
	h=To:Subject:From:Date:From;
	b=J47g+Igylcrye+M444oJ3zLds8Ei3W5215uClWWPye1R/dnlFqkfz6sRIvtyOBdXn
	 cp3u24a6rgtMa+Xmq+6SFc/MnTY1dFxy1w8cbakTcI3l6hD/Bfg3MNJ8d+oVJ5cjDO
	 iC3t9nii/YgLHxuPIZbEyybdDbK1OXOvhJVN5ewHNDaMhQowgXfxjn2qFoJLoucm4B
	 q10ZicP9u8x0rz5HykRrlw0fcXouWGPfzwS3QrfP4WSZ04G7lY3glEinIE4Bforu1V
	 320x3aMzfHQNpPVkjwdUEx0WuvbhicLQhwQ6qB4r8YVQkBfwrl+M8+j6Osu+fw3H+z
	 zmT4OoGhEgRhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631F0C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170806009637.28662.8648252872573580135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b535da6981834be62de1a3b38977e4c924aaf4a04a6b5836381e353a7ac1972
Date: Fri, 16 Feb 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708060096
