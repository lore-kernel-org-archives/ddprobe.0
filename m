Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D33C381B8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719653063; cv=none; b=Qfhy7jvFnnqx6mnI+4vMtHk9uk0A/rWychy5hOmFAdv/yQxYHp8zXznK3MHbZX8J+Jje8LOTvbImd5Z90/SJw1abMbiIFxEE+DyloXd4fw5WGTODHnSAaj0CzlhmuskaDpIM5B4qRXrmy5J4eu4DQmPvSPXv0LjsoRi/nKSsoVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719653063; c=relaxed/simple;
	bh=u37r0wEW3RFznwog02QwsX2GS3iTtO+fYS98kPe/Npw=;
	h=To:Subject:From:Message-Id:Date; b=UrcfbCbOFU1FRisdPV+UAGugVTr1j+F+ippvEXj/21bduCBn0/xWaKGYjtciYXPIEb5A6SriRzYJhQ/7102+Fz+rjGI5D7fjiuhl0c90kfikOnqQOjNTit1aEsNmwLMeEGG3hD5yrQU+tBLz6iv5dZHw+rOouVvB1YM4pkAF/LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAHjJN9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAHjJN9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9CB5C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719653062;
	bh=u37r0wEW3RFznwog02QwsX2GS3iTtO+fYS98kPe/Npw=;
	h=To:Subject:From:Date:From;
	b=gAHjJN9DJVnUQ2VZb56wsVqfqpNsGxBht0faIIfxYlAtz7LRKyeJs/bsjHE0u9hj+
	 fnoFEL4cEgMHfVbqivb4h/qBPzekDujVXpmAmi6JR2DSGeFOLE61ejHGG4HZBT3qs8
	 J0YjuGkXS4zn1YTpPssBuseQo6UcRenjpPgzMJde8fAwiEQItDEyzCMcTlt5w8DR3t
	 fSvGaEYJCWcnwipigK60uQsLSBepHCsCI7tM2JFQGEVleFTLfzUdKoyBvb5X7giEiD
	 ZhOe+RDGEpPvZJ80ZuPGOPdTDTVNE3a5tdlLAn63tc/kB9JK2cwtGGkCx2NKa1xSuU
	 hsZ+iiF6ABtiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1265C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965306281.16563.17336478369918437029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f06080b7348710cd36a6c485c929a6232924ef4e908b6d5a591834bb00722c94
Date: Sat, 29 Jun 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719653062
