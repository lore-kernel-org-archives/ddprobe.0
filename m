Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10FA2AE68
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755303593; cv=none; b=XJ4cOuNU/cNAAUzgqA6WFtkdjmXtdnmDPii1HICBzuHmy+pSV5+X//97QMfhVIuQHlpLwabeaRVnP9ZOMYYDyu+7Ghl3J9VsIAAIVkrcl028UqhHJQq+kkCP7364uMv/xcRDIpyGQZSVm0YqgG+ubdCWKNSUwDKA/T60y9o1uss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755303593; c=relaxed/simple;
	bh=Gol2GamxFBk4NK/hh782X5RTvZcEyV276zm0H8eDItU=;
	h=To:Subject:From:Message-Id:Date; b=MxXa1NPySkOMh9dtNkA+qipKa5J90Oyu9BasPSERANLDhZB11cBGGiC5b9JCVcNYraA09eU+X6ehVQV000RUpgrWTMzHzGa9R5Oz+wPE0pH+MLFGcJfDO2qkkl1DquBoibUi/NC6LQUSzCVY6TI3SRrAvhNrjoxpSAmyGUwbFnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlC6NeM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlC6NeM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755303593;
	bh=Gol2GamxFBk4NK/hh782X5RTvZcEyV276zm0H8eDItU=;
	h=To:Subject:From:Date:From;
	b=KlC6NeM+4U8gzCYCBsJbB0yRMkAVazqsZyP6fv7XpSf497s13k5X2jNJstt+Spo3+
	 YbV+24ebD6M97isjNrowUK1Eia6SCtBxHv4/JSf0pjJZ4Pzyo2/UiqIa9lrUQoMBuq
	 D247gfUqMCl68tnoei4H0BUrvVtF/yid0twlHAsJcjCUiNvLCgShSMjfqQbrdkMZu2
	 Nq1GRubuGyuwW5omZw1Nth+9d2uqoNXHJ50C7uX0NXYIafMxflk/04SMKpz7aOtVn0
	 HSZLCVbRXHcNJp6msMX8bn1WgUR30cWv5WuaHYeqRS2YrLm38b3p+2lrzuQ6e48SmR
	 2LibSqoyaCkGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974E9CA0ED1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530359359.22491.14062202792411678494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3c5fc5ced6bbf8747deca9ed1160c5f1fc2b45931fa0302f6cef5dd7386797
Date: Sat, 16 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755303593
