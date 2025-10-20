Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264E21B041A
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760930994; cv=none; b=VQbyIhsUk7yJpeSb0KjKKYi299CcjHHg4/Hi1rlIjfgtvCYdAzgawei809/HoWLta8w0DhM2Ft+hTUI5/g1ylVV/ttGOI3Na+Y/0Y5wGarHZsoxwwMNoaaf1xB+Xazwr8OxPP5le+VWnx6Om23giOYKCp2jtLgGFz9xqVMAGmUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760930994; c=relaxed/simple;
	bh=bTPVeaR5O2BEE3IcxmyMzxTlZOfG/1iC3HI0rdjlKFY=;
	h=To:Subject:From:Message-Id:Date; b=Pfee3XpjzuP+KWbPSJXCzTESTWtIS06BbUkWRsdxzBSvJxD/ij4XicKEaL/+qt0BV/Ah6xYbek+41JAAmB+UeI8bHeypnTM5tJoosJTf06h5FWn3VyI7Fr4DMffyXzU9lKUJlGpjOpHsoFSI825HpjLtFfubKuas5UAuGyuFAHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYH/UaCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYH/UaCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A368DC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760930993;
	bh=bTPVeaR5O2BEE3IcxmyMzxTlZOfG/1iC3HI0rdjlKFY=;
	h=To:Subject:From:Date:From;
	b=hYH/UaCc3CPiOOMgo+vRnE9Nzb0SASfSWh2+B4OYzsLRr/RR79r2WFQVR7GWFdKqh
	 aeK9so56uxsCpx/hiczx2HI33CkdDu9fVS9zOgkCKeuKGOQI1k320QApzqRMoVR0k+
	 8WCivMzWbkNMlBfuBSUYpIk0fbfIaCMc1Jt5HwliTPRbAuEBXorvSjDJfxU3/iDAJ9
	 BNc0iZ0ChEEGvAWP+C2YY4lSM1HxrDdKsEYyCKSbBo/21nvD1tSQ/9aOEBvrBA1Gtx
	 TxpaN5msU7+HlvoejDO0lDeH4kvhBiPgb6OOovQ7zBf4s5MyzC6Reuhta3aq1JAY1K
	 GvJX95cU9k/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92FCCD184
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093099357.16704.12744070541160391704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0409ff49a8b00170ae836ebb4f3cf9ea00e640af9fb65bfbcc209f339eea68
Date: Mon, 20 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760930993
