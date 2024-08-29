Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B16C190679
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724931954; cv=none; b=ohXtWL2RfZrX2faMJVI3ERS8q+vsmUOUQ1dkPaofXty0UV8CtbEuTOFBPI6lA7S0InvEB+wwiPc61qK8wDm4OHD5SJxVyVFcW2aCODsQzZNMS94gPwctRHB4nCHeAy/+rnZ45q1HdsddAO4iZt0DRoo6BkvfF7yhUni1GZnoM7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724931954; c=relaxed/simple;
	bh=JaMZSx2o63yPh+o51FwNo2EqfNQGUyQLeyJ/b3ald+M=;
	h=To:Subject:From:Message-Id:Date; b=SymXuQ22iT7JXsgc7hktMF18yyzVhEmZYh/3N3K/lJgN0ypH6VawBeJBRxseX1DTwyLtBtQUCLtVIArTHTd8PL0rlFNFCCTn+o1AO0cMOsKRWy0D1P9cHEy+Ou2AFNDsp9q+HQBz+YmhlIm4OdQ/1r4Vm92DX9mUDiNEDHfjB40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+NFfq4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+NFfq4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE39C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724931953;
	bh=JaMZSx2o63yPh+o51FwNo2EqfNQGUyQLeyJ/b3ald+M=;
	h=To:Subject:From:Date:From;
	b=Y+NFfq4hQ2XD5ibCYKNKCF5jDtBQONM1QneJ+ANUHSL1KoVIdJ3IxQ5pjTJgO1yqU
	 yek5b760VR/p4rCCfnvrgZTZPbZTRsOTmbS3P3t8ftMx9eiC3IngDP0i3zIxpYn+S4
	 OK9aFrPx0hzIZwXlr7tbwKu3iqHtuKPzdV5eeEDHGKNzigZ0+DEGAAugTwHfFmNHJL
	 OQ8Q+HcfFqPbg+FAy/7MWCyTwdXXi/+UNd+jHQZLw/esShCwGmBiy8cajR3CB1fOwh
	 UP5w3IjYJkXviqdG9N2DvGqMcN2NsHCuYLVDxhAzynZ1avb3/Tae+JmnTrjUCYk5Hf
	 p+0FZNMdD39Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E6C7EE33
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172493195359.11785.6054705557473783030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c780f7185caa558c5d8721ac33d5213d12493ad15cc5ce8f8184a83bcaaf314
Date: Thu, 29 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724931953
