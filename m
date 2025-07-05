Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2885B179BD
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751682596; cv=none; b=o9bTjJ/YeRnHxX2vAyMjZRfR+/zXa95PihF7vWBeu/Cq9a1LyBUm/BmixubmsvBIgSWtPDkWLxPJKfRIh4kI94JMWUqmzkwtqhCGGkNCc2BMtCp/kuNANRiLeu/lt0iG82PFsHG4xYRS8g21v3ATSgGrjn5U8xO2Fyr4yscM1Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751682596; c=relaxed/simple;
	bh=gzhLfN/u5NMw29oSVab5ezP6T36gyLXl2fcVsIIIhy8=;
	h=To:Subject:From:Message-Id:Date; b=FVxPh0+fPv9I+gKJuiVROtxMr4RYdOXWV2VNyZbGwwzb0i5VZlZzX2jHWFfl5YIuU9kw7oHJi7aOksc+43XJtKZ8z7sHy/SHsLE+LDjGl8n3MNw6AIdvrzeIVgEcfiTpC2zxuJcBXRvp//zAzoX2kUCLQngMY0FI33pf+tjZln0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAa4Hgtf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAa4Hgtf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F51CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751682593;
	bh=gzhLfN/u5NMw29oSVab5ezP6T36gyLXl2fcVsIIIhy8=;
	h=To:Subject:From:Date:From;
	b=VAa4HgtfA8psxznehdvabMA3FuqRlAbHfc8Y/fdxKI7PN6KSJhA7EzBcrALDNR+sW
	 bC7SIkNi39lpCXCJYxlTLoj4syREYyXR+KvMUXxruorQSuAHbn2cqlkmhoLdUdY+bc
	 fOoH5kycctzOB5aaXNZbAuo0Mvl2bs4afjDo2SHrLV9rtqutkEVnVKn9m5Jr3FA58j
	 74pTK59w4xgb9DrQ09lt4CCnU7lnel1YtsWEBvbJSEITzIb3pyWzi603SQzD0sXuFT
	 1U4uhcxdNj0jTvwPsCUb8j0v3XkjcFq78sgICJ5sDSjStsq1TqsYqhYPAGy5oUU5FQ
	 90pNd4Lvb4Yxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA3C83F03
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168259357.8829.18137416073865160715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5222b1323479990d573f3b88f4c68a73884f32b2b6cc6307d7dbadb7e74dfdf2
Date: Sat, 05 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751682593
