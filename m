Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC8C372B2B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769889834; cv=none; b=fGj4YUR/5R+xwsVwfqh1skiTLVUP4UmtZ4rVvTigUwgyn5Tnaz/uDSRKcsi0U7LKC6YfgA99uUvXiNOx5kDynbVTBmzSDj1DVslO1pyeFLkVJRHPgROwaqL9FGF7mqlt2k1yWKv5UvR8fyJCkGgGyooMrnbrLjJHns+DJGIxah8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769889834; c=relaxed/simple;
	bh=yY/zall5TLz4v24g+EoYQDMwAln21TfDq4kOjWtmcNE=;
	h=To:Subject:From:Message-Id:Date; b=JsMBuVXoEalchX6Ugmk+k56vA7n41DSHo/JdG2novqoX7eqvcrjeXFPwVyu2BbdDyW3lMecEr6eBqpMV7a/QS2NV7zsnlZagfu7ixMV6S5mHkNERowgRhJZEpjIHAWLoogYbAOmU+guLRrciV9YhTsGf2dTcJaa3Bk51chAunc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+v+hrOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+v+hrOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769889833;
	bh=yY/zall5TLz4v24g+EoYQDMwAln21TfDq4kOjWtmcNE=;
	h=To:Subject:From:Date:From;
	b=Z+v+hrOB7uiC7bW4RtOcV7JuyNORSrviqItEEeg459VYl0BnLs9A5h3Um9/7h7hyk
	 ZGwsuudfZeK1sPIxOJG0JyaEXBdgNjymkje374FUVBF2HTmoWll/94BaYgkKAbTEMy
	 aOdjib0QbI0Ld4Ali21EL1T4KEuh0VRuBRAijmcZrUIU9bvhta1VNKAV5cTRITeEz2
	 HX6p3FEFPQE+X3ZOEjsHXq6v7K8cuBGMvAJ/CYQPAk6p6v4JlkfGd5IITk5m/5XKry
	 e/0ODB0Ek0tHXfq6y0OsnxZV+rfkdF2OTxk2QeIek7w5/k31482juV2WT3US+qVk9s
	 0a5Hy/pSYDFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA34E7C6E2
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988983357.21717.50906686095145453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b20180a95d0f34ec2228ca4d28937651822bb1889134bd3d5b53d1233bd368
Date: Sat, 31 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769889833
