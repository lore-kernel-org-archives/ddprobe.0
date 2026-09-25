Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9E530D3FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790318434; cv=none; b=J2mawCUclYFrzVA3CMHVCQ64pZi3AOoH0EcqEjeNluhsRt3yxyRgkz0juD8nTpR39fR41IJDSkUx8VwPwO9Q4ekGakVbnTW1+TNrHDgE2+MlZw/fobPHTieHzbWbiQu3l0UuHcw0uEIO3uvSgf2Tqq+Oo6dUmFGjt6IWpWByxeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790318434; c=relaxed/simple;
	bh=+cA3wmGh+/W7zPARYkHDlajbshxiYx3u3iklAdUu04Y=;
	h=To:Subject:From:Message-Id:Date; b=F3pkn91shkjpCD0k0Xn2jdbpi1Q9pGb24snHHXd7Mszy2Jfc3Ras19uFsVO6GJmzDj3BAOuxRwCEuqm9C88lZPIkQW5J/ivFTFW/yLy+7a+786SoImm4JE3yBA+tAyCIaN4HNY0EFT7f+PHYvSGaoi5it/7cx7MlI9MtqaCC3lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/TO3YNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/TO3YNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A61C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790318433;
	bh=+cA3wmGh+/W7zPARYkHDlajbshxiYx3u3iklAdUu04Y=;
	h=To:Subject:From:Date:From;
	b=B/TO3YNw26lTs4MC71QbskgxWW+bViPPymzlP6hi8sj/6H8qvUgmngEG+JMxRh6AE
	 e5OVF0yNwxKJlSdUBz2EVW7Fjml85V1pTYNQPV+yppER8WPlLu2ad+gbPeLoSH4lEg
	 DGJjlBfRixLaM1n0qgb7m4nm6EXCi7LV/jk9Lly+GH5umoNDac1gLR/hyy1ZUGXaEW
	 NNmigVMdeiDO5N+ZUWUnWSvK0Id9SygRUQB+pQbFDkfJl9/f4oDMugXCvradv3FKUB
	 GKzVmmiTo4ySHtZuElaPhL1I1al1BAAVNyhTNmHHz6t3hvLAYmeXKuePc7YtRRUqU+
	 Yt1q+LpRWG/yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B029BC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031843371.7836.2901337428280629344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4371b7a2f06d6443dc625900dd1d0155949486306a9526f69dabeabb1f2be044
Date: Fri, 25 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790318433
