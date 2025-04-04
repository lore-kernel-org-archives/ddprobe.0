Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546DC21E091
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743799194; cv=none; b=VGddESu3cNgLsXLal7hoa1xEBzDAe6VGEEwhV3lJv/e5v5Qj5LlzQNgQ547MV89BUpF8OZAQi7TQmc8ghVkCbXSE9XJu3hBA19SwwtOl46zZxSD2KDHOKBLIOjxBEheKyepV18YDXdD8BVwMHwXDqJqVIonEKWF7GwR0UeSUsyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743799194; c=relaxed/simple;
	bh=iyfIak+b4gV5VMz63Fyy9+8dCz11m5Ww0VPNoVcic50=;
	h=To:Subject:From:Message-Id:Date; b=e+eTEZ/HZxsblOwx/mBdfw0tioND8cS+hd9hLqwLr1pac1GKgh4pzZf5tcgqtJXyxdM0FYNON3e94qDDeB0TeKMR3dUnjEZzj7MeI58rbxD04qYeL64reEcH6kl8iAqws7W9cYQGBkrcvXf8VUTB2SlGONUNi5YqrJpqPZhUcVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGapiqhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGapiqhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0F2C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743799193;
	bh=iyfIak+b4gV5VMz63Fyy9+8dCz11m5Ww0VPNoVcic50=;
	h=To:Subject:From:Date:From;
	b=IGapiqhFZq+c/CbM4775xIGEROXtwd8c9hGVBs+PPyI6mPukbp2ckSBfGxEbboISg
	 yJKVpwOXaucprxZuj+91rKeXgir8XYE+gmMdfpNSjDscPMbsD5KKCOtwITpEXKgiOj
	 zMJCjLeFeavw9sBSzan7qa8q0WUmJQMtgQiBYt+EdjjMUARmgs6n5UAIhLsMzQSJF0
	 8n/nJMvnZMAX2XSIcn6rDkQKT4C5ARKIOyV5Pwoz1vZWpd6KKAgwluimBCdFa7/6P9
	 PxhtU/nItll3jLpwTTG+KNP6HrYbODG+e8MXXp+NbK03tJ4jxBRkfC8PgfoUPtNYjf
	 3V3vPWuiiB8WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922DBC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379919358.2055.150246188291282504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f73626f44b9f6b9239aabcd340d5f17adfa68d6f1bddf9f0033a78a311aee85
Date: Fri, 04 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743799193
