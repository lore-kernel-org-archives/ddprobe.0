Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280D5625
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771355094; cv=none; b=Woon70Mq+zXvg+9e6tb1MG8jLsMMn7zizatj+HxxafzCUuJTAAiwQnU1FbshWGOwQEpbpgNjczm67QwOXEqL+nWqFz8JyN51uOa+1OKU0U63iOCPWQJx8uQDiyEvl7q1J44Q5D12R5Y11YCqXgNaz18eVyCTyI3t6DHAn9lQJSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771355094; c=relaxed/simple;
	bh=TFVMmR+6zzJhSxVrATWKjuWZ/BlvGm7MYPYWzPHRJmE=;
	h=To:Subject:From:Message-Id:Date; b=T+0dtRLtZaED2tvUnPo5inBn+Rfoou6rBXs5J+kouV7AX2vXnU4pH5fnFoku1asqBE0bflnq2jwBl+TrvP+DK5v8a6YmzrIyIgna/XP+HlDAI/9TCmiyu7xMScI16uACeyCiXVlDEfBYuElYtykGdgHkgJc9cxNMrm8rjmXa0dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onO50NWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onO50NWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55E9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771355093;
	bh=TFVMmR+6zzJhSxVrATWKjuWZ/BlvGm7MYPYWzPHRJmE=;
	h=To:Subject:From:Date:From;
	b=onO50NWGFdi4dLM8Qces9NsyM9KM/XEzajztgQaRSU7cdso46MP3ywSvM9qvO8Tfp
	 mCgXsdac+Du21rQteFVmk68/zimlpjMPIgJPjXy/Vv+PohHzApuqtnNtj3p6HGYF6X
	 FN3txIs1ikkPR3D52IxxlGvodMwlb8P4/bdNeiDnC/T3TJIA5JPAsfsq2uWooyDUns
	 yapw4COcqK4/laNXfJn4izTr+diHKyp170mrjDoAY9OZP5aFFq0r33K+OkLn2fxnGG
	 Xq9Qz9+y+r58mUFTNe3WjZkjlAVUbYvftRZ76a2u4ZlrlYSK4P3Yx+4hvg5UhGE3N1
	 7vUQUC1COztUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E602E9A037
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135509360.5210.4108994422069822978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ad37748635aa2d2f85f668fead5b9998f0ef1be6a8c9a84f536cc5b678da22
Date: Tue, 17 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771355093
