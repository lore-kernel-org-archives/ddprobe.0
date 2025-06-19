Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5306422DFBE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750334396; cv=none; b=uYT+tDOqPOts9Htc+VGEPILkI4CY2GV2xiefloel9+FeaFlXXE59YQJ9rNwKTCuHEHMGW9i8zwyTeiI8lflycGrielSLQNNEDr2RB+0xSfdqSoUuxk85csvdYMnQ3JzHvaNM2Hn5lGCq2eYiTK/6/uE/S2a+4clshk9ieBBcm3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750334396; c=relaxed/simple;
	bh=JCg2X5nCi3VTvaG398fAuZDEW672GAogwLxzNbSonSw=;
	h=To:Subject:From:Message-Id:Date; b=dWKx6rwqDsV0+ZizYuc3cQQ0fvpZtpzAoeizKICfymyq5yf5iBItx2VCyhCKR9RSaUDYIkcTQ8cmRwDod2EN5R8isktmHinsdOudlZ+JbbnUdOiVfjQtuIHfziPGEq8GX9G7po5txdn6wrVurQG8mBTvcbn8s+/DsQW+hFRVWaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpxjK3/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpxjK3/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EBDC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750334393;
	bh=JCg2X5nCi3VTvaG398fAuZDEW672GAogwLxzNbSonSw=;
	h=To:Subject:From:Date:From;
	b=CpxjK3/YcK8CR2vyL83U9I2WbWIDg5Vk8/CuOhql9PKB9afh7QfZ35EKACxM1dej4
	 hBPfUtlASu4H4RGSWJni0xsYylW9nDEuIHrXMiT+dySfmNHqOVNZ32aRYXNQ5Onlk3
	 xkU+p95S/ies3+qQW+NFSzEOLv1BuZpzPUxoP582kwhZZP8G2+JN1i9EducXzW+cD7
	 YsCMSQrx80isHEnrVRRZGzn7LKUzp5L45N2WS4iU9QaQZJUuZGbZ2hEQEseujuBvmi
	 oPhCw6Pk8cBjKbxZ3SXCs2kwblfYMHbn+tcNlpWyfdBpu5JmefGQQ/1dQXU+BPMCRy
	 7J4LagoaTjWJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BACFC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033439362.31050.18027913864851387765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1546ef6f73fdbcb1940733f73f7b557d4681022a9b3de24b25d2e42d42206915
Date: Thu, 19 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750334393
