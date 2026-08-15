Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C073803DB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786775434; cv=none; b=eUtuEqLwMb37xRa4iy9hRgXXIDf8p5SGInM5ySM6Ubi2QiFLVCmbl9O3kTNOcqtsJacIxr8DzCuLRfg5MJx2MOvg8mgv0wPvoJ/U97aPBG7FMJvtfttXgiQAiknUqfY+DBdvUuoYUIHPsL+S/puX/a4Ljqsr/kcYJ95cCot3x1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786775434; c=relaxed/simple;
	bh=t7iBEudlJgJS2AywRbI3NJWofHlgIIn+I5IFaru3wX8=;
	h=To:Subject:From:Message-Id:Date; b=gYFtlHSRTkngwKpGIuusLcDHbI9aSfmMFGJ/8eZNIMsqRkZVsiLOUdCPwiIrRkhl80HtpmND+h5TEdBOsrp4bx228Gz8aPdoMaiFitkDkBsKWcl4aW+i6gj3bh+WO1E39tswCpMuhUTvT5bvq6TabAVoEoqlrGdTKN7zB0f7dhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/dJ9zP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/dJ9zP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD54CC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786775433;
	bh=t7iBEudlJgJS2AywRbI3NJWofHlgIIn+I5IFaru3wX8=;
	h=To:Subject:From:Date:From;
	b=n/dJ9zP3KeIxuIUAC3lVHkjwiCsFHeUPVyBTMYTllwroZS5B55P88TNh5kLON2oME
	 UjAJme+37mQUb8f+ihsvonjCC+qyNSsFHgqfp4rTgD/SXJwxuY/R43yZG0BuK5jYyG
	 BvAl+w4jPGI6lVVetRcx6kzts5L+zVUMak4VBLUxNEV1MCx/rlXGWOeqRHYrF2+Eoz
	 aR6qr9DOY94brQy0Q4y85HanNRufzdVSfs2TVgY4XqtMla0ph1qCKyOsQ1F2WRHtzg
	 7J1QkVNWM/TDu+Kz5dTM5bE221XXvIS8zPrbvChKLLHfFwcm47q/b5XSUAukxnpKx7
	 X0m7rVMrDEcRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A962DC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677543368.4776.923326578843195234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c437e6858299c849ff00b64c8efca3ce99a714aa43157ba53831197871638658
Date: Sat, 15 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786775433
