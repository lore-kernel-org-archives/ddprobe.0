Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E6313777E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766671434; cv=none; b=dloACK4X22Ie0x9TY4pOReVSnP5mt8sAF1Xr2AaFmae+EONqCpiDvNowUiFnRm/k7WxoDeIm2V1s9xerVvOVzgba6WEwgsa4ROpjaeGJqHR7+TXJlE1U4L73mI4ljsE5PI6vVsz/utpOSNy3NGFSydon+qnHEchWK6uvNpFOwng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766671434; c=relaxed/simple;
	bh=sEKrlzCr0SMNnYJETuLZ2msAgdV5pCVuIMxZyJvMIuA=;
	h=To:Subject:From:Message-Id:Date; b=YdFZz9hfxLvkeO+JwbeU5qF1jKhLiws56ZitMZToy7XEML7Lx/qumu1fPvIHNCkmbIlmzelLNzp3B2+HlBRZBbL99CBZaxbIOfFxqpsjLEgfjUybVvhqQQtFaPOefdBifjmOxxhAM+q4k/Md9Tztbuqe/sFhBp0GkIh4JFDndps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMaopy9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMaopy9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB169C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766671433;
	bh=sEKrlzCr0SMNnYJETuLZ2msAgdV5pCVuIMxZyJvMIuA=;
	h=To:Subject:From:Date:From;
	b=YMaopy9/706by6Sn/R51OoC2HUTtJgy/DpWONb8P7tIPCJ1jTfNKiaWPoHfp0AXRM
	 gJraxNb3fzXXun8e6AWbrTd9UA/cWltbmw0uLlg2fm8KTC5MQ/tuih8J1Qx0pJKSEK
	 mhNtNSHbV2t1uRPBVv+RJ+wmedwssqg5oumziLdVMTBbF8dsn4DYYeUZo8qaoeIjHr
	 bERt3kwQefxOP19Zzimo+YvwhuztLrDHyTCE6kc08LjexiY9ZGHUP6QTOLm4FLKlNB
	 NRlVSfUtL/4uX7Mp550ASEdO4WPVd35y/C5FriIRx1YP3UaMNEDQ8wFQALr6Fn2s3E
	 0CDWkE+pF2L8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988E9E7AD5E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667143361.26092.13077489169041370336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561b0cd69de5092e29d32808585da5286c2ae178f03a3258d7d8f580f40e2bd2
Date: Thu, 25 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766671433
