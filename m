Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2648E325490
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783435714; cv=none; b=Dw+V2HzG0C2r7vd0N8XvkdnVD7GBSOwXSabxFHrE7om4dd6HwiKNrmxEyUpqameqH+22p9eQqyWIuoY8E2O7R6cx/OFA7xYMh7KIL0NRDCLklOUApcjzVwc4qRusIA/56zYi5lPm0rbm8dSJN8JDLS72+5fAh32K1tlh0yTJqRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783435714; c=relaxed/simple;
	bh=aBaOHpRnq+zpFVymHQLfQOAyvTK6HDNtz0r2RYiE8BQ=;
	h=To:Subject:From:Message-Id:Date; b=lgwwY53HmN8QxMbF7TY+7BcWWk1dvZHk/4W/R2WBpjd+yddy4dcdTwHT5H2bMQgea6kIqlEqpllAM3AB1CyllrJYp06CGDYdFBY0wlSFUXZzTlQMbgg2ZkPcPzrb69Z7cFYBcXXVxfkhA8Q1y4+0LQAfy5D7lKsCRi+xOk7YcRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d74varpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d74varpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D290FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783435713;
	bh=aBaOHpRnq+zpFVymHQLfQOAyvTK6HDNtz0r2RYiE8BQ=;
	h=To:Subject:From:Date:From;
	b=d74varpMu74gZJcsfJU10BYmvhm+WfwFHgn6OC6TacmTqU+/NPGS9+kN32WxmvGmC
	 o5SO86ap2LlB4K6yVo8ct4Zknhzj+BI7ZK+6TlHCVMsZ8XjDVUVHWc3eUU2wQAOGND
	 DuKIqPrYmQ/3/zACHecycfvYYAoLpuPv+OzRqj24xqYOQcDv7EKNy6QZkAgxKwaBDw
	 Pcwz/zPUbtzMkr8rFCxedQanK9Ipxw8rOuKghPXCFjI6zX5c/T9TTkfAYZQfbJ5PC5
	 xM5OAul2SN6b66LbUNU9vtb67YH7sQYrszbe05epHMf/w7DpJs8KhVTn2FC5xH7WSv
	 m2H8SW0zayflQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0181C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343571371.2040.7182192833546755975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869f0466d411b716ea6f22fa8debebbc6fe8934fb2500d8bb3f7d964b5b4859f
Date: Tue, 07 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783435713
