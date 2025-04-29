Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A1720F066
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745923794; cv=none; b=nXGqfiKTmALa1p/D3wkgEoCJIE4ZjROWO7pQrSqpfAV7EIS4QfBhchjlMMSP/dZBw9Bw5bX+TwOGQZwQ6pYwQXyKzTrNa9ryqiUIRMQwpMRlcV5zrHyvJNty8zA1DgOzNhkEqiSWtpZ9zjwiLXPD3ttOasGgGzwhlI3Ph4eoXJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745923794; c=relaxed/simple;
	bh=xyVeYzEzgCuzISpomoS8JL6ySxHyBg0TSd5BScRnt4I=;
	h=To:Subject:From:Message-Id:Date; b=nPPAi/NB4k1yn/LcNwjLny9qwPEHhIh4eCbvrV87Dbx0coutOGh9V3bia+J1FC2fo0FgJaqwhPOUIqqIMtKZ3J8cWxcxaay6iroSHhBF7LTB3rpRyXNtrTapr0l8HVbnIlWByk4c3AnCpHtAcsMrxaUOplhE+hFrJXp7VhQa11I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gM3Oo7nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gM3Oo7nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2061C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745923793;
	bh=xyVeYzEzgCuzISpomoS8JL6ySxHyBg0TSd5BScRnt4I=;
	h=To:Subject:From:Date:From;
	b=gM3Oo7nmNXprRple13/bgrqNKSlez2LhDxldyuCwQTp52ZBQWI6JltZ3qsfnJ+XmP
	 oq/ShZIumq1U8sRGEVamuKdzSG8IceyNV27uMuephxEEB+smz0BoNVpu4L+lCGGBTW
	 RGRAQPmhKiznpuh51R+AZSKO5pCCxwPlqpuKM79r1AaHjBmseTr2wG8fEjW3oYH/vh
	 5YAafRK3gAf7KQaXKXkIQjAod5E6Pb/dQlaBPp6hPBfITFlNqEb1xfDPo1ZYJn6ii8
	 z2svJP+/rVEwJKtAOdhfpAE0Kw70L/rK4IKzwsAtXbPQlFL3XUEZ3/CNEN2Wh2/2Eq
	 Dl+31FAxcGkgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F709C3ABA9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592379357.15718.16031867405325510951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72828194d888b4085b540846b791808502919cf5a51afd6db13a9bbd4fbde3d
Date: Tue, 29 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745923793
