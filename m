Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3637E268C40
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760067594; cv=none; b=ZewhGFeqVznqCw1ZfRuT15zmBbfM4h3g0tTcl3zYbRFh74O0Ot/iO8l9/6wOFqHYCUjldLVaa4m88pPmwGq78+o8XPEBu9jXsA4f+mXKuuUlAybfhJzWHDCHgiDdluXgDOExJZ/QhQErfaZ4J/OBtirN/hbjU8ta5eTrZNkR7eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760067594; c=relaxed/simple;
	bh=CGKOI6Ek2sTVQNXAOzgmRVTUjcfP1T7rPAVUMSMGja4=;
	h=To:Subject:From:Message-Id:Date; b=M/Z7172ZNHivVNqD9hnwnF7hJ7IlilSLG9DeKIxiJW4IblZhPnUf95HhthYCj29za2k7hUoB509ghzwlP55w+OEYBJyIh5GOZhroQwz8MFY0kPhePQnV5eEN989K+T6DhXL2NA+RvC0rdNe+JCERQss8sKjgEd/d7rUMyWFbqBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myJeD8Ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myJeD8Ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A084DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760067593;
	bh=CGKOI6Ek2sTVQNXAOzgmRVTUjcfP1T7rPAVUMSMGja4=;
	h=To:Subject:From:Date:From;
	b=myJeD8Apa81QZjmvFfhI/WxnZ3dCkb3al7s0rgraGiGebG3JMKMUv0zKav0VVW3dt
	 hiHOLq6NKfXRjprobT4MidpIjo5HDl9yDICdLw4YOPcdaRn644XlPbwbRJZpkVND8h
	 KV9FchVqIxEn4YWQJ8iFoMRSN303uaGpNiB40tN1CMaStKLYKitj6SeRXQvsyU2fJR
	 Cj0Alg/y7r7SNgJ+fxwvW7tMPTpdln0+QW4lKrDUSESRqdnCXYlI4L2Y9jlFQHJ2qZ
	 TDFi1ZEMGlyAIiCiSpiZGehD0p2QFuU1k7YVuPXp7FWie9h32Y7OmyHJQiH01FRs9l
	 EKOagc+rvVa1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE82CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006759357.343.17744054169350601152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b375dfc8c83fbc0009f010dd0241592269a3206345be70e45db67f72dd1cd23
Date: Fri, 10 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760067593
