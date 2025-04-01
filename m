Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3023913C67C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743470994; cv=none; b=qLQ8RiKSZgtJz5LjE+MkE+CxkNwUCGRoh8QtvooiOqJ9taYH4jnPDy7VnSz0befrrth277fO/ViiJ5HqiostICTjPngXp/QtC2nEyWfvglqhwu0uIIX6p3S3zJi5jyrnTeCNCMeEKVbnWERpE9HFilt4NWp+KyqSyjFpaaAauV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743470994; c=relaxed/simple;
	bh=oBAEtoGfVaBCpDNY5fMxYpSpnQxI/nSTHd8ADq5F6sU=;
	h=To:Subject:From:Message-Id:Date; b=BNiraFDBPezsTKJAIl+Jwo/sdRjm1cI82KjeIhnh+3dAvsHcPHLLKk5b+QpI1Bc4qkBFVg+o2YVVNqkDrDUWP2vQu9YH/BYfkFOTwq7uzf2fSBqucCa9oARNE4l9ghy48xyJYa+eeu5UKHLJ46E2yes7x6/gBU3hDJq1qMf9rJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG7pz11A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG7pz11A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA82BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743470993;
	bh=oBAEtoGfVaBCpDNY5fMxYpSpnQxI/nSTHd8ADq5F6sU=;
	h=To:Subject:From:Date:From;
	b=SG7pz11Aki44J3MW6FYAllzo9aM5JLqPSRqT6ofmpI3XY1Vj5SXjv98V1ZELgaGk4
	 Ee2TC7wcmy5j55aPxI2B5nV8JobYd0k86CKskgZRXR1g7Yity6kpiyOQFSjH03iojl
	 F9OeNEG1pVJ2JG8DLRbXlicECLNE7mjo8K/BNCCeTQCNtXMnu4rwz13lLqoKGoest4
	 oDU4SbGMpij5Cw4QUa0AC5SYN9OK2Uu5y6imkltSPBLW6W6PrGmFqsl5dPWwMgf0kv
	 N7oYMFA24x1aHlT8nFljhQAP3nyJG4PzfGuwP1yGLkZh0ZdkZ5L4OuVa4riUmOE+ux
	 oIBHWn/yAtB4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BE1C3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347099359.5007.16593341722887832276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ba388f7e4a9135c91b66cf043a8d99a78822a6372226d939191be573ee4996
Date: Tue, 01 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743470993
