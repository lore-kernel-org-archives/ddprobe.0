Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A213B2BA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775270134; cv=none; b=B+jhTUU4vyDbWZ3eSx5SwT+jeGIx/PUCgx93M7Q5hH9vcZXk5jdL4fbzU5vp6ApK+t15CtdUbJV6aXwJecEILzR7gv/PQCmfNweuswX9tsfEny934CEiwpJCps6o6CJSL82hXf5nAu2WIavpRI6kt2s011cf5pqSaIjh5ZEFaEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775270134; c=relaxed/simple;
	bh=wdEHvB+11fKYIsCaWP4mL2GbOB+GzHjVFIcGjPKx01M=;
	h=To:Subject:From:Message-Id:Date; b=bRChMi7BZUz1NiaRhNwMPq69/mQYkEKDo7SRUK8FOiEdVm4EDElp+ef/UZH2VyqfF0SN77UJahBfjPpjEG10zj0lM5I150g+eTLOe/ASz/3xhO5nl2Ye4TSqLhubfwNT7Schpc/mSwBVhUoz/5NLqLDhzaK1hxc9+ldpr0OdW0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtZQs0wF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtZQs0wF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93CAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775270133;
	bh=wdEHvB+11fKYIsCaWP4mL2GbOB+GzHjVFIcGjPKx01M=;
	h=To:Subject:From:Date:From;
	b=YtZQs0wFiPi5E1BkIw++0a6J+4ajJvmI+GSTz91TQLnzLEsi+49ZCO5WhRqir8rLF
	 uR5VXC3COhok9YGtA/I1NVlDgmLUbt1JP4a/zDzsgCsjil38fn/0ieW1J3BKFepPcd
	 nv2zY5r5OYR5kuZ/hQtedapkDZ2jbbM3JymPTIOAW+YLr5U2cYg5KIPQZbgTZCfEDE
	 ej19PuKY/YG8YEv5Z17jDqOceCkRcNMmFEYrF6iwn2l7WU3CcuRE9Dgb0zWSoBr9Lz
	 un/KivkwMPY4+S/G/cdlRQhnSoPPk+lOUFOJPLFAhkEgqOWd5lN35Fc2QRXrsJIzZ5
	 UPeMYjHkrub2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA19AE88D73
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527013368.13648.1400810534395406917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3571999e711070d0cbecdb0e1ceb506b2499c1080078474499c3e80f1b74edb2
Date: Sat, 04 Apr 2026 02:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775270133
