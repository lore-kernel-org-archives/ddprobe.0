Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792E7239560
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738861554; cv=none; b=b2fq8JzhOvrs8+gReahRMCKwiA/zCJZ5UhAmT6ZJCInzVtFFP7JMuQ0ZKFFh4ozzA0EGGgEOZgF+v4bJ15HxGpkWL1Kx3aiCnq5XJL3sk+uG9/LBE7r+1ay8V+YRWJKLrcHeQ2ltdzXRDEi9fUM279Lc7QQUQ9m0uyqZCOR3NZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738861554; c=relaxed/simple;
	bh=gxn/AbDt15PMMyGgSD/6E7AJ6lJVHJ5kLcUZeHfC5bA=;
	h=To:Subject:From:Message-Id:Date; b=KVBIoQ8XWL46pdGQnP/vIdnHbtalv/1zIn1RcrvbjilFyAqu6WWTDkY+5TMhqIFgWThXw48A9cg1sGo21FMIHu3Hw+5t3ptGJ/NqVPEC6/vkImg/VZlr44Wu5Ovl8A8fek3FNq7SOwU3IAJ+zChG+FJL1PC8KfHfxZO2bFoY27M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2dj6PE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2dj6PE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E81C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738861553;
	bh=gxn/AbDt15PMMyGgSD/6E7AJ6lJVHJ5kLcUZeHfC5bA=;
	h=To:Subject:From:Date:From;
	b=c2dj6PE5DZHX38fWFA/VvSR4PtILAJIgIK+gWmXIF+iLad9bCrCPecE+CwlQCNMBG
	 Hau5P3Olhad8FEjehyt181v/CHhyypnNQli5irraoO+fESvISOsecDeopb0zRnBONa
	 Z6kkc1a7LpSU3M1JCWIr8T0N2j0n+61KpUvkK0ZnQxWHtS9NnlKklvkGA2S6WBTR+x
	 tElh7xq1D2VbQUkrY4/hm4ewkVHk+mLk1btqxb1/N4jGEXdHGK5B5r4hmbs2PVVvQ3
	 LhLUJ2k2jVS+yzK6YfISH3qrXp+xatmnQ/H4kkHsraL/Bk/Lo1f+hPQ1dcBREzzpiT
	 KaOysE3oY9d9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15C3C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886155374.31606.7232930407889511679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88dd9bf9bdaad04c5979f454421100f08cf6d1fab19d59fc70828f3f1223751b
Date: Thu, 06 Feb 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738861553
