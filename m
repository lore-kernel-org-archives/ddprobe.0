Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F82716E863
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746557394; cv=none; b=movg75vvH96AlU5v6zf3Qmf9QnuURYkHEM9rachkW/jL5Lym3z/EKtN4lLc3v9PPENkeddI57AfYx1V3LUfLK/tbatUVlMbQMDD63MSgL8g1iJElIv//oYZBMZ8R1NdR5VIMY8efjK+zJ/hjgOfWKHTytgSLlLs4RSekqPnr5Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746557394; c=relaxed/simple;
	bh=QFTExCOEvyleacbp07M0/qzOCH0OaScqLviWQgB5hK8=;
	h=To:Subject:From:Message-Id:Date; b=TM66pyX366TzKWV+jqLf2xqbSur3nBTToS3GoWnHbkRKeMp+DFk+NZX3BphqGCuA6oI33NV0959fvZ7u937P3c/MBd3I/kxcZdLMyOkbzoIESop/tQxyrpnoz/gu6KkKal6VxaG6M7XaCyWz/LccD9s1UuAfSa4yIDs1bxr5ArM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp82BKm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp82BKm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7B3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746557393;
	bh=QFTExCOEvyleacbp07M0/qzOCH0OaScqLviWQgB5hK8=;
	h=To:Subject:From:Date:From;
	b=Kp82BKm5kJ1e0R++B3ZsKsXe+8NDg1kuR8dW+JAobScW9ZhjGjoUZRLfMzX/PZYHs
	 VbL8iZiR0yqRbZSj2dzLSLnDfg0dyNn+3sfzclCD7d0SV31l2RfTTOTCyWRv3Pf5Vt
	 QQKvEtxeoVFOxsklEVzvouvEyTbcetdeqWmwI49BMS/eZOg9lfzVoE36oK8FhVAK+C
	 EblYcCCMv8jgJZ2l7aCoYZNdjkwvOKMUqa4Xg1oM+XVqG8BymwidS7QTb9RSu2Gmgt
	 OPcO+OpIkAjuV1SHsucLaF2WSqdy0X1Nq9LKovcB3RemjD2qXC8z0FErAgsPHIqxXN
	 0RUdEwKn+WDNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93186C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655739357.7135.17060814607650277573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908f1f5046af9bd8afaa43dfee4988774047d5d23439910060d896fd1cea02b0
Date: Tue, 06 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746557393
