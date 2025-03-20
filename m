Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2AF1EEA56
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742465994; cv=none; b=Yd0/bGxuEBVGCx9XdUjsWTEuNIu9XUB2BBGf4o5tu5dZWLpv77gFQv85q2K9CEsySRpdnk6q7bTxqa2GaVSzqyPc4xK0uVEnwOstXz5EP7NEAuMIEHkJXA21ABIQWb+WAbFJXL9hshlBScdXVQGegMIRZw3hJv/MgdHAxMbOXCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742465994; c=relaxed/simple;
	bh=nWAIboaFacR17+V+9kdZNHv6m3OGA55qMeFaFWiilGU=;
	h=To:Subject:From:Message-Id:Date; b=PrBYdsooqmVBeAi5hMXymtkyODlii4FIN4ORQnvrSvR+vbn6jwAWvKDCRWwDHInp88AdtmrTRvxAi1kFySHwlyE6dwbwp0WGcvpax5yso8WU6c9DkaRxsozry6OLIe8YC7vN5+noRvcYkkfH1j1TrolP5tWBtnCqfRFKCsu9r98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLF875FY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLF875FY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA875C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742465993;
	bh=nWAIboaFacR17+V+9kdZNHv6m3OGA55qMeFaFWiilGU=;
	h=To:Subject:From:Date:From;
	b=DLF875FYJaRAGCyQGLJQqVB64lWprJk4xA8IOrABVmC9BnefC038JYdD453b2R4mY
	 RxqRlY0vRVxkTcd3Cdabgy20QBz+9GSko4IDs0lZVXCSPzdrEGvQKQvRMYp1k6Tnhs
	 +WuQXuXJdIl44X3lnRFSL/qCSMW6kwsM9SmgECTzqvIqLn3fquXKmzwowDxBg6Sy8p
	 t7StghSQgTv3cJPv0nGDDbmhB5PHZldFb6g71JYZ6YmH9yPfklXp293vgzRBaiJiWe
	 owOk2uKWY+J8IHK4MOY1zVaF8LDVsXYsKahc8Ckcrmvgd4Ip/WY9TxlH9fVElq9RM/
	 wVIaV88CDxT9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6266C36000
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246599367.8612.4595616625471892595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9031b102cb2dfb55ece0053e0066a291f6b73ba0d136bb042f7ea677ea059be
Date: Thu, 20 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742465993
