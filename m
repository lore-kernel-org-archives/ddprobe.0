Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349832ECE86
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791406834; cv=none; b=hYByRjVbHh34kSJVjzf51KHv0nKyEuC/O9lhA9i/Z/lTsCA/AGUOz2J5vheCV4qjhquTiGHar5nQJFt7DPcnHQVB3Y2D+V8pKy0L1ueoO4ZuRv8O9IkTC/mNsQqrRi9uFU0utYEvp7tupQqmxqZKvpORxVmThmHe4iKWo0xt7bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791406834; c=relaxed/simple;
	bh=FZKB2Amvuo7PkaOLXeHnmsn5OD+sZuiT801QYzG4XGg=;
	h=To:Subject:From:Message-Id:Date; b=HH/DVBIHkU2Wdx5cJTX5567HNEBpp6ui8mDaBCEUh51oObysZOMrZVIbDUTuZEPR18GXIS9yDh9n6q3PhHosET+dU3IoGe0Wp1NI33ClJLKS5xColKSUg6ao+QLpwskpF6NK5SNCC53kiSXWptd6V9kopaPOMP8yIvRdJDm+g7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bx7YHwef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bx7YHwef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27EAC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791406833;
	bh=FZKB2Amvuo7PkaOLXeHnmsn5OD+sZuiT801QYzG4XGg=;
	h=To:Subject:From:Date:From;
	b=Bx7YHwefQ6OnpxzB67kNIHUvB8dPKOrvPUf5auQzItF1EgtVmCoVMql5tNUQqYGr3
	 MTGuneFMJ77JsNvZgWboXUwX4F4xv16ZW+fytv46MN16Fu7GoMQ7OWFlFddrE5xeb4
	 wTEMB1eoxi48GnsfDpu3hVM64YVt3Oj88/IWQ1QumhQkicTNFSfJChW26lPJKwDTc1
	 WOH6khlTPnnnR3efG8F4yRObmh8CQub/dJ8P33wdDVW6tDMNgQ176I0ImJRpCR3Wyv
	 cDvClFpA10grKLoKV2IiMzszjAXH06dxyUAtc+cq1rlHlkf//0CERhizEtLcYV0SWy
	 XU2kVmfPifHrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A993BCA6004
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140683368.10028.11871426366072925575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c152a784b8f41422670ad2988916263f0619c893b852033b99be7e675f97aa
Date: Wed, 07 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791406833
