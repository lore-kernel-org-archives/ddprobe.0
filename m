Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C1B72612
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767744234; cv=none; b=KtZXF5mGPNDK07TcxivgrKD5xYrWdmo45XhL9980NXI5hfsG41jaMvql54tKLMiZhoqzXTwhaP9wAU1l7Fhpor0cafHSAq1QH2Z5ad0OaerxFpTAIqMAITviKvymjWsEPl0z5FSuq3UtlLXmT37Y7Rd/tjHny4Kowu1t3RxWl/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767744234; c=relaxed/simple;
	bh=HpE5R/F6rPyRaI3FjvEXPJB94DU6OJKBfZMQBGfS+r8=;
	h=To:Subject:From:Message-Id:Date; b=J7UuePTMfOx7Sqms/H/aZZnfDVWx4O1HR4I1CiKnCv2IkzG9XE2rwiPLQWXWDfU7CKeuuRoKKsqOnlok/5L07GJHAqWvz2xbGiaZjyhdrvUkqkpeqIvx5M3YzGF7gTLp9F5LjzN6tVuMUmUESwjQtWvrA3+H0jSCo831MujyrRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCENWSKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCENWSKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBE5C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767744233;
	bh=HpE5R/F6rPyRaI3FjvEXPJB94DU6OJKBfZMQBGfS+r8=;
	h=To:Subject:From:Date:From;
	b=pCENWSKuDfE5A75H4pvF6k4xqi1OXkdhSJWawSRRVjqo4rN2/BfWY8x0FpUSga008
	 0eHpBQB8XeyJaRfFsUTPYuM4UPFh289fRhTj194wBV/Hl5jnSK6e6FjTK35sjWe/er
	 2ud/sSoVNonQtx5+9rbX3jTZEbpb5WHeUSECsWgh5MUW7VnduTIXzfsFYpg06GDfyG
	 UiihpjJEXHoyU5SB3b8Negdkiy0n6Z7usQ3kcQLehvrwAWnMDff/Q+r4U+g7B8Pxw6
	 Hr3PdyxHwlnaZiKjazNP74KrLPxs4C0FL5Na5mJuaa5ydRjWIk78EKIW8k0+t+mxUV
	 YKJjzF1QBzIdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CCACF6AA0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774423358.25404.15442009670737239054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04147df5389517e73d532e2dc9d7957b7071afd55d870880470506c1e7940cdd
Date: Wed, 07 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767744233
