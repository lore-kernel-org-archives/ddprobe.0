Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296DD2CCC0
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745858994; cv=none; b=cmzlvCk2cb2t/2vX9g/+PKy5rDsA2rX4sVxRFQbWxANFFIau17bnR6ZRHUQfQ8ce0yB3K433G8YyN7WGLB1Fl4Sv9GBGfgExt8fyV13qSLtrxSN3zfK8jaisbAyAsOwz04rvPDXYSRwPw355Vzjjd+5AeoEsspVMbJZXWX7PL64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745858994; c=relaxed/simple;
	bh=nOiBQp5PO9cXKxHg25dtNHiW64DWcJUIjrUGFgHobus=;
	h=To:Subject:From:Message-Id:Date; b=S+nzal1hyu15Z0dvk/il9DvadAblKKhqjUDeXtcOkz3W5KCNUQzUnLNq2bhai45C/xDhdDoVpxlH8Y9UFvBdbhOG2n2UreZGPqSHP4wz+ot44whFSGLiYOy9w46C9TpUCPdvyP9a5501V0qNV2NYJFhlCU93V21gJzHJPWzXWxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tf0slBNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tf0slBNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1DEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745858993;
	bh=nOiBQp5PO9cXKxHg25dtNHiW64DWcJUIjrUGFgHobus=;
	h=To:Subject:From:Date:From;
	b=tf0slBNg/xKp87Tx7faWk84AOe84AAldGbKiCCz8ybTfGEeKufoLjyaRHf8BrlUVH
	 9K/AHC2VxXGDQqdyFHbgfp9j29+0V1MWlVdXHBTt2KUGStJZ0cGt0uxsyrf1gsHKAC
	 aBrtrl6UI5zPmv0NdJUwY1LRqZvtgQ85cCxPneyVnRJhCMlFwZeOCT1WnLVxNnJpY+
	 jTway+SLC60HYv4H2cJYBpZ7fxMUiPlxQoekdQ0myQ6IRPC8y7k74cMBsWvJUzVlnB
	 W1hYmm+Ju/rr+wytj8iNi6n7FdgkiBzuWVU1SzKn2sGtawvQUpbWoWwRZ0p04bQ07h
	 jsbChN0EP0Dcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90919C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585899358.25109.15718489031167042217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34bdbd3cd618407c45f4bc073d98d519565112f1dd75feea62ea990969db7815
Date: Mon, 28 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745858993
