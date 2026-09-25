Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495C94E4312
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790352034; cv=none; b=OyDs5ue20LS23jKC/UTxIS1E92to8f4DNJAywSfZcWT1ah6/Coe4lZvYaOxAZQ8P6kqC8/1hsWFliAeWYgMHqjUlq5lqx9YN7FbTmW7eWXFAkrSrdIcejbeLWfcSIkqVt+4dr4c/wb8wBvb4Q1MqPD06UO32rwt95S8tzVqGDt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790352034; c=relaxed/simple;
	bh=rWhzdaq2ubH0N1a7D3BNDZ3u7YYcoxW3dZwGWD7263I=;
	h=To:Subject:From:Message-Id:Date; b=f8mSA4OubuCKr5RwqWqbWa8ywIe82w+/0ZNGumqv6ONFgEdUntxS2yD9LbugRjK3I7iHN4sGE5pDudyo2erNNuztbW887QdGhRc/Sr/YKtz6Zf1bOe4tgB3OzAA2vpzWcBaKmuC21Nzbji0TPvfZVMR/gSWx0bwTd0PqGvymLXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlKDy+fU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlKDy+fU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9828C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790352033;
	bh=rWhzdaq2ubH0N1a7D3BNDZ3u7YYcoxW3dZwGWD7263I=;
	h=To:Subject:From:Date:From;
	b=IlKDy+fUPyvhjs9ptwVR1mpwARKRp4tUQ/yJbcma/qnpzcrWqaolcY985Mzze/JUe
	 L3Cu7rQE8b7nTlV65DQIXqeNgRepbl3yCkRlUR2KmTG9wm90l0ql2cOURSl8rjUcGx
	 rAMvw6aL/uF3cW6/qiqz5pvEtndnOCdmTfQmTgLYSkDID3I2WGiLILFzgUQFV5QkB8
	 v0pfjPOKE98u6vsNB0jX0sWH/WG1xqRCjYqoBt+lfCrSnZjM9t18W35tMbMjy6aWA8
	 7npii8zniuFBXcmdZPiVjFdSURc700hB91/I01oc/xCPCJrXJYJezrptlRlmaMzL02
	 cWLO8xOKZQEcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCD0C98325
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035203370.21216.17023647510824095166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ebad4cdff58da02baf8d10071835ad70b84760f62bfb417870981202153e1d
Date: Fri, 25 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790352033
