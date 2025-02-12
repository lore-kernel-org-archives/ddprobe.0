Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A72A2135A1
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739375335; cv=none; b=ZQWpJ4+8aecREN7O/BqALfkOGSVH/1TA18Dery+D5Z0/5mkJQ9DmYBTIJqiPsUtgOq/W4RRkrZH3vMEjt3BNXvGgmTvhOA/KV/3nahlOygwNPIns+ncMbw5EzA09icxL+FdD57xNQ7ZfmAIFlmIiq4x9xrO/Oik/TJLVqd8+T8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739375335; c=relaxed/simple;
	bh=a8Mp/ngZTPkuh4yDhiVdCmUAVVDlf6jxPwImTfJzJkM=;
	h=To:Subject:From:Message-Id:Date; b=fj96HRvlNqgSwGmhJx9NT346pZ8mW88pzy8AhhX1rh+VN32uIYRd9CzVpc7G8AFR2m6QIpQEpakEe1ipexel9fI48QLKJnB5+xu4fKupPBvQasUT+vF109hDogRrnBbpagfGYXhWKeINh4uObNRkHKFPp5NnOVqQMKWucVtGYH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgaJPg76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgaJPg76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B8EC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739375333;
	bh=a8Mp/ngZTPkuh4yDhiVdCmUAVVDlf6jxPwImTfJzJkM=;
	h=To:Subject:From:Date:From;
	b=LgaJPg76lJV2+OgmN/pYiaGfS2yD678bG3j6yGvWWQUwwgDG0tbFyUtXrPLm5AUag
	 tSNJs69zV3Z7P/uH5tHTQ4QsYid1C1lqr1udPPqVXGOpSTjwjMPW/Z9hgwad6f+wPR
	 NOFpPIWceo3YlVxOTC/lDNSdBCUWXqyEvGhCAuZeygodXcWo3ydmZwb73MSrtOVoCc
	 m7zKNS/RnUKo5933l30/5VMIll8VrCy64cNZc1luaDL6Kt2fQGlX2EP20OHY17papC
	 jA3aQq/JpD1npLt50/nM3X8g4Ohao6CqDmyAantywunl6VNEtz2ak5jfTBCnRa0s9w
	 DKJXrIQiE90rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220FC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173937533358.3763.4229307834679686999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd35c14f2259622dea6204fbe0990d4198a22e9be371cc18d31f4a7046bbfb66
Date: Wed, 12 Feb 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739375333
