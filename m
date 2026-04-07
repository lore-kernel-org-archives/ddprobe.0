Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9712C0307
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775597134; cv=none; b=EfHentsUd3Spopuhi3l/ht0fryv3YYb/1ILqljext4+iLT4mOOATHpX9DOl4hrWwwwYrIWZIFpbTWb19uuwf6bAxQqHnyDkfud6t3L0pRJvtSqv53cuqm6yO2Ng2ohFtBp4bp4QkLhJsDynQuqnj5F0CG3AFU6Ztnc4SpZwDM3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775597134; c=relaxed/simple;
	bh=6ExU8PS91PWGxpBVvmHUqQDMdfjVlusCwDndWOcrcgw=;
	h=To:Subject:From:Message-Id:Date; b=be57Ny2BSlMnEaNdEsoZYwatTn1MsRklYeSCGa4wAYS2bEP3nn/P8xdRoxudUoJmQ5mAhN14pE3FVdYNopMJsSOXS9b7J5WzwP2QeIn1PuW6IdnHGa6dtZWfPEXjEVZzsEhSvDs51LODJOBXQRCSK7Ak/39wvUiqHRJ5ajrpTY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lk+OhLAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lk+OhLAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA710C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775597133;
	bh=6ExU8PS91PWGxpBVvmHUqQDMdfjVlusCwDndWOcrcgw=;
	h=To:Subject:From:Date:From;
	b=Lk+OhLAkWQNETZV2IAzIpoiCRmJ5SsOPreESpjRYQiZ1dB01efbxcjSzANm+AGxsh
	 7pqu9i3Ze5Q0nCdiiMYrjTP8FaouKhtlMhDymInHMArO5SxFyRJVRy9wZ+49WfNh+C
	 frZSxExAxILe3+Yc2LUDf77xZzcTZkuMFYP2r+t9tj0/xrXHz+TSaRXOkg/igkGKit
	 0LgZ01c83Y/2VFNZuXKy8SXuTXhiHhaYI26ducCtOVFdlIWgj5Za+mfpHHHgRzvh4f
	 pXixtfcGQKS7uAw6ZlMmSMyUBUKberF0VTCF/9tPMmxCqirJcfqoLRRpu2FhCvUBXm
	 35qqevy/zKVbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5C7EDB7D0
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 21:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559713369.13526.8773130395876288536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e30dd63f572c841a906c6d5ade254a988d0a8fb6eac836e10f835e93a1e4f3
Date: Tue, 07 Apr 2026 21:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775597133
