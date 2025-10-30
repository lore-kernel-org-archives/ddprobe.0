Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4D732D0E2
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814794; cv=none; b=F9WubNuUIJ/eRSOVnMe26G8DnSmlLcA5IQX02Ar++aHTjuDqtGqu8mAECwfh5Ywb3bGy1tHIqlNTFlKC4cxOi+lwtF7YifqTwUw1nyopOkoMDabgKAko7zPRqYAeQynE3I+HZCYgL+Vcm8UmeysTBp/9IFzktseqCt4qHxFL+aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814794; c=relaxed/simple;
	bh=avnx8N4J9bWo4FZIFRwQlq226jQb61jMUOir+tJxjXM=;
	h=To:Subject:From:Message-Id:Date; b=X9FUXBvSdrYe6XCCNfjrbaofGvy33hN0sPfjZJE6xd/uaUF1HZTSDTKxHSowZKhmUiFfI4zZ63dW8602cYhzlFar5v8nqfHy5Qw0C/AWvhYpcTNVStk5FT0RolB0q5l12RA2M83yMpqp0Uh7nDWDOEodGQ4TByszna2wRvB9qkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRQBXsJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRQBXsJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4E6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761814793;
	bh=avnx8N4J9bWo4FZIFRwQlq226jQb61jMUOir+tJxjXM=;
	h=To:Subject:From:Date:From;
	b=GRQBXsJWJyQkJlirJo+dnrdNKaCOsVNRH8dUAjKVnarP5qFWH6GnL80oXBGv6GTwe
	 2ArpuVmvgZw4oULbbZ14F+Zr36PbzhewMKX7AF1QmXRLX3MNaMIrZ74lcaQUkOKuLA
	 1mgasyg58+6bOS3Qn03D230qWrg56fLm693eWpSQNvWnv6sD7yGpQj9CrpBlmPZc4x
	 ZwIMgBDCoL/cPcck3BnNXRIbtgDeepgjKqwq2FJYvRu9PndrKoaNjD4hFw5lgqWe+c
	 TOebmKN4iDIAK6COwfiYlaRpS99LlbFT26bxbWIRNwra+daB4o3HlCnqT1/u14lFQe
	 Q0OWRutnngnXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A258CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181479361.30894.1757910365525004232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead33ad56a969f05eab08e0ea662ed83274b9156270f4863f6c17f4a96eeca41
Date: Thu, 30 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761814793
