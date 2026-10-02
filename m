Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90D1481A97
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790956234; cv=none; b=ovWAUiUJrcCwx1fxXACufXkFeAd1tJdY3CILvpllwWgseS7TJb6MY6hHUeKd7VvWnljSO+7RW5edUkaq4OevHMQJFWAtEyocQwGpOoR9O1CrX+eE3ydFo1onimtg6LOQoNoHeG8B6WcpWCi2OYon9E9UHThHJi2x2saW9seb69k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790956234; c=relaxed/simple;
	bh=c3sGHBQ7uU3zUaJ+zGWbcWIwwdHp80VNHNQDdXKpmvU=;
	h=To:Subject:From:Message-Id:Date; b=qwLN7gmJ/XIAsbK+L1JqDU2OmQ6JFVwyPwPfSeAOjmOIq45tGuP5NHCQSra8Ie53pWQHY+hhLHi3cKOfuUStQeGOygWqVbwqfwp9s4tjfvBhdiqMSn+18t8LiVwlE0avEypFqHPpYEcUSrEQp5xlhb4nlMoj4S3oppEjTFMM9qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKb1s3hS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKb1s3hS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB03C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790956233;
	bh=c3sGHBQ7uU3zUaJ+zGWbcWIwwdHp80VNHNQDdXKpmvU=;
	h=To:Subject:From:Date:From;
	b=qKb1s3hSHNcALOxh8o8UIgFmMSuut/ncXE/Zidw2ZJNA6abm3/dOZgc2scGbzMXRR
	 8s9RBWfQFzgFWi0NaPFzvCPIeqk+myrXDjDh4s68L/kJ+gZ4iQasKmsnTa0KJmU2/w
	 N5VS/vI7Mx5+7fPHsDhq1BKgE73p6hp5CHookCYmRKIGDQ881kgl+/VW7F4JO278D9
	 ZEjS8jsLawKMiiRCjHgwq8DX2M7bTJ/ihq5kDkyVHO5aH0kqbTqPyqmlIQWr2FQFv+
	 azdRRPnd4Jp7hIiX3bqx17aRPfQpFz71c+HkxIdiJ7cM/GWvyfY6apjwBzOqRNBsl0
	 G7/JROXFClcqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA0FCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095623369.14562.15201675914931451631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e10bf18a8d8d228e0e0c36995e460e1e09b1c2e94f64777f997536525f81ac
Date: Fri, 02 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790956233
