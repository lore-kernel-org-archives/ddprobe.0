Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4D8849C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722042354; cv=none; b=lfT9+xjuuJOvL70tsJcU1cRv9Zlg/x+o4INOQUZ7ODwWvoeVgD4OMO0gGQklbNKlhDxZj/NAA/ZLUUbEUcAFgrmH9SSruS+jtlXm/CwMnLymDeA+CAmOwWAGSfGaViSMnUc5sRuvIsXfzo0bGlaHejZUE9vJB6B6bNaA8VrdT4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722042354; c=relaxed/simple;
	bh=2kRgwlZKAMOtv9+1JLbLc6f3LbSHld7c76JA+nmHiew=;
	h=To:Subject:From:Message-Id:Date; b=LR9o3+K9rdAI+KLLgh3I1cacQHiGuon9lFRgSd/koewbGnbwCq96QMyJ3WfIWdTmvJDFNtpbbxeiEjFfxMATgFkgvi0whh8uBnMOvk9HaNknXoVKqutSthPfla1jP3/tFTFnHIWdhS/yi/iFiTcmW0LH6zGSx2G8MKnHlHLTT88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4zpE9Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4zpE9Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D7BC32786
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722042353;
	bh=2kRgwlZKAMOtv9+1JLbLc6f3LbSHld7c76JA+nmHiew=;
	h=To:Subject:From:Date:From;
	b=h4zpE9PcqztLf5NTPiH/wC1cOy7SdWtHFY7p6pD1DcqcBx3+gGJtoSU9NM2OLrzIT
	 PvdwH60PZP6ooXWW0mCNKfdNXXMg/+SgalA4hGcUDwvis+TZpb4sLsjNXIo7V6o9Ev
	 vp0KJkyBo7GgvG5al8a/jIWlvw7AYtay6VpXj2MTHSUoS71RZhxTTazQSYgNfQ+MVV
	 ftOvt+LT9GSWrBAm3KWQn6qq12hs36uVgkZKj9m3cg0VXkKNAtjWdj+r7WKGc0GWb6
	 4d0pp1YZEjHv2iov7QobLMhiQ9n6gRgiNXYhuryfGxDwsAOno4qWuZHyQ3b1A30N7L
	 zLUCVGUMxzqVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14BDC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204235362.21148.16955455046190462447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53cbdf9ab42d6f1945dfbbac34cd584523e48347b669d9efa4969f5a50798ae
Date: Sat, 27 Jul 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722042353
