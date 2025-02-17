Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483E8C8FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739761134; cv=none; b=V6SWaVA80yH+3KLnsSrWjf/H6vcugW3ulZpSW1TpfxzdnVBSUVKVl9aRBnENaBzDgUzz1bdh32JL4dezz3vrsDWXBzjor7n8cUR2NwuiZB2DjwZIIBxtGBvXCueY6j/llcCGn3QAQKKq7QlEoeTSF12hJu02NDsoNaNXWJl5qBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739761134; c=relaxed/simple;
	bh=CBMuWF+ij5bGdElgqFb4VGpuktTTp1Upq36PRJG23bU=;
	h=To:Subject:From:Message-Id:Date; b=cnP+QNcFBy7ZWzGhMA1JwmdsvAYpha5xdlCWfsq5nAu/C7mL3HhKbbX+4v0bEDXb+kF6+pjRN8q+ykaqry5ufv9IxsDAlEAE5p39Vfw615oihAKDBay8U5knr+KpsqLWQUPtXll4vcJT0xEoLymZ29v3dQT+O+3tcHBYLOlziAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtzaBgDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtzaBgDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE47CC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739761133;
	bh=CBMuWF+ij5bGdElgqFb4VGpuktTTp1Upq36PRJG23bU=;
	h=To:Subject:From:Date:From;
	b=YtzaBgDvS/YLNyMykOViR7v1GnFfB44axgEirhPlL6gqwyG0Fv4/6SgiIMqVchtCo
	 gEOCyCGGn3hVn9q+M0Vs/0UkDZIunYm8xU2DJ6b5d96KAPHeqTY4N6+LJvF6nEREZD
	 jyTkFyURBikdb7HPbAsw1/OClzfBe4FzTJJkmdZpEJv95Nb6r+5MXhTkL5ZtYlwHh3
	 y/pjCz3VVtBivfggdLwVLAOFRu4y4aiCsAdCV0XWpL4RsvvjkqVmMhz8y1IE04qCfC
	 g4btpSWJkHCgA+gU3MiSiziX4EE7hDpIxxc8De39Hrw7UOI+FeLDLlwx5K8i5weSbG
	 us9I61LTJ/bDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC003C02198
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173976113360.25225.1354464650723644379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e1a02d13ec338c2b82874009983e8d9a01825d880421022d8a3a789fd1eaa8
Date: Mon, 17 Feb 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739761133
