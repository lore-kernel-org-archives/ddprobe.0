Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561C5800
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747548594; cv=none; b=npITjQWgn5yG1VkxqOo4VTyMcn5x62m6D8E8ORQ9/ipWwuUu2jrsQkzN31xmeiHmCbKrxcgIqoC1fEtEldhEckzRghqhhVRz5IoY1E5MpfBq01K8b6xyTAk/DwFEKyfmwbgoSIwCDt6OryMRLXCvCNFcI6IjJIhc8lTmIjWni7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747548594; c=relaxed/simple;
	bh=bPKEPSezVP+8tDRnvr63j6aRT6NOWsxNmmgc7izZ6Hk=;
	h=To:Subject:From:Message-Id:Date; b=byyZKYhX7tN0EE/718MSCAGWYIygK5DyQPXp3WrnFVdpsXUj2GDoVr0hnuCVQFLZtitf9dDdnXGpUcBElFVMhAizGjc/uvRiKyjKCiCRAa1dle3jM31MU1bZmvApxsMjvjG5vshSxVe3/kOLOwAOkP5D0Q1TgAyvBVhKINe55W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVM+4l++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVM+4l++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A528FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747548593;
	bh=bPKEPSezVP+8tDRnvr63j6aRT6NOWsxNmmgc7izZ6Hk=;
	h=To:Subject:From:Date:From;
	b=MVM+4l++rkoZpPQ/xNHEspXlgZnAcnER15ebg+wCbGV0AbTLqWyEzT0JRBmFXG7BZ
	 QRFEa+nkvzQPMeHN1wPxW8/6E1O8XmpTVHGsPF7NEBZMnagbr45PZtRf+CdDT5nqmT
	 ws+55lzicGRq+ytb29zMsDiSPqcoYl+pCnvpT7g5PkvKkDxmDrcMvk/9/9RFmrFzEM
	 yYaK9vQle8l2Ml99RPKDON/+qNyC5UHAU+w4+LhLvmzsgw5J01KeSrAxwIugQdog6C
	 4p3kRBFVXriVw0BH2xgW6FLnoEXTfS4dguoZGOafCU1kwogw13850/W1r4p5hwRc2j
	 gepFgJNp3OJWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91022C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754859357.6624.2942075124317725499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0faf4f10ef99b870691cf628dc6f1515824844bcdbec53b74dee178f38811cc3
Date: Sun, 18 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747548593
