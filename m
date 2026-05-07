Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9626B3B2FDB
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778145454; cv=none; b=VImosdCa0wp8sVI4wnfEZceP98tvssp0NURkL1BMLxxlUxyRHPYGKgZ/mjWDX2sIbMUJlLY2u10kqOoU3TwZlsJayfnH7+dBWcGbi5Duw0rCe3U/JT++uiodKMiXeUbjen1PNmDtRPJ+tG6W/pM5O5Rth8cBiyH9nbJO8JsHJe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778145454; c=relaxed/simple;
	bh=tPpNq07DfdaRPxXbULbZU1LB5vvyMGRjNzgBB2gtx8Y=;
	h=To:Subject:From:Message-Id:Date; b=umr9VM9KqVKU/cLncD7tAS8XL+SKNCd2G3vt/8zbIUUNuM774iU9ULdnV9nqog7HeDNUzyPsQJnVcY4UOu8F0nIbUgQihcvNll+Jt++MhAXd1iY3+msu0IUYzkUYHbca3kH/KHTDl/IF6C5j3lt79EMlcIcclKHVH+gJeETsrxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIgnTwEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIgnTwEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A82C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778145453;
	bh=tPpNq07DfdaRPxXbULbZU1LB5vvyMGRjNzgBB2gtx8Y=;
	h=To:Subject:From:Date:From;
	b=CIgnTwElPj8EopG/3MtpRPVSVvBRhUO+wNPbz0lZ8ubjqpGLhw2zc1+zBQ0GP8zEt
	 WJDqfRKqL3iAhZTFHRWOlmHW6zR8wzfcelJ5TlKfhA3gjvQt9FHGItVbgmR5PpJCu1
	 1JHn3ACIwaVlfLgVGsxD08f+XPdH3K1VUELjQYbBZRQe1StquTAZJ5N1wA1xXK/JOZ
	 tbX/OmsWzAGgcSyEMgYfj8V7gblTLgSrjB/oado842PMS0HQeuKwYZeudbTjxCmiZq
	 dXqXrZIC+CfamPkI38lhI+JXqWDl8lQ2lHi0D3yi7j4nhLrmMUyLWe2+cM6LdHQOCP
	 oSN2sWuAEOOjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA22FCD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814545368.25518.18033152942160893724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61deb4f5cea12427d6e3614ce463f4072a247f2ca27783ccd3206584424d1e5
Date: Thu, 07 May 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778145453
