Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6A91F4199
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745912994; cv=none; b=JzDQnYpOfsiHhCg64sZuLGJFR1F6FQYH5lb+7xjtnumwAEoi1peiOrs7Z1Qus3G86HR9N2wqsiGvpiwGBSJ/IEl5yNRSQ81W3kkq5/nJiP9jr8z7Mz8cOa4z72QuEKDzs//ndYsm/FXiOMFgV/jSLWxzknaC6NIF7/NeSxoE1Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745912994; c=relaxed/simple;
	bh=J0LCdhMVIhgYLKzIHUzbfHDwMMuhkzW1Yl4Ov2TUIaE=;
	h=To:Subject:From:Message-Id:Date; b=eBoXphTW2WVQWJo+dQVc4kMFC7YuxW732zApSnkwwvrehyynmH9Cb+Oj9++hKj5Oa4mb/v7mODrZ6jRFhVrdMSFQp7ED1I3wiTKjVtKLIV2ea4qJDQqCPFe3c46mtFu3U9hlD1wDbLFA0FZo1nijaVpF63oedQ9XT6APCh6ia84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyxV/3Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyxV/3Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD8C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745912993;
	bh=J0LCdhMVIhgYLKzIHUzbfHDwMMuhkzW1Yl4Ov2TUIaE=;
	h=To:Subject:From:Date:From;
	b=eyxV/3Q1LM19oa8gpx8CEkGcsqAzFRzjsaEwIDy18MPkz8ziH3aXPC7ROKHyKRuAe
	 RbySx+DGM70AGSyg47UGL2Dm9Pkw04MJLw0zFm93mHiDXFleNGnsYl95lUXIks+OVY
	 Y1mm1jXbwpmCHSbBec9OEnQCc2Q/z9Eom+B+zu6OO+dfp7Ux7j9C2j1VfNuC2vPiV0
	 AIq3jL2VURthvijGuHhLcXBkEZKmJktsY7ZbEjG34Nb4qXfTypvEGQotVvP1Ezzc/n
	 S6bRVqpmwwzVCbTu/WfHlnPqErqfkO4OnFWv7KHtpm806909Tsogjug7GvhD3CSgBu
	 CYAiiwics4sLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC7C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591299357.11530.7948776809452902074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5317667be7fe6eb8708495129f86bb495da0590203e1d26446bc282e9594405
Date: Tue, 29 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745912993
