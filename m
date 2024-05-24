Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7387950263
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716578603; cv=none; b=um5O9UUtHStMFOcz5GG/I+f/g+SOqW03xYc+Yq9gHjIsb3Kvi4cYhyDPy2m16HdhNgXDhf8yH2CMAUF8UdLYisvbVXi2YQxQMDk3lk23+PY0Dyedp0qa9UXbFa1yPtUoFMH+dxbf3fHFUSrA4NWOoQB5+ec1+0pcFmpqigt2XbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716578603; c=relaxed/simple;
	bh=QjUpNyZAPnVbSj89HUgIXjRyaX3rDEZ7O95Sc8TCf4k=;
	h=To:Subject:From:Message-Id:Date; b=YrS0cNJUxXxFC39DEvs1pVMTvsy4xpSfauDwYsw2QPZgE+DltgkuPF81DOG7qcZPI3OK7mSMvBsBeKZFA08pQSangAsMz4ggnjW55hiHwlpD2M8BzlXrjG4Qn3uTmRiRz90ezVweY/SaeSBc9U0mP4N+Vsrs+Qyne08NTxbirV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRhevShn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRhevShn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02A9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716578602;
	bh=QjUpNyZAPnVbSj89HUgIXjRyaX3rDEZ7O95Sc8TCf4k=;
	h=To:Subject:From:Date:From;
	b=hRhevShnnM3YLjVlZ0XiqCO/nryKibuDFAx40l6EGKMFSKyRI6XljOiat6CwlEsLa
	 XmcAkNzIgrDABwo6xL7uDM5RbIwfnLPWV9d+UGbFVIr87MkMtDQ4ABmb+pa/4c68iX
	 F1uvTK+7gui+ANbQknpBs5b+NomM/sRe2GEMUvXGna8ip5wRXfAGHSMFVu+scaIBXA
	 tHkIauDBM+KSfsV8h36ZqeumGJbP6iVF1FFew+Nc6A4uYX8wXwjSundyV7X1PigNZE
	 bMQra1psraXeVbp5IITS7hWTbu/Trnmw7WyvnRoNSUstBG8AQ8DV8YkHjuSi06LTvH
	 hhJ/IJOqzbThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42C1C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 19:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171657860279.18771.17663662703222004968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193938521c09275e79c21dfd00877b1f1d5c6bff74136334725225bb62bf5bf2
Date: Fri, 24 May 2024 19:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716578602
