Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BE727C178
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758928794; cv=none; b=CecU6ePjg+3EfgPS/vPoy2It90ypTGMFAyu8aziV4UJyQ0XhFEwTUDNfFGbUUvjy8StaI58toxTxmpUznRik7EOEHegL6eR+jPGtvgPSxfn5ClSv2q5/TMPPWiFiSfGA7/7esGQx2q5yhP0o3KzEJfQzObRvn41KPSZTc6LFRXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758928794; c=relaxed/simple;
	bh=k1xPKz4/qKzL/ObRcnhEEswOTJyWY/G4W+y4FUmSz0k=;
	h=To:Subject:From:Message-Id:Date; b=KzhiNjrupT7wwIqJFIaCnmr8BqDckbTGnIViFCFGW5RLks32Ybboh2UBTizvnBZh6ASNGEBR/6kzkvxeEDZX+enliiaOCUCs2gH7BpUYpBZN/zjpBXcgBxmhibJIYid98w8naKvLA/ST/nx+x3REq/nzuf63MGM36plp1Q8LmGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyEKbv1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyEKbv1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A223BC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758928793;
	bh=k1xPKz4/qKzL/ObRcnhEEswOTJyWY/G4W+y4FUmSz0k=;
	h=To:Subject:From:Date:From;
	b=lyEKbv1jqcWPLbZU6JdjkYRCDcgY5eIqtEYSsSGr7IrnmnitKmmaWzelAkmV9bh9n
	 DRPhKvwOht/LZFD5zci6EtwcP6QNK5ak054GrkXmu+7EaOJSZGWUMO3Lu8Bgd0e525
	 ir7irQ3aiz7AFoeX28eW1Mvt21MkWgnrypOk2ZN9nL87izV12ucNvwbCHu4l3UraWw
	 cbhTLSGB9HM4eGtYgakwKoBvPRDt172rLoOxuPk6VytAInx65fIGsGyIbuMUliWhLv
	 i3L+XIpjFlPWfhZghdCSVYdLcIugpt5Rf/siLQ2+k5PoHFI1m/qF1MYzPswH2zSTaa
	 nX6PsETUyqulg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932DCCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892879358.14879.15764977902239206692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d423cec8e2eba902b622bf7bc25bffeeddaf5a8eec3e9b0490004e24785e6f0
Date: Fri, 26 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758928793
