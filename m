Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CF72D613
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721361354; cv=none; b=qX4nzJuyRlpKKhk/3Mh8M+VPndBU3Jni8DwMozF2DR0UX2DvzbRkrw4NulD8bOJgkd/IwB2z54ypKaTJ+NboFN3O7QmIEBFjbfWH0k8xQFI5aG8fstakSahQ5li2SaRH8M0dAbAGombzRJRxm+fvUzwaD3/tsWRoPzhHHhrppdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721361354; c=relaxed/simple;
	bh=z4WZYTyiSpS8FGldSvFUFbrUgoWwDEfdFmt0Uu2F2pg=;
	h=To:Subject:From:Message-Id:Date; b=eFiIJy+ZMs2EV0bm/FM1y8LBkgOfHWblMAqjqY6Jh9SLeRYAzV0oEfFVTnXX2Y1RBjAA/2g3QHWa6m/+jeuXaY4UhpipL20eBY1FOTXiUlLyKiFPBjtC0QtazypGBXC4k7s2YajPk9n7UsUk/GQ+MDPU233H5y+K26MdNNrxf0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZZajzwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZZajzwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC75BC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721361353;
	bh=z4WZYTyiSpS8FGldSvFUFbrUgoWwDEfdFmt0Uu2F2pg=;
	h=To:Subject:From:Date:From;
	b=iZZajzwqxpRihnoJIXCCGcZhVI6EsyKnV+l06xhtwVco4FC5JvBVw2y31BW9h7z+B
	 Yjvf4a9LNkDHFHQi/sXqIMQ6fSKhYupOqIdUg8eochrByqFC/zVCB8fcCfZup7k7QG
	 eU0wlW0mgLE2AFsqA8k5qMzk5oEwK25JrXjTmgPK90rFPQ1O3ZDKawDjgnUpb9RryF
	 e2i3Dx1avzK+i62zoYT1PeCQA7/SYlEbNPqhk25Xzxj03tbHeLt00koOZZuTsSV/H+
	 2IJHGGoC6QL/gsvbqKNiCdW1NfZbT4MPe5MqEAeTPhG8b0tQcovdUx3kk4irFIaLlB
	 yUIYST3IkpUYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2E3C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172136135362.914.5448263512536323772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b803afc26dab1c5de254b26e4f4a246cd6862f24e5a7d0e691843c558cfed2
Date: Fri, 19 Jul 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721361353
