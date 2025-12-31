Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DB430F927
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767171834; cv=none; b=XJxs6pMSrq4OOR4yZnlYPi1HS/APdAixrXiCVG+cL219xLfDyQdnTdqbfsEsm24ITyw5aUQqVmzZ0EjvtyEW7cci8bas6l2VH++Bah9w6FBvSBWuJQsevPKbA89jOUF9cMbUvAb4dwLwhDelsKnUGFQJAmKnTMSbC5u9qiS/J7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767171834; c=relaxed/simple;
	bh=2xwog4LQGO+SNjNFA90OXHXCkYR3xU61DvPCGxKqs8g=;
	h=To:Subject:From:Message-Id:Date; b=KG4OWdH+pvKx6QGPit0wtBjf8Au3pzkVxTfjhBk5Abx98lBTfrBHeUxt/pwD/gOmLDoRoj68ExvFJzuHDBbAWzPKbojiZXCizNexROgkifd/69f9hN5PyjOIbQP1wW2mUv9T+3hgw7if+k4IvRDER5O0hkFO2jrKauXnDcsLx0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzDwFNQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzDwFNQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3893C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767171833;
	bh=2xwog4LQGO+SNjNFA90OXHXCkYR3xU61DvPCGxKqs8g=;
	h=To:Subject:From:Date:From;
	b=DzDwFNQRrEwGr+p7kQrl2ZHh3pkKkixzUVBLovkmxr+kBfYf7on6/RSkrZJoN9vdz
	 N5/PwUS8nCoclOY3b7TAtz1Nbvi2ODmE5puQObDlli7Yi0JG9uAdXDz0tgJO0g1L/7
	 OldhYPTqGYE49UWoxtRa0mPHlm5t5V/dFrmALDSwCJDpMxUXkgI6oD02Zf1fQgCror
	 EuInjsU6R+BMZIA+HI+k0Jxt9a2J+yOk5C3+h9c/LVqluZ6LquZxlnuanhbSH9FQw+
	 /w0Y27W/bXExr5m+5Mu9DEAA27zKuVB+HS6seovIRqA7Y55XV0YO0qprSEfmgr47jw
	 Sxd/KFNRjCqlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90845EE57EC
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717183358.813.2162746963563091670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efbaf9c63a31691f61a436b96eba600e2a708886ac498436aa793baca765384
Date: Wed, 31 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767171833
