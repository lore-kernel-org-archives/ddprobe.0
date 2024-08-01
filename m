Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340172F32
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722476754; cv=none; b=N8E3uN03mkrHlrRaTxhMj6v92NeHh9WVB/zpqwrx4NagHRjXhHfPHSygeTXBMZAm/Pn00ZP8i/gPDwOKDjnDGfITI7cY0CjOS1bAmLJN77Bzo2mulEJNmEdT/p6w5BcUsxW0b8aYY4c0MrAV3VyFol6wovn7I/BjW5LZ7BXF7pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722476754; c=relaxed/simple;
	bh=w6oIv9BGvADp9eSCEU95EmWPFDPWcgQhiktkKUu5iqE=;
	h=To:Subject:From:Message-Id:Date; b=mDRsAfMUmVXCtZaCvUcTjY1xZUbBIca0dW+re6/B/Pw1xQPAVliiM9R7Ij56xlPwEogsl2qSQBjIpiSyEf97PIROa18jw/qZhK5ixORH6MCdpxvfkelGrZc6B31Aq5K+I3sHG+ry6OaksrfLREHs2JKUu8iWFn74aQsCUtHfxRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKNGIfJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKNGIfJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91DDC116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722476753;
	bh=w6oIv9BGvADp9eSCEU95EmWPFDPWcgQhiktkKUu5iqE=;
	h=To:Subject:From:Date:From;
	b=ZKNGIfJMl2eKceov/nNle7xHnASlnYZBaSPiqK4+VY+yKfGkCFy/lDk+ew6hOcU9H
	 LW4wryI2Ls28rK11g7ZgshUJGhf8/Jk+sGM9FBhAJqmOeOZIzoAJ4zuacGBV/4hFbD
	 92QnvlRAv4E6XFA+9TrwtOJKJwU+TgYBFC2o6InEhqQLItMR49tMraTUwIHvmq1vcO
	 4NCjLMFQzFpmxQoZ3hJSqwNNYxF++RvfYsXN5zm6BKmADahSbxIsMwFYIz55KVtbIF
	 dHSNaBPKEZVOJ5t9BZ57+63Rc9x92COsii4VHusPqZ2shnPkXf1mr8Tulg1TZrCAxB
	 ghCAMprEI1/LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93259C3DA7F
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172247675359.6862.4360818221734283853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2084d4b138a138c1369a1ddae0d217819854472cdc26cca0fd7dbd58c1524d43
Date: Thu, 01 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722476753
