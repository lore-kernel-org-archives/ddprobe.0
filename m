Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE2B1DE3B9
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733226354; cv=none; b=HVup2ExhHR8Ty0ig5D8X44ovGL+3EeAyrhH5h9pzNQ22J2p6KdvUbpWDagFp781ZQRreEMdGtyQvBbyxVcC38RZxT0PHmTolCSJR3jq4l3fkyfVtXQgDb78dStZk3x9d67GZkQ0uYIAvOAb4O45PnWzpzuTmuwuXzVjYBWjgGUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733226354; c=relaxed/simple;
	bh=stdBLy44j9sUePBcrpNQBbOASzx0b6yPftvVtWSz498=;
	h=To:Subject:From:Message-Id:Date; b=re0DiXhVTvCf4eox3TWvQ0t9aka95i9ZO1CYdFNWAPHyo4NIbZDOBl4a6ZdsfGQazo6yyMD13e7jYWamtukHsLIfhrjmrc+kt7S/XTfWuLtydoy4OejI51ooKxWb0elYL+FsGmSqLh2ZlSi/yF59gSfNLGJQJWsX3JkAC25yHWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I72Gkk9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I72Gkk9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6A8C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733226353;
	bh=stdBLy44j9sUePBcrpNQBbOASzx0b6yPftvVtWSz498=;
	h=To:Subject:From:Date:From;
	b=I72Gkk9lYCLvCUV231Sx7lq2yHlvuGtnuPfPLoeRrASPxR24YhcNxau4aevsI778M
	 k/137yKnpNbhksMnAh3eJCeLfPQbDTTZFwW+eUlUo9mVr2zv0q/i8+uAIMkoL/2IC5
	 O6y4fQSkBXg6i9l9HwpjjdY/jNlIJSQcMd2rWbB7rbvIl0nV2KeOTJyy6LI1ZQkwvM
	 aoBuKuQskfyKMcW7BhpzVBkKJWLu5L2eLYI5fKBCzuhquyf2Lu3d6mGGtBAruhiPZG
	 60eXpCzd6pngUfFQlZVkApFEnhLzzwjxEvhNEfvBTZb/QzVYdUMSA9IcPDEHyLGcbe
	 DBsc2wWh1ze2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE60E64A80
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173322635362.3870.13646012992384374306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98970633246bde6f568c12b368f86f0b35d0253f0e04987503e3cf9896441417
Date: Tue, 03 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733226353
