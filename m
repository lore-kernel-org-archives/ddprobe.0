Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 881BF48CD7C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787681434; cv=none; b=RpAjZ+Iiz735K3mMhiKNisj+DfypiaDbnHkYiWNRHMLwkEoWBaIIuwsyVBdThyTISHU0S010+8y7yVhSo1+jn7IfFJ2u2RHMMHBKlVNh0n2K2kmUHxuu3We5x+NaXdNI22TtCNuvaM0mQ8O3+3DTVaE8st9l7nu3b4WxMPL8rHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787681434; c=relaxed/simple;
	bh=fIucHOrP3kwsXqp+vHcRoz5s/cPQ6fHF98OHBb/4OXQ=;
	h=To:Subject:From:Message-Id:Date; b=Nb9Sw3v3PkcUCo4zp4jsDVtyYcYBPDx8eDu7cVa7+fISAVmWPXKKpxKeJEKH6VrR5C6a+yYdbWU2y9owQAWPlgko6xMLqB5coKni0s6dI/lVMJqvcDU8yv4DyhZZFal52i2WDnWJSyzB+BPBDt82zUQyLGUyGOchTjit0yyL8PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGXWI/jr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGXWI/jr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E46C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787681433;
	bh=fIucHOrP3kwsXqp+vHcRoz5s/cPQ6fHF98OHBb/4OXQ=;
	h=To:Subject:From:Date:From;
	b=VGXWI/jrgVuXwvWVGymBWJZMfgqtl692BljadasTNILbjpwhxFkrKXqyMVOXGWvmj
	 XJYZqT08hvNWPr+G210i9caXh7oj4MEHneMuE9LGAffSXSZaTj3SBdO8eLxpHykN2m
	 egVf3dkhTCmTivsBvL8mMwzRAEI3fA6jL7gqaIKq179K+TGYOdox/az7FvruEMVTMk
	 ZoN0EOrZkqU38sI0Y7Wj+hkqJSOIJonDr0Q9X4WEKmkoT5FotBAkutWBf+OA3fIt1T
	 yuowmvOxyi17rfRfLmSMx12KrtWHlsBNXqbPmu8xpQOiDdX7z4OpCqtfIrjsSsNB+2
	 vdjau5jchoEMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE058C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768143370.26560.330663505995664885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1450312e58e3bf4fd73eddbee67d44bc5120169e9a55300c72bcf818efc3a61e
Date: Tue, 25 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787681433
