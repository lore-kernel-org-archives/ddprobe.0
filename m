Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2275827A918
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751871594; cv=none; b=eMjEKiGtv2ydhlFolHp2DRiOxFbK9G0oe1GLLlvLkzh5mlRzLGQzpJ0Sg2S5jsYQSHBCOtIR9uXTTwuBYwFMrktrzpdbrOddNhU9PbSCWPnNH0dZPdv5XVJdKE+SsvzNJoKCEojoU6tDL4Z0nZ6n1EVPlkZ71qNwCh2Qz5VONN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751871594; c=relaxed/simple;
	bh=E2vokU/6rAdUFOfzBsXFaHpJfy1bEb0jl46B/ZchoGU=;
	h=To:Subject:From:Message-Id:Date; b=o1Zjk+P93A3bVoE3UAZTVFiPe+sj4q/m81p1R3I45EnszwZ73Exbo1AC4EXT0xIjzPM1s2CS9/CwEUhF+ILgkuZh/Z99kz6E3U75VPPzD3C1T+t/wQGuzc8JnLzAAYtUaqbUuKd4NNZfirms1MJqabbx+Nx33Eu5BSeOK+sV+oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icT57PS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icT57PS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D189C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751871593;
	bh=E2vokU/6rAdUFOfzBsXFaHpJfy1bEb0jl46B/ZchoGU=;
	h=To:Subject:From:Date:From;
	b=icT57PS+0CletBFXqcWpBF/m2Z6gbrlWc2g0vmRXvPByyG6++H/MwSxF9mOZS/BSu
	 NbAK89JbTQOVugQlEKLUQCqw1/K06LhFOk5oW10LW+Bxb+XAjCI358EkwMOjPY0kzH
	 n/PxmNOWQfwYtv4m8Y7sFd9ay32YIOj143AnOT/cKNmAJQOn5OSy2Rs7Wtn2DWxW9G
	 ECYVhorb1q4PKi9z4RXeWltKRsWPvF3+MHe6TEZt7Kqtvf0eWhc781Yq2Uh9b6D8OC
	 7k31PAcFg8wMUqFvtQNTkrR4kEh5aHcvkbGejxD500Q1toAx0KrJIEq9no0qaG8zD2
	 ftrzYikkOL8lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2C8C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187159357.28237.17516302074422840950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a2b855d83ccf4ca570832a69e9ce3841c8e2858c2f4ea62e1f52c50afa7602
Date: Mon, 07 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751871593
