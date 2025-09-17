Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B4134136B
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758123593; cv=none; b=UO5zUZpxOowgSGG8Tl+sxLKE97Zbt3GueqZsujqWMt+05No3KwLQOGr+Ki1Ywv+j8ZWzCKfP4KAkm9TwWxiYgG8Uo48fksa+aTs1yvgmhxhXAV/TMxcrNHJO41Wwe6vpL2eQC4dqKiLicS3ZClveawCPAyVHC7ldxDLRSvdifFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758123593; c=relaxed/simple;
	bh=BTat1z48k8ESui8q/5b23GJBji3tglDjiTkQS4Ac+GU=;
	h=To:Subject:From:Message-Id:Date; b=pOBTJxZu3dC7KbrtY2MdbM8l5JfSI5hgWlz7hkGiAkfj2QN1LVCz/PvT2k6tqohevemIKBG5NwKem3E2qkIvwMUnz0/Ayj4t7QFnmWgg1g+tpUb9Kx5OfbXyfFPfOx+S+MEY5VdPtfNCMvYBmy/S6cws2Oqfmu/poNluKARgiQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjpSu0Y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjpSu0Y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99FD8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758123593;
	bh=BTat1z48k8ESui8q/5b23GJBji3tglDjiTkQS4Ac+GU=;
	h=To:Subject:From:Date:From;
	b=WjpSu0Y8HffMrUgGO7+S4kYTLd+H7hyxMNu/DAFxvvv2J3GSCt5dKPKWMeZBM+j51
	 Yrv0EcPTdjqwQkxEgL8O3+n4LOfmW3LjOhxZcDW6KOaILgHivyV2RpItkiDPxphDGu
	 JVfD7u0oo/c9BWtBuf+5QUKa1wVo6OW89zJRjSTbtLSVkCHqK+Pjbb59Ex4hR4N5eK
	 qtGVW3BVAS0ZDBoWWG1d+OU8RzNxjm8d1jqkN7tm8I2P6WVUGY90mgbgSs260CmSKC
	 HywBZy9ElZVLUnyYWe7iNvfYSXdIad7TgjnRhLxaPmJFrVv+2gNYaRJzvYniShnGja
	 ZoreSjzSXJYjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E66CAC5A8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812359358.21714.9824749815094912036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912a2fbadf89dd4874ce3bab5fd353228521e55ae30ed813c336e7e2c7785d22
Date: Wed, 17 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758123593
