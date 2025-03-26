Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F30C1917D9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742980795; cv=none; b=G0WZAdeB44+gedIeBcFWp58MgPsrF7YzJWMP/KPxIPGnSO5HJBsZDuAF5Z6VN9BN1bIKk1wStm3hthKul8IV+QF+Gjv/HcBI12ym6bn8F9IJO6wOnHhAUzgPjQW4vpEgbTfa9lMTo/lP5bPyDsrzr8Y+exzGHO9E8WdQcqVMdRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742980795; c=relaxed/simple;
	bh=tBnEjAVq6oSYmUKPyDf5dKClGaYJKKhXfaUOn9ZgsZA=;
	h=To:Subject:From:Message-Id:Date; b=oChJhmMmFPwXppfMQUkMnio6bwv+CzGfE045DvNY8FKsrHIygpj6vxa3MVbmDNggs8osaCP5XEaunSpQSVxcmOBI9EHRou3y4otbfV1bPBMVQyCTn3UFZqSIHU8kzm1af58Jaruyyip1ncLdgWplGDQ3okdHR3sF3vVFJ2wHTqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8hTrtG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8hTrtG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A798BC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742980793;
	bh=tBnEjAVq6oSYmUKPyDf5dKClGaYJKKhXfaUOn9ZgsZA=;
	h=To:Subject:From:Date:From;
	b=d8hTrtG8OIu1M5pAVW+ASe0pjscDeqVoAPIFKU32IpbvT4Hif3bwc30rAN5WWFgrk
	 SJvlLtsqtwxhJT4RMl0VbxjiiDYFn172PcJnM5RzMTVQsh2di7sAg2jfNQk7oabp97
	 Y6l7Uipr3KU3WtVeWSm+oTRxq12m66nEMpkfFkh3cIuFbin09O8sDU+1z+veD60o0n
	 kZVMo1tJS1X6P8+GdnTEd3eP/nXDw1ltk7vZoF7H2DkpmpiTF74nrf6nbYTCME0154
	 gk4MNj628K3sHFS4pJi2as7qp1n/U0yBm1SptSSM0mJ+MhX66s5dxgFpiD2v+3J7G8
	 8+KVkI6+7eekg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9531FC3600E
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298079358.9918.3665042226901604401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db595eb81d82b26e05393a431ba393527aeab2b2ab6c090332cb8a7aac57966b
Date: Wed, 26 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742980793
