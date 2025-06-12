Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295852D3232
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749754794; cv=none; b=UozUvcItNKjAwrSe7dA7vTD4aWPuYvG78AMI/5fLnTprJcQCNiMhDZIe3sLhZNdwgqa05fYHS9IhahhQh9r2ZY5h6xGYl5x7v+u/sFSWQMmBVFwyIQXzf4dRUnQVggyb1gAYr7sCj9a8oYM+obUyVJUeajyogjzDrTBAK9gXqLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749754794; c=relaxed/simple;
	bh=GtuNjTFiKPu0saEXholU+5mbb96nuBpq3IKaC10Mx6E=;
	h=To:Subject:From:Message-Id:Date; b=GsM+TcYGTU16GgrckEk642iL0WAcXkCtDaEb4kg/Lv5CleAPYsdQ7jJSvGsMPxDmXujByyBQ9Nh7XZVhG4ojNj3mu5Ey6z0XAq+oyccMaltorgvNpgAL+NzM0f4dmm64LC9bwjGDRTJwIVa+ZpYjhfCx97a2/Uu9c4za/uFkUhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0TI2kl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0TI2kl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5937C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749754793;
	bh=GtuNjTFiKPu0saEXholU+5mbb96nuBpq3IKaC10Mx6E=;
	h=To:Subject:From:Date:From;
	b=p0TI2kl1TKK0wVoNKb/QYe07M8m4it02dGh/Ofsrz6LEvLsmKfosugDqUe3K44tgf
	 XPU5szyXy8hDJv+neheHq7TJLWf7tVCW62i1DSNGRrd9yf4kmg9yKF1JSeCmrLbZVM
	 jSkfvMQ1WQwjcuS+tyn4ACDBs2hR1YojqB6MAB4mf+vH6+pPBwdCUniNuLGaaWtuyB
	 kLZEPGScrWyjAdgRA2r4ZfQh9uXXvfkzZDwZbLfsiGlfq+cxyGVp1htJ64STfz3N40
	 CupmJXmaR7VvWIDEq+f2ATcVdpdEo5i9+40y9E7gyS3gSRqIYR5+4pgGs4YCLVuYHl
	 eh14bh+0YeU4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91247C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975479358.13840.3155078505217250405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920900ab2c52aafe6ac28e8521aba948182de2e91e0b5d6bd492a27703358fc4
Date: Thu, 12 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749754793
