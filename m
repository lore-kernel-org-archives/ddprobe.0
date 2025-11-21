Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0E31A316E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763769114; cv=none; b=uzSFi+XYTrC+jkhwjoKsRya7wi3roGTtrUBHJMdaM8lbYoszJ6Nj0MjFRW8DbcLZC4asdoiIcCCppoxs/Uzih/tHrZhubKU5fRZkZSNDKvjMZEgrUWSBoFfLrlgurJiqDoXhDxG8VnzOWxQ/jMF3MEgCLQFa5ZWmll20ZGMpWyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763769114; c=relaxed/simple;
	bh=uBaQO8CfRF5mhMXBCBTR0r1VEU9Hj4Z3inrDlV6t9OY=;
	h=To:Subject:From:Message-Id:Date; b=ZyVLV8l6jmCGg3BAoV7C+viQ6HOMi7fCLLrLRGUMJokzDt2RX8JQ9fYP4uiC4p2LE4I8Es/QaVMBlNXqA0lSrZAHlQrme9D/eAU+o4CaGcKmMXkLp0b5EBBg0nQJPG3ZbOZmV+iXdCfKlQwoQ+RAJqcNSKG5gAfjXUkBRsf4PdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoNhcGQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoNhcGQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8178C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763769113;
	bh=uBaQO8CfRF5mhMXBCBTR0r1VEU9Hj4Z3inrDlV6t9OY=;
	h=To:Subject:From:Date:From;
	b=OoNhcGQJcRKe4WP4dr9llwjT/xpBE0uGDWHf5i9VzJGX+7awfg6sXOpTX/wCemmxs
	 xRl8QmuJGLdC/jvfmjtY6pZp0Xt+VcQb1EqMBAXrDIHbq7MJRMLiVh0wqesvhPvre8
	 9ndCWEgiYB8EIPTdF2OOUi/HgRUkZGLidNHhE6Apo8AlhO06SNCnAGaLlFABq1+Zo3
	 JDOjM0MPx7FWZNxVQUatVv3zuXGcXb5ecbKElDk3v650BExbMVrvIivzsTCEHMGBoE
	 j5adzLrFUdhGLcYNbg5/BNixpThM0kvkaOV05uESxiD+eIwmjpQHYe1WIyEKRlA/MR
	 LQGxegdgq2qWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C50CFC510
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 23:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376911359.12779.12925704176994746074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5095e45e845cca7e4f2399dfeb9320806a0f99a199179a934b75a35eddea57
Date: Fri, 21 Nov 2025 23:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763769113
