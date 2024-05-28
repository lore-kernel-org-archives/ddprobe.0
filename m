Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9688F49
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716936863; cv=none; b=qAF7+g3GEk2YsmrE1fPsGhH3SYoTUaUxoF1xWf9GaGnOoF6xV4DvtyGK0KHWaBtY5pkF+Yiu5pQdPVCrgRoVlkmBk2NKsIe0rGKLLrejaWNhhZOZI3poh95qJgQAEArLGXPVI3ep1ttPu9812oJ8MCXMnL7WFaQHXphE6pfFhaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716936863; c=relaxed/simple;
	bh=sDiYNAj8XBAshVxNLmCv0VG4qGQZDZRGXPkcAe0Rknc=;
	h=To:Subject:From:Message-Id:Date; b=izA+FjsHaRgety3nIEuruibqlTdVqHkJQITuRiwys7xBFxfs4n8W7wlXtcvuOz1l8k9Lids0HjocEe2cfPJfAN23pCbrarKWwHUEa+ZtmoSMw1goPuMNN5HuY+RsjfE0E7NNxJl+VMFilw5AZk4SlQNiF4H1MTI/ifO9XoWJR7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCyO9nuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCyO9nuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B51C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716936862;
	bh=sDiYNAj8XBAshVxNLmCv0VG4qGQZDZRGXPkcAe0Rknc=;
	h=To:Subject:From:Date:From;
	b=TCyO9nuJSF1EioyjhH6QPKuOZONgNT3v26UQk95ey3w2++PdINEhyynp0MHzIcqeu
	 fN6nctsjxsYPY0TBOzdymH90M2xDBv/7Oix/WPPMOtrxQDQPY8yjvyuAsDjL6a1pow
	 tT26d0ZXYU7Pu4kMUGsSTWZiAYRCm1ZrEtv2CDyZQc0uL6ezzWOWTPXzrYthUkyLe7
	 dfb3ExzedbUxWVTbO1Nh76lmBJjf5mryRK2NN2lZ3LP/Nv9g7yM2XW5ggdXLO3pLeC
	 8tHgL4E2BUQUOQwnnXuJMdlPkDIhSMsw1yssqyOhG3Q9eE7fMZW1OVT3iK/mcqswTt
	 trL8HLecni0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC186C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693686276.13285.8565238545400385621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f310140e3ba9ac212235ba8e2ddbceaaf67f6305e3f9689fb06cb7647f70d632
Date: Tue, 28 May 2024 22:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716936862
