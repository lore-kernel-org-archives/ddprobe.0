Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5550278F4F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775863054; cv=none; b=BskqpgEzNnmV1UKN7b1xq7F+RkzVZ08986BEA8iTjeykPqAV7B69C+bfda0s6I6sCkikhUAIckZThziI4CYks3jGJEQ8eF6/eY+VBdb2MumKqY2fATgvi6hOPMJOajzzpDqJERfqke6eHIUmnUYgR7WJhhV4BTj9VAnvTzHSGVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775863054; c=relaxed/simple;
	bh=+zUNaZYKXSMXyB8gdy6mgap2hSGU0/tkBJvlIFK782g=;
	h=To:Subject:From:Message-Id:Date; b=npSZFnPPj6o3l3wUVL/Qw+LRxV6JtjoYc61C8FYAK7apzLrFtqzuIdeItyj5CQSH4PqGiFWZrFLhm6SmkaiT0qFcpST98QSFImngw61d0NqiC8lK42PBRfIjBEmhT7ZYytMlazLT/WAL1AFtFoY0MxsGBqEAWoGB5Yiq44CW0Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKJHQPG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKJHQPG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18B3C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775863053;
	bh=+zUNaZYKXSMXyB8gdy6mgap2hSGU0/tkBJvlIFK782g=;
	h=To:Subject:From:Date:From;
	b=IKJHQPG0GrZBc5AUYe4KNuTZQGXeRwIp/ArzsIhUoQt87dkst45hjDpmxrGmCuX2Z
	 D1Dm6quVDLJNl3HyKVczCvQ1iHx0yue8QXhTxhi1DrWdnvdv7toj/kaB0hrVeaJe1W
	 Dw1ng1HV7MSDOuHOZf4qNCUGc0pxpoP61QYpe0O4ih682vs1DuhG6Xqa8HiI1nIYd4
	 9r37hute43eYj/mbBSl3mvtPl6L9j+GQ45gfFBQkTQB35fRsf6iSEk27/F2F9siLum
	 brjisU4htYw6eF1cBcWcAyNlrQ6aDMW+T3Xd+w4QzRogcRijMD6mTS//8UGtlAbnHc
	 kJTFBUeHVOITw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD525F45A0D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586305368.1801.6272156339314960421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989947330d9fd868e653d69d5ea9cf396441c294f2ff3f5f8d939020ae54ba34
Date: Fri, 10 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775863053
