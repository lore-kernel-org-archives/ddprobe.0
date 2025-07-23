Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F45D224B07
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753294794; cv=none; b=cTJ8b3tyonH2w2Kko4QjbEmHl+RETpiiKuN1S+ASq38KB8v/oVBkWnGTOptP9zdDrwr+f89t9OhEip3O3mCZHnVpPUKa58AapDlmzLChiIP2dHW7xf+/KuFvs+rH8HSNuZsHXxIGDtu7yedXxmjSmGomzqOwN+20oCXE1veZwiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753294794; c=relaxed/simple;
	bh=nKJBLtmy7GufGnNjpKchY1tXXNppLrcD6tXnN6Xaq0I=;
	h=To:Subject:From:Message-Id:Date; b=E5Jp8AWzInQbSfcQPpxNJMgSCVGk0bzIHurglv7WQJ4dIzVDrf8OcBCa2KgH1LgMIhmDbMwgjNxn3tc6aNoGyJA6D59FFwurf1RAz+PXdvN6Se+PijodaQa4U3hF3R9A4vKPokapk46K8u1E2f8YOYlakOX5sq4h45wJNP/HRnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gk65pc0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gk65pc0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A555FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753294793;
	bh=nKJBLtmy7GufGnNjpKchY1tXXNppLrcD6tXnN6Xaq0I=;
	h=To:Subject:From:Date:From;
	b=gk65pc0zL4DGn1cn5iuhoJg6+zOQ8M4nQpfoEoWR3MgpXKTYY7XcblgPhMavNa5ya
	 yGW/BT/A0qiybsftcD2I7o+VgVO5gCYOkAGmedzFSsO/A08jO+eUZIrOHB7ddOtMoT
	 pfvCLu2wKkronK34jJJkuLwtwoaPfIDjWFp28Kp4SFHoeLgoNLZm2VydM7zYmXvOk0
	 aWMv0MNo1i3j2R5maj+eojo/QW5BxdNmewmz1P+2MexMM/TvhzCn/et7FEgckZBJ3b
	 HBCOSnZMuDtcunrcb6cZdhf/cXYcmQKEklo6Xh31GooSPLkxE41p3JsZxsExaT7AiU
	 9FlC2AjW4s7hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C1C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329479360.21756.13981459013346381135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247e723471269b6364a2022a2179a382103a42a92e20bad3c6855912dac0af04
Date: Wed, 23 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753294793
