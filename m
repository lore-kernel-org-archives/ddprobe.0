Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DC735E1C9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779752554; cv=none; b=lWzbsU54ZVxD9FUMEIORPyada9q8mo/8Ksh4mLfZdZIj49OWR9SUBne2yUNZ384PajGKWjsBu0b17dR7HClshjh5O21KJw/a+pz8a1Ju1TRWyU5uP3rqNt37yU77e2pMtBrQOuBeSEZTo1bykUsi2zcD7FyPHZsnvqmhc/Kl1/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779752554; c=relaxed/simple;
	bh=yuUod+1dnQlicHa8phXzyYTIS3jO6QeKdmiQfegaug4=;
	h=To:Subject:From:Message-Id:Date; b=c44+Mmq0CCJSLlzE/R2Us3Uuq3FEs5ZL5PDutarPufjI8d1xHkhRn1oP37XPm0h9CuGlr5NZACYeoSwBq+zTqGJp62SemEUmon+365JLz+s9DI8YSZBDyK1fRJvx1X6AfJ7hDZIp3koxSLrTQB9VxnTxSjTlFQtuxZwF88xDkzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVoMviHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVoMviHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77F0C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779752553;
	bh=yuUod+1dnQlicHa8phXzyYTIS3jO6QeKdmiQfegaug4=;
	h=To:Subject:From:Date:From;
	b=GVoMviHajFqaQnsbxX6cjQKtiTHZRRsYzDwYopEYWN7kuLYJxycJHWkvn4Aq65JpD
	 3KQuEJo43nwCfIkTaylCVgHNLFz/7Y3rx/a/LW5fhkAlQvFEeqg/uxvvlBA6DIsFd3
	 ukyAaKP12AFeeJ2AXW4YUEAk/OxTACiax1LmRBOWmwlU3seZKdyFy5EXzC/Vfx52iU
	 vazMo4qFDSyJ1ecNxDeYUNiBGDqrNAMBy6Nzoio447W7Tq0yHnfir738BPE6pvEWqr
	 HbZ97ANbKDUpEVVWDqazFcqm65F3XArka0VALR61xWgDhSj3uOBEc76l2iTgBaF7eP
	 CVc4RY7ZMuS4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF248CD5BC8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 23:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177975255368.24155.5278629815040079563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1163515e7f274e628019b4d6833b840df7399ccf541db35531f8fc3210b81c95
Date: Mon, 25 May 2026 23:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779752553
