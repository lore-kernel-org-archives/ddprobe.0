Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6D4443C16
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792149634; cv=none; b=aftQ6muXBbMLW0DJYxFJ1tRxsDXVIps1kwKuxjRhe++zeLRePszLMU3KjIekhCCfjv54kiLp9aFopYhczac3qvgS3SiDwZyjqxBGxCTLKYBOrwfAJfVSRicaQnR9os3pyE7BC2ZhzB6QAuXxLRXgKbPc/JwovJ4k0P5m3AfrAMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792149634; c=relaxed/simple;
	bh=uk70esWiuD5xt4m6c1njC8vfN60ivpJ1fCpAE+qkkIE=;
	h=To:Subject:From:Message-Id:Date; b=QyPBNH5UkwrZbY4XpRRFKpjV0Hx+c6XunAFcORysxguOyJOkX+OEJZEokR5UgrjbK2GltLQ4VwtCjvKSXEdg16JDDnJ0wZAa66YSnbe1+GRoOCZnk5GVEaymWfRlIiyswfrOO8+YDJDEi+mLclUEMDsxXx13UEl5SXjfsn642dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GN0R6Q1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GN0R6Q1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2704C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792149633;
	bh=uk70esWiuD5xt4m6c1njC8vfN60ivpJ1fCpAE+qkkIE=;
	h=To:Subject:From:Date:From;
	b=GN0R6Q1T1nUAci8NEUb1C4NfyOU3HZ+ZEwBujpZXSFTeIeZe/rLb/x6R+dibO0VnE
	 pOKn0lh1VU10Ic9n9XWemjJGGnAY4aXOXeUJ3nXDeQnCAcyEw4oAdxibh7I73n3zDK
	 29woaesjNliSLekaDWRke5nsbEKgmPzJrogR36tIoTmdAmAFhyZG+28p9VncLXFIoA
	 U/YGovA7snpL+skd2wupk79gGrurbmxkUmc4VtomqxnusbmfyOzsV313f+nO0Lvq42
	 qJAJvIXhANmpxCZy7XXBgnukDG1Pyi5okT/Pn7lUujNPmtpN66tdVPYhiAhXF4Inh7
	 C+1qfL1Qcg5cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA16CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214963370.28030.13460973161302594452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1788640be0ebd46dea4fcc0bff9a55ffb96b6e6b5816ea45b3c0489c93289bf8
Date: Fri, 16 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792149633
