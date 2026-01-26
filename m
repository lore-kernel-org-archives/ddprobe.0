Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC249219A8A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769419434; cv=none; b=SfnA3YfcaR6a2nAyR+15gfnDEw3FJicWA1bDfyfjj1JCpqT6kZlkxNnpfupOBLl0r0O1L7rQiMckm3U/KjTu/S0Amqmi7jlateR30BRfCXBnbBwgeCY+/2flko6nG61BNfq+eEVXUOPSSryu5mG5wQjMuLSs22gWwurelwEBHrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769419434; c=relaxed/simple;
	bh=f2trf+W31Wp7LuBOoeF8wqABKoKBIDiWuCBzPsvLEL0=;
	h=To:Subject:From:Message-Id:Date; b=J6RS281l01pUYiF+uXdoUSIHNLng7hYpn1jHW1X2Sd94Z4Ee0ChQ1PEO8Fv9PbcDXoH/2ti4Z3I/JApgk8kSV9rFs5sXy//SYkJh7aXbIEE9lz7yWTsBg3XxZimgvepLCfRqWx8auVnfDQEeutLgkdruq31/JOha/LpGDzELl1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoTEhtyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoTEhtyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB4BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769419433;
	bh=f2trf+W31Wp7LuBOoeF8wqABKoKBIDiWuCBzPsvLEL0=;
	h=To:Subject:From:Date:From;
	b=WoTEhtyAfyf4VT3RF5EfJZt7ja6g2/1oFVq/rDuI+Mxo9HvbrQqz1A5V2g/yZFUhk
	 v/helBd9ezHvzAXdXZlHUsUouhY/VHImjc2MOfrLHmFrh30vWE1MlE3SWaYV4w5uy5
	 hbXr2TE2gSKFNQVkFRZi6QXGkTY8G045LqCrf3zj/k2pCMyq0DQIQWlV1rXWS6TiOT
	 1qGa2aOtB0GqdfvtpWX08AvjKg6eEXkUtWCL2f8KKnzzMF9lKNvOHQ1MaB3b/DQMqg
	 XYaGNnaD3x4Mfh6B3PBJkbbqEhvGz83l1ni2F2hOtnj+p5xMwDKwLqmQG6xQozT3nV
	 rsiCwpclFMDrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008CC88E7F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941943358.20372.5218438042163766240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac2fa1c4f621d0d6090cfa647db8e823ed16497bd28cdf3b53fe5183de9c088
Date: Mon, 26 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769419433
