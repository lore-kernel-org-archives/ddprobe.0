Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224603E7164
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777312654; cv=none; b=sYMjuyI0rnGkGzs8PPpbwdr/Q28/HF1G/nt+NCPoDhWAAC8Kj1/Ac9QGpO+j80LOc/qEnHCEkpL3/PHVZQLqCkRIkjc+3V928WJextnZ7WNQeBhGoAIX31vhvBtDrJpicvcyRHunOoTZPJSlCV+ngR8U+4fUKCjMQvYTlYicRj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777312654; c=relaxed/simple;
	bh=APGx8kmgFvU9at+aRk8xCcFozKo1AIqEbTNvttqTYNQ=;
	h=To:Subject:From:Message-Id:Date; b=p30BAYYhShEFDG71zGlbw7bif2aSyPMIPjqVSh1TcpzJSKzVbSdDbcVHYaAL4lVqpbzWGIM03UBL+Vscxu6twnhH9AHIcbNE1eHzjB8Sf7wOwWCrxuqlSMj9PlYSaZFj9e2wXerJK/nPmxKpbUOOfuukNyMPiWRsgdz7Xse/4vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZw7vMEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZw7vMEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77E2C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777312653;
	bh=APGx8kmgFvU9at+aRk8xCcFozKo1AIqEbTNvttqTYNQ=;
	h=To:Subject:From:Date:From;
	b=SZw7vMEtOtVOEJi9Z/w/nWkj3LBCVq6bn20ekukh7+Bmr0QKozXkqeuz0cR+TaHEJ
	 q3YtTaUvrjycD1CRKE41gjemO2/Q0fDvgXohWITeRtxloghK2CZySIlMHUpHwcCDVi
	 dZwcuwwsZacH9PvEm8bHNc0WzjjbasXyUHKYsdoSbeK6hFpgFkuzgKEuAnsvTV37d4
	 Tm9o5Rk+JrgeXrnlL/Z5Z1yFW3aarJoObHK6RPxIiqg958YTw6xIXimoNbDR3koxMA
	 0cF1p6DEaM4565HeKD+9CI4sXj8U2mbuvXHX16/cPFcVSApIE3lqzDiF3hyuoc89Fk
	 pZHv8k6NtL24g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC43FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731265369.10318.9355514652659674098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bba86d2c56bc358f0673d1e67b8d6a6b42737ed4a2a58187ac83bf34a44b2d
Date: Mon, 27 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777312653
