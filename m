Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0AD13FEE
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707246497; cv=none; b=p+JaNqL/98McyxJHZOojxfYO0S/0jj1VM7XBq75/qdMgoXtYREUax65cQxqnAydTDS2U6MuKXPKUvFpPhO3j4b8HR8GJ7R20vB2GX+PQSZJ/V44SKw52WWxv2Iqe1O4DJCgugLvgpV0oGuvwF79Cz9SQ/20nbNIS1DzX71e4sDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707246497; c=relaxed/simple;
	bh=6tdoYiqcve5v2/wkDzJSImkKXVqFtHGTjAYhX1zR/kA=;
	h=To:Subject:From:Message-Id:Date; b=G1T4JZYYj8h+HTtr/Ol1H0UfZ4eU3lEgK+t5DWzBWZtq8HOatNAEjhuaYmCzgh3ROGnXoNmuOBqRLppCk0jU/o8M8KQcgmXIIcM8RjBXE+GVAVjcNs4rio2ZYibHX3UDYPFVh49HrLCEWQAAoVIHCv261sGKW/4bwUleckuwufE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPGm2YPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPGm2YPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D955C43394
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707246496;
	bh=6tdoYiqcve5v2/wkDzJSImkKXVqFtHGTjAYhX1zR/kA=;
	h=To:Subject:From:Date:From;
	b=IPGm2YPw+EggkaTORFBJSLtbLlxNInPZnRiaTiVFB7wyUzkxW44Lgffp1vM4uWAB2
	 pI2dhgjjQkDTC4TdU0AuIPE//AvBbf0LKqswOGbJs/z05rAvjdrRwGt3gtZVrX9/rb
	 AHZopvRD+zeyRbSFydLhbyfdsMVoTdpXrOcNL+Wrx6NA/Vdkf+68MU0sSJIV2m+MID
	 mUIqmUHU0K3bxkL56wazfKNsUdeKJI3oQZfDCv81Lnm/c2iwQmNdIRdpIUjYvAiwJ7
	 AnP0UR4Mh9HZdRcdhdKKb/smOA6wY1Bp5eHV3hQzrgTt0aDhhjEuFguMnnYAJM2Rqj
	 KhgVPWoUJYESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B5ABC4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170724649642.30271.941255721893664908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720fcf1b36e52ca3bee4e103af5220773d67c15377ccab197994e26683b814ac
Date: Tue, 06 Feb 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707246496
