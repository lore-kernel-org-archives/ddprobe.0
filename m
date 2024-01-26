Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FEA8F65
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706239097; cv=none; b=ENfUEXeLnH8fT2VwQAZJTIBePLhHvwo+C2oxZLDdAyTJNJB7twD8sn+GxW+08ohLi+Y/7K0DscHLzS3X1Tpa0LrZmCGudcXbtCGWDenxOVkiF9v6LFuZ1nAZif0AbtmgbIMyFFV5HCey8JFoMq/wNaTBAqbw1Lp9mGBuQdUsZHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706239097; c=relaxed/simple;
	bh=0xGvaGLVOpGnhvQvqhWl1olO/beMmx3zuCJhzo0V/yc=;
	h=To:Subject:From:Message-Id:Date; b=BzqP9cmsIEyB/UL5PObaTGk4AG6/xGSCsb8kHGjW9lt/g5WY07uL0u2CYtJd2D8zV1WnjOiwFP+0SRHOSoSCNqPJO6zvJM7geyjM7Xxb7IS1iZ8t6692NMdYe1nkknvy1M5201vi2oUomvh1xqwL/XqIclFMZyPMgsGOuOQJiAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me8/Tf0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Me8/Tf0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D3C8C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706239096;
	bh=0xGvaGLVOpGnhvQvqhWl1olO/beMmx3zuCJhzo0V/yc=;
	h=To:Subject:From:Date:From;
	b=Me8/Tf0zaR6e5POIPXIzTMJorPFaUdOitXPqEfsQx8g2pyDX4GKENTky1+pBCGokr
	 KsclZ1LAT4UJl/+jCTjP7wwt+eUFyX3R3HTTmb5n0kjKnFhQ1VD3j3vyNojtyF82Q9
	 HDhTxX/CmHzGCmXiWVysEtqdBGK+YAeYa4Y3E2v8GBy2uvFvyV0Mhn3jObRDQ71Sgr
	 Vr8FgI+6rYMaf7FVZOwowNJ9ndG8CYaIItW1ukxjyFuqIIMU53zAncH+dC2WnpnOGF
	 mZPBvinkz/t26kEbJ/GpEuFTwKogqvXM8vbYzIzxgrBIGUklZ7WgFDTmK6n0WbxUJt
	 9GSOyHqiRK7mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62445C47258
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170623909638.31186.6726087672288427880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee73408c8c03a6c18c055b5579b5dde50a9c6a49e27bc09e1a19474c36a9ce9
Date: Fri, 26 Jan 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706239096
