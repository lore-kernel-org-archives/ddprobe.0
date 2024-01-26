Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBCCF2031C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706289497; cv=none; b=rQBioTqI4J3zt/iLB3IXRuWkdyd7FWIF3r4MKMMQKfyWJrcZrIBorPKzYkmWxD+S1hWRQVHS4ukvpL/HT9rsqrPHK0W42YWwgX/UpKPzgf+w+bhrL5yN8fEM6lr0+A+doMJfpmsKRGLQ90E4AHGZGRcKda5eERuezAOjxDf8+K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706289497; c=relaxed/simple;
	bh=PIH337ISTkl/KRdDolzgwHk+QAN4dzT1hnOsQ6E9JrQ=;
	h=To:Subject:From:Message-Id:Date; b=f+xPy8piDbFBYT9u+oP8Rv/DNPb3NdJ8cJFmS8a3EPqrgucIzRQLqmx+zAYJhPmVJubIl79Bs/H48gjTNoivNwCuslII344OyNZx2xq/0yc4drugB8kPkryRAx30vka/HY5L2AjyTFTo1G0vDAfFf5dSTibWZ34s1s58fGEegLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiKK/Dpi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiKK/Dpi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 756EBC433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706289496;
	bh=PIH337ISTkl/KRdDolzgwHk+QAN4dzT1hnOsQ6E9JrQ=;
	h=To:Subject:From:Date:From;
	b=FiKK/Dpizzg5h3c8Pm3Qrsez+1ixc0JJg7VWMJzGAIMFvZaPm+Tq4Q8gsP7uOdfZ3
	 gRCxFXP8qmzflvVjHOv8XrYO+tqFPq4+2aDrGsL1JjXudPzPyRQ+AoBQQH43BVjP/A
	 /tjrmJlCnT+aQi0YH4uIIj5PC1PtSGNOUkPAsmnzt3QeDkGGwix/ZVBbfHB/i0Wq+y
	 woKSPi/2xDoaKtpRFSA9DGx2w+lil3aCDbj4K5M4piwfesg3E+fMvsSuEzzcv6JnQm
	 y4gbHIoDF9FhKkkvFr/d4kaFa7oknjD5avAzMroIDf21hvl1q4DeDUm3Bv5qk8Dqxw
	 n+xRI9aVqO/6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BED5C47DDB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170628949636.5229.1733901737864353825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21cebb08fcfc7c20e29f03b900ce7066f46d4667c2887b065750c24a19eaf38
Date: Fri, 26 Jan 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706289496
