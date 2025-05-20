Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD2A26561C
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747732194; cv=none; b=sa0FSjbbWxKTpSA83LFNCJiutUkyxxQi0VSL7WSr8xN0Rg/cGYtt7bhg8PhO3Kvy1WJJaoXn6ysrXD3WwPT+Z+k6VcdiP9Ube+YKyBUJk4bOKspPvPAV5swSrxJ/l7e/U9G/ATgA18X6+IZK7o288qfXKcnxJXPqXJ0pPOvi0+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747732194; c=relaxed/simple;
	bh=h6galvB//rk1sVlOcIaaPVaTDRyIjxs6vwenQT2J4Hw=;
	h=To:Subject:From:Message-Id:Date; b=epprFngMYGbK65M9bjZv62dM1u7OG+HKZ6f7RAuBiY1J9GT60XKH0UDF5iwtQ5TFpOCEw2oLno5uMWUl/3aIrIO8HSgBGjITT+YO8mi42dDzKiqEyJ1u6MiBb441NWdsNqNehoAl1zInhHqQ0fIq1WDS1WcayrDQOXvhirBbGd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afOkaJ1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afOkaJ1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F269C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747732193;
	bh=h6galvB//rk1sVlOcIaaPVaTDRyIjxs6vwenQT2J4Hw=;
	h=To:Subject:From:Date:From;
	b=afOkaJ1SQhbbcaRj2Zkj0ssWwii2Z1jUrg6JzXl0L2ZQkEvIuMNtvARVfAtg8ZJm/
	 1l2WtaZflFbz1xWAzeetDGS3vGP/8llt63TuYDypH/imQULiNjWgtzKKfAgcP6B2eT
	 TH9Ea5f4yq+GS0AgOZWk1QB6TDp+YQAvzBB9tiIvlHZgTJa13qAyxgh6NpNAWsOy94
	 0+0VuZ8WG6QCUv3gE8+zJ/I2cJ9uvQFojQoEgJMuEI7t/3NbbVVvH4Z80FCqxlEbLC
	 aQcCEPesaGiPqaXvgJKFdSG+TodqNr0IlPCWlwlcpI7qtOf04BejPb+kiTAzSv/Cbe
	 I7b98kNw2lemQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75AC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773219357.9912.10747954250062297091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3a87391e05fcb2dff301e0bbd086fd6d874c2a9f58015e646d4acd262c3c60
Date: Tue, 20 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747732193
