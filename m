Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE6F2D6409
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781324794; cv=none; b=Qa5vEenlCr44OHXCx+Kums+IarOmbcu01KnxxJt2LsTr+PABkN05R5RHPceP1Sryhl1BBykW8T2UtYqbGwKcpPC+o3iesnpmKhzPQFHHOYtDzwxaoO87ak1l93DYFBqTuSHgZwWSni4b7sl8rJs1+IK6kQpsR7dUNmV8IOlwQ8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781324794; c=relaxed/simple;
	bh=GhQtFKVf53+/p5Q9t+N7xGheJL9w6PyUC7jTmHZ7Z64=;
	h=To:Subject:From:Message-Id:Date; b=IVVE5Hzsjq05n4gcwIgGTNlaocNnuFhwAStvWqP6E220LrrIRLu3s2Wf2UNKedcwdZlIX59MdyIloW7Hn+6Vy1H2WUTYFpIYopoxzedThS5Emz8c0dxMyA9PSYy9peII771N0KAZMAemey2XnlmfbzNaF4w3oBOspfcgNwCaAA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpfSaul5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpfSaul5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF80BC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781324794;
	bh=GhQtFKVf53+/p5Q9t+N7xGheJL9w6PyUC7jTmHZ7Z64=;
	h=To:Subject:From:Date:From;
	b=lpfSaul5uolAscvCD33FAZs06tDc/y7Gp/aHVkj9C3D/CYopDc1afu+S+ZVJ963as
	 lM81KIZg9DLjb6flXv/lGVodEF/7zys5l20jbyM2W152p6eBvpR+30SDl+EQjLjqgW
	 sYUhAWnUfFfbgs0v6mP2d6FcP7IPfuxrU7M5PSSan+lUz3nsEhN78MGijdx64MWhhA
	 TfW0rkjh7sxBiWBys8dOoQhU4WM1HZiSzcrJ+4h3PV8JyiaoeB0YYhpNHBTuhbdvjo
	 sJcMre67FM63L2uzpsaFjvgs1sNEAc70exDZGMUlyfeJNOZEtNyJ1y3qUW+mEEU96M
	 f/KAtdzcKXECQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D74BECD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132479381.25384.15765739472637635418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca32be1ecd46182e99526ea2e259caa59ef4012533937a28464b0f1a4b63f68
Date: Sat, 13 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781324793
