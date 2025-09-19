Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0FC2E40E
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758260395; cv=none; b=fSkSXja1mYf1QB5sPgFIK5+CB24JJOEFGMnlgoYyOE6+vdldRRChu8RLSoiZKq35fpXQQFIBbBjkSyWYtLJX2YjwtWZSc4P8RZv3U8yToMlFUSWuwGm5RBjKrb6HLV3bg+yl+cLbM5ZUeiOC/wSLVRZ0YQ71FhOGIpg0vy1Zd6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758260395; c=relaxed/simple;
	bh=YXv4dnWHL0RDRx8iK5eUfe1ylUS25Fm01ByF9zXLXss=;
	h=To:Subject:From:Message-Id:Date; b=K//ZfQBdEtKJT5WCgfiGvOydkIwEbTPlAQgfPcR9lYWVmNXcLe/P7KJ09Kb7bWbUhmUDQGr0i6KtnyY7gkMisRozdXurdWDcaRUKOZjVZ63oDei9QSN+d42OBC8nsTpgcG8xh4whCoHoA8DxYsIadfDHYNNzvPBrXTVXvc9+X2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnFb94ip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnFb94ip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87CAC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758260393;
	bh=YXv4dnWHL0RDRx8iK5eUfe1ylUS25Fm01ByF9zXLXss=;
	h=To:Subject:From:Date:From;
	b=nnFb94ipNIw47JPvM0CYcnzUDNAED5UUv4l5eLsH4kP9B+m7KVcxF/XZ+W5TuN/f6
	 /dkOmlXwvYY7Ue26Kgkz6LfXJXe4GK+yycmLjfpH0qnNDHhluhUKpVYNhn0BYDY4g0
	 cqoOrPu9IwO0Uisy1nNsIxIqQdWUPqE5mtLfWTQSS/PFGvQ9A/8nxoPOyqwhcx5k2l
	 Sa288n9rOUaLLWnl+3VGWROeGrUh99i0WYbB3bv22biN7l89Apz1LlblZd63hGK8HS
	 nJtLgZgHAm8w+wz/Xmwz+LQRziNoSFRVOLMcINQzEo05u2OBOdCRWhcTPw1Kz+cg3r
	 Ay9AOPmLjPFRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E42CAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826039359.3586.8106083384813659546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8c9be9de2678ad178f3688a30f7424541f2d18b9d5a45f8214aa765e7ac79b
Date: Fri, 19 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758260393
