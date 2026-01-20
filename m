Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B18189F20
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768872834; cv=none; b=oPFXGvVi3N7j4ZyLCjcr3Rs7zo9If4KPLkeDktGXLreqCkSvESJDijjQvjc81aoE3FFmbf9f9z0eh8TEho9EH+113f+KiIusZJVPneTTFvFEU4nRuX5vUDlwrCFIN0zq0ZrfjGTD2OyHyzXFYfuJW85kZtjMDnBY258SXhLaqxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768872834; c=relaxed/simple;
	bh=Ilj8w+FDWagNA1/kADgPxfaiEKLTMEQdbifG1wnPlCU=;
	h=To:Subject:From:Message-Id:Date; b=L8xDVnX7N0D89tGBMm9hfYiz3JtBztUgsrwG1sidOVBIeQAaszflDNf+xv6v8dh1uGRlCSggNeqoY14nTVM+5UDc2FLgX8993pwY+NxwG0LMcbhLi4mmg3lKR4744BylExNqR9DaUTDuMy6Achwf6buYdUW4LVJFMGfHH+2kf94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSKB8bkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSKB8bkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3743C116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768872833;
	bh=Ilj8w+FDWagNA1/kADgPxfaiEKLTMEQdbifG1wnPlCU=;
	h=To:Subject:From:Date:From;
	b=tSKB8bkWFPD24yrredvpkzYtXvAyZyoTyCNEtG9Azs79L7j5SaWtbTn5y8Bp8ialu
	 C8lCZJ8CbTt7GHSYhLxDr5A3AHBcSwTKFCoy+qPR5x+/OtgVqfkiPo+53bAUOxYrZL
	 YugrNCbiG2+yi3ykMJM6dMjeL0pwMu27unj6eSHYRJ+TqyMu+GaVqJwCTzVhtqKKEd
	 FSbULy3BLsX+moyobFBbilJx8B+DTK0IOlQX+aQFvycsbO8B6mXwGxk8kkvubWycre
	 lbw7Y3ES3yDD6kth+xfFi6QmEhLRd6e9KTZ+Lr02UEe7LgbJVj8U6Pp1MnDBihS/nA
	 +s/kWaf3mj/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91579D2ECEF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887283358.12274.3076238743406666222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c032fdb32de98b17154874df6d4d39ff2f9eac60948466a2d0f62aa0db4cee70
Date: Tue, 20 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768872833
