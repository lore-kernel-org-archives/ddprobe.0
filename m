Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264134F30F6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788633636; cv=none; b=pOkit+Co+41KcwKeGUQhbHj7ubGSDKiS8CtqwAo1HlKtztmTu118Rnn+mMdXu7vRkDnb3ubYK/4s6WKf7N07TozaEQhrSgyGr2JOdsVI2L+ZqqPVA219ot9VgPpiOG1rkFf2o2G4AMwSHRwMde4C5FpxPmrhPY/z8+wI1XPlVZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788633636; c=relaxed/simple;
	bh=Mqs6vvCQvoUwKthCggKNAg8jv4qCbKrxHXLG4KPvo8E=;
	h=To:Subject:From:Message-Id:Date; b=kICjvuJ4/lpWSPJKQEhJHs0wAYEp2JzOk0xwEbE776hrab6FAhPfAiqZ5M6CeI+Q9Yfk4dGkILBEzS48XYSYb09pO9HNiW2G+Ia9qDBlK2+mYfjqPf8LpoTwSXt0bR49dA53hNId1/LOD6U0yhwHHgFCfQarKXHeKi0OBPF3684=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jxf6dePT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jxf6dePT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA32CC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788633634;
	bh=Mqs6vvCQvoUwKthCggKNAg8jv4qCbKrxHXLG4KPvo8E=;
	h=To:Subject:From:Date:From;
	b=Jxf6dePTLWTeL4ABhSXxNquxv4XBTLxcVMvS5RtKKmP4wEyScS1Hz1WsvnHaCNxAo
	 46wa8+NhST3fJwRIHmI2mt95HvmNFiRKjprY2v+CIdR/ne6gv7EIubIpUpfAQGfd1j
	 tEYVhDyLEFAS7esMxIPehJMO5+A8ZWlrtuwxoV1C1TGVuI4z03aNLp6aFKROkAweDq
	 VDbLq1O6OZL0O+s1RhCFyyYw0Dxyi4MV24oo+9+xAp9VsPjF93RsWso8ZHMgrpyr3R
	 wNWMFpVQblEttencO/x1z7otCJWoGe94njpYyalos21Ts9qqSozHfZLPwP2rwtPgt6
	 oFVbP1ofZkhWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EC9C79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863363376.6884.14531852158507993376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84c1722d81ed4f02a0fb1b81696b54acce4460275d7bfe524e50942ca94368c
Date: Sat, 05 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788633633
