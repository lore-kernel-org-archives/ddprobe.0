Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FAF24BC10
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745594394; cv=none; b=SYFgJLWsNJMfata5fsulUYk1u3AgmgVXhC3+JJYIHJLxhcj4Z6k2+J1SegkOSYGrFjXN3jMTYp3B8aARSsVN8zIe8ucPa6BnWCpnlF8ow+Ps4OgzwYDqqBd+glxUlOkLzn1shgUlL36WmzzAXc6Rjt+hprQAVlJNbOAUYbQG3rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745594394; c=relaxed/simple;
	bh=Lrvwfr/ma2rIBKpzJF6X1bPdnEy1ZV+NAeDz+78ConY=;
	h=To:Subject:From:Message-Id:Date; b=BHcMN096Q4SHKbpLZzL0MezzZZ5UaOAcNxC9uiy9rerd9hU0+kP/zl4Px3ZRsZpw4w9rz3J5QEXuvkF+PIfBN2H0mTL0LnR47FIna2pMFmPEfeQuxSVyYriP/zhymBodW2mPJFH8eA6o42ctoNpA0IgkO6oFtZD3cNTA4Ew+XRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+CfE80Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+CfE80Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2936C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745594393;
	bh=Lrvwfr/ma2rIBKpzJF6X1bPdnEy1ZV+NAeDz+78ConY=;
	h=To:Subject:From:Date:From;
	b=U+CfE80YQuOhamUGvWwVUpZxmEs9gORydTUG66LVGgdVeICbILVOzPkig3hf6xHbm
	 t38ZhRjqug8GJPxMJrilwPyQIyluLm3kOLJc/YcAWUpOTcVztxRjqLMBFMDBUYdJZ7
	 PpuSfglr1qcVwQ87UJExUmEo+A/8cLh0kOU9fexBuDt+plZWcDr8El2Y3umZO6X3Km
	 MGK28rtl1iA+cXfGrb/F2UH5qpfwlS0VviMtJSrMOm1oBvR2kzZxV/h0bBZ5USTTnU
	 YSaumyygyB5QYCvN5EAeeU7CpdA1S8A14IfJusyaO+QeeJTxAabXFqvtBtBtrYsnSQ
	 y/qOrw/OKln1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97AC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559439357.19921.1436502980584710827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2e8e89b041004627e7214471ebb22f40b81f81e118070e6446c25957d40e56
Date: Fri, 25 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745594393
