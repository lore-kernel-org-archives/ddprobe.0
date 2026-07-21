Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12123E92A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784621314; cv=none; b=Yy8JYc6A2eZrNdTtET47ccneAfiEAF5YmC64kLerEAKPrrCwYr65MmSzP0gsBuiNqPwMfWu2W6lSac+Ihqxhs2ZWkfqpSs5yox3nOmz9v4gqK5zpUEbbj3LZHlBlFqqPR6l32mHXHaGzbsli0J04xYIutNu5VQhoDw11BlBM8ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784621314; c=relaxed/simple;
	bh=MtjHdkycU+WkrQzSX3rMoNGc1EHj5bbXlhzXz3UeMOw=;
	h=To:Subject:From:Message-Id:Date; b=O5oyau5q/TjXtgdKU1435lePS3a9GWX6EmISFgHQtDGaLTo+Ee/MFdE4c8Lti3FGCy83Z+BktMCfs2aAMdYAyvns+h+O4vU1QPsVFaTIu5f41DtWBmnI2OyyHJ2Ny37qJtrzBvNqViHoBeghJT8eETClcZKaqgmyuGZGgUhm6bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDKcgykq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDKcgykq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 409A1C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784621314;
	bh=MtjHdkycU+WkrQzSX3rMoNGc1EHj5bbXlhzXz3UeMOw=;
	h=To:Subject:From:Date:From;
	b=IDKcgykqsVdg0iOuHBgbJlL5o6OfaLT1VxM0uMnhPr9s15KF4w5PbAZs/lYd51bJO
	 G0DQtGy5UjGVE6t5IlQIko4SR3Gf4OBj4y+57Le6KAvl6A2dGBJcmD843V+Xt+COQa
	 ae7WoZXHggh6Q3tQSfbvsxazgBhSYGoHkKDCT790IS3yCyAvGwZWkinpYhcIUSA2mq
	 VNQCEQXFRlSvXndR5RL2c1gzzWVRDSE11cMOMdoeNepjibWSyAwJQ9sc1N9N/3VImv
	 89mg22KK6Jl0aIN9vNsSlAUNtniekGdiwYr6vIY44CPKzbXfwrHkreGy3V6CgSglKA
	 qj+sTv8pjImcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07CF5C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:08:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462131395.13043.4438829382596907442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f2587b8cf155cc0f5c32b51cf9ccb2a4a1d34bb3de446780a531d16e809836
Date: Tue, 21 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784621313
