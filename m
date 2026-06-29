Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310702D592C
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782719914; cv=none; b=SWFypUpSFweTRXlDBzF+JISIOjW6h3Us71XLN5HmuP3J4gVINE/bJ1m3b2mUwctfsqltrtCZzZq8JLbrEcSuQNzdX07F/unhnFA3m6vPZsrzW+pZ4tvw6TSDEVM7psvzVBQ7XqiOX4joaSiquI2iRvLCHMEA9DIlV0nM2hNYAJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782719914; c=relaxed/simple;
	bh=nQ4KzT/tUDXBbd7ITh9sXuSv9RoOIB/NiY6h2BibrLA=;
	h=To:Subject:From:Message-Id:Date; b=OcfgBYS8m4nbREUDviPIVEoIVO4uDqA+5DxNeMDD7pFeI/RJv9c7uQHY7HX7HO1QoZGa3e2ItWafs6J5oCC8KyGxLsXB7w3laQj2/ROEQBmIxs+4KcNZW1mDvTp2eNcRsyGOIBdHFBy73hUDah+uqeaPzyvUiVlklYzKWcFnXnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TF80vVVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TF80vVVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0A1C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782719913;
	bh=nQ4KzT/tUDXBbd7ITh9sXuSv9RoOIB/NiY6h2BibrLA=;
	h=To:Subject:From:Date:From;
	b=TF80vVVGiaCvPPm7xrsyatQblaV1PhbQZYOQIVD5PJ+r5WqMR9oQWQlAESwz0r8rT
	 UsaKdl2G3ipRjr97DvPbOr3WgI8BId6OI3831a63mRqAghg782n+a58DZfynvTJzSM
	 RKL4HNOx3BmL85e7YpG9wpZ8yaV5Wr4Q5SeAQjyyVc4XAYTdMKOkqz+vdcF187Fnmn
	 PPreWO2utkJssslZrf8kIivmMg7rbSIc3k6fU1Q4qVyRN3ix7kmGfofNthYa8E4cfp
	 ngwqVKXf4Rtl9yRrUwdhVvkImP6R6SBxmcBq8d5CQyfxx7nWgdUsCZxM/xNYzwJORQ
	 0oZ51yO3oyEMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE96FC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271991370.26906.3071005468960998621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d9062ee78892d272f25477a09d876df0c3f1d1895d3b93dc097a306f78306b
Date: Mon, 29 Jun 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782719913
