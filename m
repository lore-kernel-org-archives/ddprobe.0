Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E373BF66D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785367834; cv=none; b=ceUGq+O5+6gsbJk6UjkLyJQ2QNGaPpgxL+NLuIrPtOU1ToyZiPsnLd3pJO9i+8Hj42CZiJkDMwE3BBOdcroYm4/Oca5RFAbme/Cb6JoxtA570gqFQv9v3ilk8mMEaAniX/7ETJeZOOzSy+6b9FFBJcm+hPZhRIW1BJIZ6bUboA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785367834; c=relaxed/simple;
	bh=JEXXqmaHdJoefrsRq8Ee2O9bWrhvs4/9ocCwR89coQY=;
	h=To:Subject:From:Message-Id:Date; b=GzXznQvf53aMlymCOtEeQAkN/zT/9vGn7q3mOIFc4lqtGoRtFla8mCjl75JqqqS5UkjMOCIFhB0QGzv8O1MDJBABrSIHne0NY69BWJKcWFl3Cc9uUMKLF6sqRyHA8yvQjGR3BI/ZD5OkRHw2jNxofRI0IFwWJ/wV63cWEGJq3TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlFE/5wK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlFE/5wK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEE6C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785367833;
	bh=JEXXqmaHdJoefrsRq8Ee2O9bWrhvs4/9ocCwR89coQY=;
	h=To:Subject:From:Date:From;
	b=HlFE/5wKmHiA4ODyWHGfxfM3eCmF4h3FHD9GddcJ1VrxpSAEvuDNDudDehVUfKJ3p
	 qV95BTpv9i3Ju8XZq2All32WzAeVeLid1tqoKtIVnlCJYGuxxc+SJVcGPLsJKKpgqh
	 la0p0kw1Uo/08D1HCOnASGQxUT3Psc4onqG2dg0ujZQYYXNdSEZTNqE3sJlyJAwbX7
	 M69PqsIsDglkP6ueZRV4TP8rD6fM1fI/9qfgng2okDdUDq0m6KwnJ3t1dcNDipV3Ct
	 aiNtFjPXKxex5FbMxaar5pIfm3o4EFCWp2gksyVJI2AlkduGL+AdGBvbLjbkmQNYPA
	 jReoiaemMCq1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87B9C54FCD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536783368.28379.11274421859436354227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70ec7a848e711612bcf0fab15a287ea3562c7f75b61b5a5cfc0dbd30c768c3c
Date: Wed, 29 Jul 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785367833
