Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284FB1FBEA8
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760249395; cv=none; b=aMspU/VTpPuCLG1DBd+JBsym04Eg4nCYnNyI/iJdA55xg5KltPg8SjfkTofBsMC8jRkoz4Y25AQvardE1MHSKgYmtEeWIOF8nXF6Z1sBTUVvowB3FG83eHU7osog5tOLUypZsC62OdS0OwvvXSsyEQR2sZ2m9LdX4Bjni8VtEGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760249395; c=relaxed/simple;
	bh=1UHV4hjZi/PiaYsXjQ6atDYTtR8EsYySgfccAJZ7Zeo=;
	h=To:Subject:From:Message-Id:Date; b=QxBWMf5TyDNZPRXt+YiG9tkugyNTWFbWhLJ/fHMv18JwaNIJZ7p7HV/Tb8G8fYuY+nKGl2Iojqq6Dlug1Px3vOUBnRTikqrZ00FTal+ZKSy7V4NQhi1Hl89Mrfc/it/pQhUXWMFFI04GmmJyRNBH0vOSLfCOCza48qKFNn/t+4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6sn2Taq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6sn2Taq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CB4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760249393;
	bh=1UHV4hjZi/PiaYsXjQ6atDYTtR8EsYySgfccAJZ7Zeo=;
	h=To:Subject:From:Date:From;
	b=u6sn2Taqf1DlCWLoKlPZZGk0HhjT/Bd1H+y9gKOR1KdfnvkLpbEVe+grWp3EYIBf3
	 yCSgr/yq5+0SVqZGzvBhphwB0YX3qiyMpqjoR3/AIVctFIPSZi+2JbSPst84Cqzahy
	 a/LW3ZAis4s/1ByIqXCYJ760lqZD/fE1nPBjhc5UYe+870MyIBS8WQRosfMSMs98e9
	 x4OprntZEFC2tY5PrmI6+TLIgsfA8QXzx9TZkpnisWXyR/ZP2sI8J2Y+EuAXyUARdl
	 XgfujfTooNL6Vg/yNKAwZODd1XRlUFpf/1iXVff6pL2HUEGS2xR0t23DqJU0a8S6o9
	 Z1AEMmxjvHRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9416BCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024939358.1630.11728231088141347779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8adabd559d306d14bcacac16d6c3e3130cc55f79327c7952e8d0dfb8c398610
Date: Sun, 12 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760249393
