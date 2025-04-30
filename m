Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAC527453
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746006594; cv=none; b=Z4keCDeJnMQFnrPHrW9S5FFG2tuyhibn1LWyu0lWlGEFBso7NK/ipt2fwIl0VZlwLge5yWqP+vnsUI0jLQA0n0kmhAVIKklquP2c6icC+aojPSGIkcMR6ErGFswWnqchYXqqNhgXIAV8qAhU+W9hoNc0Bwd8UJTKfOYgfUvNa5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746006594; c=relaxed/simple;
	bh=VmAeOvigi0d+Gyp9xLyonx4fVEJCLqdDxxuJq8rb+20=;
	h=To:Subject:From:Message-Id:Date; b=KlxRS7bCOle+/eIJrKUXXMSjCC/Xh1sSPMfZUfcdaopFXifYllQqtd2fANHxlR3Y6Vkz/s93vXXznYUnXEiuwHSrEOeml5UQ5sEWZ4jPehQtMbHoIA2ghwiCQQxM9xRdZ9c+jxjswdkJzKJKmJi0EmFxmS87vTuLR/qsQ2BDq04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2ZKVdpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2ZKVdpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A572C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746006593;
	bh=VmAeOvigi0d+Gyp9xLyonx4fVEJCLqdDxxuJq8rb+20=;
	h=To:Subject:From:Date:From;
	b=F2ZKVdpb/bX9+2i/bS+pyMsJs1qBWeoJUwJd0y8jzvE3rWwGOo1/rIY3kMGQn7rD7
	 oANd18pz1vpGYx65Thuafm7Hp2WzZ5YL5nkAMWBgtxitNFu2INvbO7H92Z76RcVFdk
	 aR9eKvEUqSzGM6cqpdQuuPEXhSSUNq8ayU7rqV1XPc92oHG68Mj/pvumaN0z9YmoYl
	 4WXN7iZWxUNEq29ASOs5h33lc1rX/hBvNuzqtl6U0ZyCUmlEB/W3jml3LIN3GrfB1G
	 wCppI3X2aUAIFghs//rCVqC/BZJbWVbCSSPYUCxo6+bmr2oUXuRoxeROhwJhq+MZHA
	 c3w5/af73BFlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD2DC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600659357.7257.17467076094884661004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1d21a1df3277b6fe48698e85181eaa5abdb0b458e6d74e9fc14fdb9f71dbdf
Date: Wed, 30 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746006593
