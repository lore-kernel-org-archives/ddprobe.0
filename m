Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149AC1CBEB9
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767680034; cv=none; b=WNEAoAQwDN2TfZ3Yx0ypPkp5EC/ERKorVCc22xx/cqkzOTGyPMqQXF7co4MgWIHYe3fCLbhG4B4lW+ZGniPKRtdXC4sjIEa3grUmlTpU5Zl5rV4SoHVD/iRRqPQ7JZtX+Ht5LgIiogJGFI94RBsv59SWO7rX8nOeQWRo/z5WLoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767680034; c=relaxed/simple;
	bh=yhbpYvb7jAutOejckJwXG6yM819o+ELPf3wz2x5m48A=;
	h=To:Subject:From:Message-Id:Date; b=JCQ8dpgLCErcDSsmmdvx6+mr4/0PPeq7Nq8LQvUGXW+NQcaw57VERbyCU391HOi6wGjNM088Y0gmPd/rumDANYrtAGD6AKsaJxoQZRlH6t/Fcq5j7FihavyGKY3uM7ByJ8VwVv5Et+5m+mFbkyGaGc/TN5e4hBaKOA+JM2852Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEN7Gufx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEN7Gufx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBE8C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767680033;
	bh=yhbpYvb7jAutOejckJwXG6yM819o+ELPf3wz2x5m48A=;
	h=To:Subject:From:Date:From;
	b=gEN7Gufx7/cq1VE4T7Z66zO9YUKSZSlNNMFPrCfLBL8yKQThzIRs7VUlRDhrjff4s
	 hz4d+lBQTqajiSSQpEVZaCqBfCF1nH6e405sP2DcqZREvA7dPvx7kMsENb6+n9qTFe
	 4Anqk7XCjVezF1UjOQulo9MMNZiESNtS8uioj/OrputpKJHekYxTQ5eA/cPB9C3G5D
	 7AwM2svgJFAXXqaqjl61RGzGxYEdvY35tuMUHHjO9a/LRftFHcIK9iTxyP8oiYE/+4
	 Ni35hAOTw/UetuXYSBVNSUdBRDLz275vwpmFJ98hp/nOsPsYuy318i6H3GXlg2Xmhi
	 U7Fd2gVFSeAnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F176CD043B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768003357.26390.1164434270305032664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17288394c5ce89f3b9b4b81f34d4c6b6433b39e03b816989357fdf0d005a115a
Date: Tue, 06 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767680033
