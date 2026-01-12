Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D3B322B60
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768244034; cv=none; b=UerOpBL9C/7/GJMLVjGdUOSDtQy6kK/xHHRyI4JqGWEpdAkCCA3MsQIb40sV97QI39/TjKzq0ShbYCn7nN3A5wHG67LovHDK5P5+Mde3/u67bsIjuTEdjWgemJqGLztzUyTe9n7TJEn2qhE0K4GZ8P32WiSg4N40uFpl7xiMP9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768244034; c=relaxed/simple;
	bh=bYC8JAL4XX+yf2Hm6BPkO+BP++izV5mqbKakFQBGCDw=;
	h=To:Subject:From:Message-Id:Date; b=pmW7LmQfltIiP3LzImNFMGrKj/ez4AyIsLHSWRXNQP7RV2jVxdQQY3wvVFi4rsIFBnrgo4BAfMBELFP+jc2Zf1k62XqmFS9HDdNZM11MItt7nOV02ukpm79In98gJtPTMFPuy6vBqGbkBJRRd5TfPq2zRwLsD0giCEwVOgu3+kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOvTscOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOvTscOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE0C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768244033;
	bh=bYC8JAL4XX+yf2Hm6BPkO+BP++izV5mqbKakFQBGCDw=;
	h=To:Subject:From:Date:From;
	b=MOvTscOiDBwsOjc+LAEYj9q3r3+fO3jH3AhIILnCXq1ZxqI377gjl/q514ui65jQF
	 NQf5wBD+p3nSr0fNXhQrHykiAjWohFdxFZb4bkgFSP477K+FRKyujPGkb5g2G64e7w
	 saCOdSC/O+mUVOGiHZMQ17D/0mAHn4rEguBsy4ToBd00H8mRo0zBwssU2t1JbptRFa
	 fuqwjpGQ0h+FN+O9VjI0sMSOUzMvAq0hetEmr92cjDhT8W9B7nL9IVvy42034qR6/t
	 GyTHzHd3AnyfnnFa7UXRDm30RuE6z4vFV/h/eCflRAcx9cXwWfWf+d4KXAJV4OchhK
	 CYtRmT8XeBLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2BCF45C2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824403358.26297.8629893815694901277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a59ec9652cca63627832f9316f4e4a1733145ad4632638de27bb4a60e3df6c1
Date: Mon, 12 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768244033
