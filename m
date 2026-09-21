Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AB13546C6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789984234; cv=none; b=Zn1+Up/wAdylmAWdDx7OMTYn6c6X+JGYeu1gQb1Qef6xTgfXSICI9fKrQY/tDXtH2WA1owK1hfnwRXYRbYjmCnUhMu2O5ajsJyigD74lrZPHwuTtxsdmHDxXwry1ku7rMe7Ns3VsAJW/YC3r2Uz3sNnEJzJDryaNLx+6MwKZFyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789984234; c=relaxed/simple;
	bh=5vKSNY8pM2UuFav/NgDBpmqCCR7w6wF6+H9+ZkePo5g=;
	h=To:Subject:From:Message-Id:Date; b=ahJZ6jrmzDZlMNIxPm+qIhIlcEv0zS4C6D61TR/PJGCHr8zqkO75DCZnuiFz6Nr3/gG7L7/NwOBs0DC6Xk6USiG03E4GGs0l7f70ZsYsYCoNWOrX+Cl6HPbwmLnqMtj9+rCsBTYHHoN1FGLOFxlC7Pt2CbagyJ5S3JBVQHWjn0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIvZSy/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIvZSy/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1070C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789984233;
	bh=5vKSNY8pM2UuFav/NgDBpmqCCR7w6wF6+H9+ZkePo5g=;
	h=To:Subject:From:Date:From;
	b=tIvZSy/Cgsf1vc+fYv1OvQDFUW4qs02LWDuGkE4ZWOO8y7vG0q6aTu87Im5wevRNI
	 cRIaqShoJ5Bgiumo9q91EgEP9vewXM9/mUeZJsJp3tg1CVpDU2SugCZ6C/Nr7PSRHo
	 N2RkrVZKlMM1VVsVzxdADkLuHclEy/Maflis0Aq64O/L1/8nFTSaeL0BoFl+m65FdP
	 uNJIHsWw+bfnI6UBAw84i25bdbRbuwPmM0DW5JyIr2Tre5K5m4pQPwLuiBJx2e5PDd
	 10jiEuGnWpkndNOjXpEh1+x8nFt67fNOon1m5cr74tdm5KlT5lhRbO/+kWrT1fovf4
	 d3LsNBAikmZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC271C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998423369.17793.6452426937752528855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e2250c147aabbedf60f8b72eb8dbcfc43c1d21a1df3bf79b3b3df45a35c75d
Date: Mon, 21 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789984233
