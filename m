Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC5112B94
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776425254; cv=none; b=mUNQA3n03fmJ7VGxiyPs79QTzvOuOHsdiHbUybyfissz03xX/AViSRXATCyZCWdIE0Lv+nQb06I8ZDUr1YF2Ja/VwXI6yFQoiCUr5kxX3toHm1yZCDFgHqyoUvHU7GzXiXpNmItezGXR5ctBVKwHHSMkm/3sy3L6d8C1Y1J8EGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776425254; c=relaxed/simple;
	bh=vYjDMqT+mLJ6xOYCwQMzxgSELksIsIaQtqatvqr4brY=;
	h=To:Subject:From:Message-Id:Date; b=sfel0vZDMbowVIlaypu7pLUbR7mHw2N4kZ6WGNzs7gkW4O5igq/cpmwLVHn+8gX50Mj64Z/u/BtMi3wvIV/3IUiwLAl56iUDkCLTF1koF0sXp9ZOgQKHjEnOl1JDx3PC8CaB2y+JplLywkiBN8MmfvF0cWuJJ+xlc1rXlPduwE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jO+fWff2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jO+fWff2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF965C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776425253;
	bh=vYjDMqT+mLJ6xOYCwQMzxgSELksIsIaQtqatvqr4brY=;
	h=To:Subject:From:Date:From;
	b=jO+fWff2cqJ0FG4BUTU0PxErycdZ9iHxnu9LYrDIeW3vV2mtp387neiaC0USJR5Z1
	 c2XBF+lEyMAXGnKEwBAibrwYoDIwMk3rgGIXU4MdGjX/VgVdXBjuBCLLZaWqs9T42/
	 Gi/haTWbw7yGmpRlEZKoKjikwlpsbWS/RY/jumpn6kK8V8EnpjXWMJnBCb8wPtzI4o
	 OXhOEohOIFpZZbwQF0cRwhtIDy4r8THsLfZiEFCezfVlwIjTi8Z4uDa1HUXaOiTMtX
	 tl2lzGyOnZtQWdMVEJ0OfWgImcYcZPFosXlx7omieK8xbQ8XHpUHhPCp5U0a3RBhh4
	 7crLOISzDudwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02D4F43692
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642525368.27892.18261070567505735890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7920e4786ce3e7f08959ab5fc507e446d8744e7c8163072bd8863b1ffb4fac66
Date: Fri, 17 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776425253
