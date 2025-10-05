Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACAD1662E7
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759698594; cv=none; b=CLhXG5u02Bteung6QcISTL0cnRjhSDHUHC7022WQGucKZnDqruRS3WTt+CmVWuluPOBbtUPlSRDUK6EwaeBN/mh4UzATvgDdomguWPEDLXvNsI4LgpgigtWRsM9x9xKiSsXyaHPlmT5QfU39E9I/Gmre2CK5pUr9p1T1rkh7jLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759698594; c=relaxed/simple;
	bh=h3te7z1UfkwJOei+QuAIQrReuf/mZ6ihKFwuk7ctl9M=;
	h=To:Subject:From:Message-Id:Date; b=SRbvgISZduqwi27/PR04nxkLIEqFsWoKuYKkQVryi4PXAao7S4WL9rVndgcH07Ks8HrNlxzkCB6I4G5nsM8zqZUMPmu/k4vBatzzHwFK4QVKUPL0o90I/oNC43/Unb8IoKEjDN2v+2WyryoloEXOH6vj4s2fCYF7e9Y2tLuw/Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFfjLvBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFfjLvBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A80C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759698593;
	bh=h3te7z1UfkwJOei+QuAIQrReuf/mZ6ihKFwuk7ctl9M=;
	h=To:Subject:From:Date:From;
	b=sFfjLvBNGpfPWJ9Bgl2+TeA+j51xeiDu3ApWTcVkjvmUOAJGuwr+Fap1ugTELCUa/
	 YIWosnSbjfpz++E27H5PFbAdUGRkRn7wLmQo8Jtn9jDF9kQfhjCToqks/cw6UEU/vC
	 uinZ0gfwyWZsqeY2uCMfbY7id5CYUw2002C7fYVvJo5tNqnrvutiSGkKOaaV30wC68
	 AOn7dFHHS47PwmDpI/Cq3yDcJLv7JNJ+rhF4VSda3STH3wMlPVjgdTX1tWmK+ouCJn
	 cPHKJH3tQnup4mKVfy3GZ+vMUOzIKEqx2u9bRiCbdViAfEvmH6L3jH8YZB9zvpcFaH
	 UmWh1hDOezSiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF56CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969859357.27657.8343952877093836585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d37dbb30557d119fd5f7210657b329d5eace5823225e60c2a1cc2965df7334f
Date: Sun, 05 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759698593
