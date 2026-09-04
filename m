Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5225E453A41
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788514834; cv=none; b=uETtVMKvlaap9RVuRDhVyVAqJB7jA/lQI4uWYZynB2r4INgqqju7IjINDgo9H2gBcuuB8TlscG63qVyF2yGKtiqM3/gPhMslle+ge1hiYBEEnR4quPL1ooJDA0yIFPPY2vZSAo89ODK4zRnYmI3GMoKP5yuUftj4xxsgxXBUJMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788514834; c=relaxed/simple;
	bh=dv4AyHPwcGCHhpTyfnTruWZpf1MQlffkYQDW4UHyY/4=;
	h=To:Subject:From:Message-Id:Date; b=TStbnKhrRrVbAw9SSHYstYOmfy1Qk+SJAsTv1zgeTB6e92UxuaTN8J/Z31sPhQNNa/mNKRzF4VXxtPzAmv6cMSX7lNTABW0N00aO9yM1O4vclPN0/THTRPNvErhJcjN1k5x4H2gWAcvrbHrYcmgsthmVkFxCtft92iJqhuJ8LMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcUhe3L9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcUhe3L9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7710C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788514833;
	bh=dv4AyHPwcGCHhpTyfnTruWZpf1MQlffkYQDW4UHyY/4=;
	h=To:Subject:From:Date:From;
	b=BcUhe3L9W6M1bRpaQavzNj+luqZGu1RJKmtbv+ciDpeSWmF/Y+l1HCbvsuy1a6vAW
	 87xA1187W8DXcVRvmAivWYORlxdlLEqC/nnUkJYBz0CixUs/QEs4FhNsQZBiox95c/
	 wkD2Cx8yPf6uX9VudtvctS/PYkQSx+rBmu3OeGcR9PS7Gq732wfHII0MOicUogZusY
	 gKSm0xWp9u+fvZ0V0TV8W1JI8PSKwWySWV1UC0JODGJNTECER/fSN/Pac5s0kbaoZZ
	 L0yjfHQsayyZga+nG8V61BSi65JwrOH1oPtf0hsOBESpq9TUEJbfyTeyzNe60NRgMv
	 o9FHJpyTLnc6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39FAC624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851483372.27565.11777590650122257460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c152306a6b38d62ea2dd0ec9d228b8766e24351b5f6880bfd0e7dcadfd804d
Date: Fri, 04 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788514833
