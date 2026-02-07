Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D51A19F13F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770503034; cv=none; b=Xm1iw6nUsPXFSTbk3ofU8bWT69AB0OZj+nNYvB3HlKMfPnpV9F+8EM6rZGjHvLUt+yMX5oy7Yaip8w9JUeLganxKdmz+S4b024VYmuXLsMlzfnZafFkh5E55RYRJaGIlBjcbcLLVBd1wavHZGt+OaKfkjSz7Y8GPQe94S0jFTk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770503034; c=relaxed/simple;
	bh=AqGwOP38iF/3chDd7EGrJFmFd2z/4tq2pkCQOnYm+gk=;
	h=To:Subject:From:Message-Id:Date; b=f7dVw6cfLjhk2FID9mJHDjukl0DAgW+Zq/9O0pH0wSVrwA3fidXTRSkPCD05ASEq2n+jkT7L/UgMi6u0N0VSM1qerkAcYzvKb3veNYvIf6VTpBaIgsOhSXbbk4SCpWvkhiy+uWoAN2xabaZyFdcGwzqcausAf1dh/2nIxT5WlsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fda3trDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fda3trDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7451C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770503033;
	bh=AqGwOP38iF/3chDd7EGrJFmFd2z/4tq2pkCQOnYm+gk=;
	h=To:Subject:From:Date:From;
	b=fda3trDf00qEEyDAYXi/KcwnYJWM0ApfMlHm8seh4SRnTDXc9qWR1OBhR19WGAFK3
	 Xa57qNwAO9IpxAZirLd6bqQXVSBiln8kzGJBTpOX/6Cqk/tg/Dlq8GKUFKYF99dFBC
	 RI/QRJ35s4nsHXUvUIAk7Vivectnb8d0kFi0QzSZTfaHJcBQG9yUlXPo1/Y01k1hR3
	 ukEEOvTdqib2xZLwyW4ObgtBO701zstVH3zNKzDGBNl7ojtvF/hrUPEjYUe3nyMot9
	 cG7h3oT6y+mWwFpdCRjU5Jm85PsUajWQ++WK1bkeTmg4uq1va7f9mrKTSk4FhXFlOB
	 YhgU5btyDHZCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D99EE0AEC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050303359.6254.17139659612090960087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4f3a1d5800a9a668949d5dba9882421c816870350cac2fdc778c366f726110
Date: Sat, 07 Feb 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770503033
