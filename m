Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4526F2066C1
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737777354; cv=none; b=dT9ODktskNtE8Hs0iF1fBcKQQBWHZB7Yp7WERKmZgDypxAGuVaTAP80/s0DRBKWQMvnZktmD8V47SMLvDbB751qj9WyadodATl7eMXWXfyYfdB63GI6q4ORgk0WFtvkVY/g36jZOEAA/EpvFaFA2HU6gYdGa8EVxdCf96nKEUCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737777354; c=relaxed/simple;
	bh=jtH5gZOA30ZcopLo/eg+gO1GWwynbfs6lXop9f1RsVU=;
	h=To:Subject:From:Message-Id:Date; b=FS06NVn7SBqPeCX+YblgowOIZfvZ0RlFAL9DcI6Tb152U0LLiIdy4jcA6Nx5/0kJ61kJ0hrsrwHFrV0f3uTaQONVul6ccomvLyoMDHqeUpy6D6HZ9tEmpEMaIh49q7TntYUY3NLonLWBf29F4yW+A2SW0ah326o/kyKKOxFxQnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OP5sndhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OP5sndhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98D6C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737777353;
	bh=jtH5gZOA30ZcopLo/eg+gO1GWwynbfs6lXop9f1RsVU=;
	h=To:Subject:From:Date:From;
	b=OP5sndhegn1SPGKAZwFdiaa1oZEygjR2YA0OLp9aBYCWBz6Gokov8l3RQeZxlZKox
	 lsX//z/gdfL9QNpRdWgWwCv7L8IR9WQ4/7yCzWFaprtZQcDsNSLQR/nsbJGPgxC0rR
	 BhxdaFoGIBCoBm6hTCNdeARGvjdJiQDzU5U1ookFeJB7eUU7lLtSL1K4mPtfWVMw9e
	 ib8M4G3NvrQvLVuG1DTKjQTFUV0guPuomknZIbhpJepQXOaAfJkwFvbfGZzpy5jhH6
	 WUEIsAWqnmJ69fR3OdJawvXpYClrVJ949HLmzvLT8ySYCduThOzTo9QEPCKcNQVWFH
	 YLRvdYV1W7t8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938A9C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777735359.10071.1500872451739806935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e64cbbcc2f749c09a33d31b1ec594226908c9736276102a7bd7c81f328fe80
Date: Sat, 25 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737777353
