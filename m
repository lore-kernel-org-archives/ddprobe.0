Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B1C1F4C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757309394; cv=none; b=LlgSxG9sXC9bLVPG3JtJmgX3mttIzXOPYToh7w0BS0S8ojTaYxq05YHPITkodGBhunkAPA2UJ52WXZpLg77YjW/vt4l//NshRHGaLZ7ezCaQAy7ytOSGxObkRCiR1qLKG2TyHJaPeWdgxekgO9h80SY/cDFhIJ8lUGLizXWGjm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757309394; c=relaxed/simple;
	bh=sQYy/szFxHKRr0cbHnUe9TVY5UE+1lqRPYhCdIjshK0=;
	h=To:Subject:From:Message-Id:Date; b=q0fbZQ4Gq7cbMBUIiU3nPATv9tmtONzslrMiZjokHCoSwntN9nxCitn+u5Auv/hdGbwjcfynZ0vJcjj1hUyn3h1otU+CS5R+xTn3Pc3asjTidNbzXA3WL5nQthkHzh9Ccwsg8Tk2Gz7phdztflV098eC5mI/cDs49oh8/+FOz1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqwuTOga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqwuTOga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AC7C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757309393;
	bh=sQYy/szFxHKRr0cbHnUe9TVY5UE+1lqRPYhCdIjshK0=;
	h=To:Subject:From:Date:From;
	b=rqwuTOgaJlX5P+wjBemFekXbbXEKDpq+RcLfr5yAWWtMyny8ecp0Av9nUXMEowx5x
	 TKcPwUpU3jnQ/mKfYNIEIimEHETpsKCnQyFec7YXWfzzt/oGctwOckJQLdASHrcp5v
	 43iAOAWNnncj8WHoLqiMz0CaoP+5nP5YiUMSFnzVrV51Wu410d5gQ+KY24PfOXunzw
	 5ocubenoJKzMdsZst7YTIaLeQ6IOUZ60FAbK+0ivg1A3AlIGtHbL0vuqnfebw+cwNf
	 lPeDseLGD/2fMCVBY1VCxvDBDwbiOna0PnoLgyhA1pADzuFpaWaY9+Xs898zgEwejj
	 6okVO4ZyLiwCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92206CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730939357.692.1251589738794130744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011341572c8f25faa1170a41dbe3ce2f5c5124dec7d57760ee3d9905d2c3fb60
Date: Mon, 08 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757309393
