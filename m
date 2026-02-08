Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C07A34DCE2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770551034; cv=none; b=m/hGzjL2xbt+3mQ9JJeL/mXilCMWr1bSZHqAnaXO65v6BRupy57v03Tko3s5koZ2ILmaGhx7eO05Kvm6CnfkADK4XnJbPNb2DQNJgGDKo+hoxF+gTbDBtz05fYn0fivD0VnhJzhvAEFJg+IX08cXQlZUWTlhnoprds9tkmZ7yv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770551034; c=relaxed/simple;
	bh=GhAzGsf9ACkICbkHuTMPmxvL4MMJhXWQ5TLUbFiw8MA=;
	h=To:Subject:From:Message-Id:Date; b=RMMBjgZmrPshgGt4Ts9WFQxobzxE5Z/HAcz7yMx+PTKcYfniM3Ua1HLUGSOQ57Bb1JD8dmDaUSrANclrnTuV5b+gPC+7fFsxX22laA4jNpOHu+bqtVTBSwRNUEwkHRndKKSIPas8DwgoDh//SaIfqsDtpR3326bsYwe+n+7ff5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEM9uhyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEM9uhyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC51FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770551033;
	bh=GhAzGsf9ACkICbkHuTMPmxvL4MMJhXWQ5TLUbFiw8MA=;
	h=To:Subject:From:Date:From;
	b=HEM9uhyvBkoH4ZwHcnVX2mTSYru3Wcf/Wn04IQFFh40rOgU86BiIAzUA9GAdnIENT
	 Bu4LSazhirhCpzP8k7uO18qL+gMf89r4v5Jpo8Li3ho0qx85eUvx2GkcF6KKIlpAzn
	 TlHTVbT/t8J1q6t2hCx/+hnRVpIV+dnbWFKtgsaGQcgMGyDS4T/sF2WwZah7anJuzD
	 j+IhzIwRODJpyj1Mh5waYRXDxYfq8Php8fIfbI8TXCPgFFCVNa2emnSxa84KWz81ud
	 T1A4TP2MpRBzpWz1Ud5zdpTvGrQvGnopUibDWt1SrZteDOKZJNeH8F5HpMt6CfgnN5
	 0Z+vzFRskhunA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9523DEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055103358.14114.18166162409268738028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61223e06cf18f7fc81d06d7d166f5cd3b8ec1f6344d0145ea4b2be4bb275884
Date: Sun, 08 Feb 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770551033
