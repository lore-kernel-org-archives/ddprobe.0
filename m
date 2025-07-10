Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C282D0C93
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752146994; cv=none; b=dpgkU+mdNRSeO8JbXgwSHpklbQZL/nC226NPg0ZaeKInMoo/4eyKnz1Ee1vKWqD9MDsBu3zRRq1gAYaKBaTxqXPEMiV3iOMb2frKqoEOjiTfZlHUpAJhS9Clmti9MXqkYBTKxTL1BfsreQZM7mzXCt+UTel5optHE9/VUJmIubE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752146994; c=relaxed/simple;
	bh=ixNoErFs6nlbmhRyZeZ7CoR8+gtiJHregrWPi7gCWEA=;
	h=To:Subject:From:Message-Id:Date; b=O7t+PdOkVCp6gYSfJh1Mzztw/k6sl+YaVloCVxIf1gbtIVOKY9U3MubZ1c1CbpuHcWx0xUe1R9vuk8ZtXv+XSkaLkp8g4j2nxQ4ZuW7wI1sWQZdPFUEAUrJ2hkyBaAftwJE+j5kRKYl/3CwLaqUKullBhMNudnCTYb5Q+vJiktE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVAr6UaT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVAr6UaT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F966C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752146993;
	bh=ixNoErFs6nlbmhRyZeZ7CoR8+gtiJHregrWPi7gCWEA=;
	h=To:Subject:From:Date:From;
	b=XVAr6UaTGaelzEndiQLJP4O2ObiO9PwwAlZ9ddQ0U0HT+nZzIl4liXm4IdGfZ2bBX
	 zl5BJ9MYAo0yRUuKjhNlAz17moDWO8XB1f+zMQ08aXKNgRfKJ7A/pYxwue0QRcUs2G
	 dBQEWjAAMplYUSWGnKq3PwoOB2v4NEyrZlbYVioM+GuhUrPJeRDxIONwWOE0YSG/Sg
	 Qj9m9Fjaghh6WfOqY5Jl6TZkEA9U71XgxpmXw2k1mycl2wkR1jiH+yqr6Y06oLrpzg
	 5L6kfyCIpOZ738pdAD6/Bnh+n6FnrQerEtG8ZvQQ2KS7RjGJB4hrIzktUCCdHktbC5
	 jycb7AxTnLhpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A1BC83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214699358.6674.6766971486834945769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8cf8cb12f94bb73f6e5cfc07ba85403d3ac8d908ab56db790cbff3c2929334
Date: Thu, 10 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752146993
