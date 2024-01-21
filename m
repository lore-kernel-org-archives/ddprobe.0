Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F24804
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705867697; cv=none; b=vCUIDjp3Elulz/ZD9f9GPwYX7Rvuipvw2xuFKN0K62de4/X8LaVyNX9Zc1A4/T+zIG7uLUWpw1HKYPSI4z5Wt5508ChF2PulmxgTxMlOPbb+uCx4cvzbbRXcKSZWeEoAADvC1++ReW0EeBzlGJqHf5Pwzmhy8t7utT0d0nWIKi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705867697; c=relaxed/simple;
	bh=1x3kyWzdd4TRoDaOJASlXDhnBWGe50rdsfLPy4G3S6A=;
	h=To:Subject:From:Message-Id:Date; b=RcjvGiUrLIQCxu5nhzh8K8CPCjDSe82Os3Y2ayyctT50bbuLqdJCcMlHgoEnaT6FbEDjzkQ6IglqV4SvJ8f2ZR4f6ciywHbdHmVEyD8eECjoD4DC8VCm/GnW4USQDC41lD9AAUOLjk2mIC6WHBG5LBM12pcJ1lwCJUgTJWLRWZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kw2fM0u0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kw2fM0u0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74516C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705867696;
	bh=1x3kyWzdd4TRoDaOJASlXDhnBWGe50rdsfLPy4G3S6A=;
	h=To:Subject:From:Date:From;
	b=kw2fM0u0vZ+liss2wBf26R3322BzPDINZ1D3TCMo+7GSdV94BQwqqhm45HvofPPlD
	 18ZOoXbwbwGv47/KhalivypMOc84/u/hhojQFPx69fuQnuwYpEYyzAeL9RmNGZhi8C
	 ugpluRe6qKl/93LK2g+YxvWN0CWt0lULC++XKlIPPbQw+/5SS4l1WbjfFfHCsipCpa
	 +LAOUH3sPYYX5Q+C7SBWkxZjm2pnsr+dbs8dLvIDXFRJzZum1kxMBwgiSEq91PMfIE
	 2XUxyLmglUhhHtC+dqYooBMRyIQXGliXY7TlnmBibVXnwPtW99Spo1GwxhRQGcbXQZ
	 mAXmVigzn3cEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A03FC47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170586769636.2219.10481407335362771581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf37839e0db6a783275072dac52f1b732c4e360f863630e4e8e6bbc31dfd4592
Date: Sun, 21 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705867696
