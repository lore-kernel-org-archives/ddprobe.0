Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494C410F9
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742017735; cv=none; b=A6YzUeFZWKDi4Halt0eIQnGNB3Yxls/4YVt9QLIb3XZaeGvt5uZC5rQUlYl16E8lUkkGGahns1PHlEZHiAY6Cj8SWOEqTPgJ3nb/OGz3XPTYdKFFYu7iunRBfaibMOS0xX3dGZuBXauPAI69QvNKiLBMtNgMeyN2NdFC6SGN7vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742017735; c=relaxed/simple;
	bh=Dt4BbJ96BXuMTo2JSjcgdL5p0cMgiYX8ubap763pCac=;
	h=To:Subject:From:Message-Id:Date; b=VJqSJ2f6jvBTnn+M9Scu3jl7vHPqA0tifILZrYbFUO6umNVEL/GCFly3HMBr9uijfnCe2vqn2kUZzFHjiW9GNzt2DEv/orsSLq0DZuXNrXAlCh/kjDXlihStKpm+MNcxY8V8lR5NSgRF5c6sgooUjynNa5HiRlTDgqfUYzNlkDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnMf5DMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnMf5DMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEED5C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742017733;
	bh=Dt4BbJ96BXuMTo2JSjcgdL5p0cMgiYX8ubap763pCac=;
	h=To:Subject:From:Date:From;
	b=XnMf5DMMry21D6g0SZ0TlZCWOTMcJZKo60P2MQme+sovrl3upZaMrVVzD4CaAk204
	 u05RYJrH4x6eMIKYAmjBBttPe+r8MVhC7Vzg8XtflSrnJv5Vo28LAkNkLcFdfoLFTm
	 ZLY2+/GWX1ntgsoCFU4nCVbSyMPZTrs2AQ56lfDm/vBzO+f33xjvcc5DF951Vt5x++
	 v9VzYEBCyc/u6T1f1NhRj7ao56sU4eA51kKz0p3ck4pAYP0/TvoSKmrd1Zsf1JAggu
	 OPe93i63KMRj/1pSN/gvZBbrC34krdhTyUO/jUmagPXIjE9xB6u6PPPQmAxwVgG74p
	 AHFTsvv1Yv6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9757FC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 05:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201773358.26684.10646758944885268306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e030cc1163e89b117dbd385da964072a6c6ae73fd30269fa33ed94cdf19c061
Date: Sat, 15 Mar 2025 05:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742017733
