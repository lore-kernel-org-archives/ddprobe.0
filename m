Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106EC30216D
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761649194; cv=none; b=ig0bAH8t9BdxsifjhfqM6TAxwG7ZlRPMwHH08V1YGJsaowXY7bGeEY9OSEtRdgYK24BZT0V0uRNo59+1lTbmbz960GAegSTDCenzAebkLnDAEBp3sjCyIjPE4mdHDUMllilWisqAC958QTDKT07AhBi7ziUM9dH+9KZNHOkDrSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761649194; c=relaxed/simple;
	bh=Q83qPRciAczNgrPJBEIvv2Y6bwWCjXnlvQ1jJZtoG6w=;
	h=To:Subject:From:Message-Id:Date; b=Q2NaizJTiSf+8/TASVrd2NslSBJ5xWb2cyhEIXR7CG3jywWQPqIZsChTR6K1w5KKU70u+yuhREHkKikhq+Hm9FOO8UjsmeSDghadRV5OXVZQgs+yOsRJR3NdseljWlAI6hRpsjvY00tph0yUjEtpZQSZzVREl8c8ONVwa9TbjdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2Sdph3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2Sdph3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5ECC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761649193;
	bh=Q83qPRciAczNgrPJBEIvv2Y6bwWCjXnlvQ1jJZtoG6w=;
	h=To:Subject:From:Date:From;
	b=V2Sdph3qVOPh2SSWv08F51GGFwx/UtmFshU+8cYZRe7Li1sskFKVAW76A92xGDL0K
	 ZDac23YCJW4eE0CFdLsR1rxErIDlvnMP2D1BUP4Nxlp5/bTqU/GQwaGOD0sXKXva9E
	 wqdUw3gPGASGBcH2BqW0cAdTfJb2zAMGK8CrpdNOMWfAif3pR2Ls7otaeVChz5sIG3
	 i3dEfQFPUeO0DtIdhayi29Tjc8em13deAEuATzGK6/JPCZW9pWWOljwfvuWgHmLIYW
	 UO/+4Al4h/2RrnOUoh/7L3DXO3+w2nPL9OtnBmfAMtfGizVZJ9rOUKUiNmNwBUOcyU
	 dE3tcAjUcUuPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F392CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164919357.31410.8951827723122368582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da334cd2d84ae2ba2d77bc431114947fbdd6a12ca2cf29eebe069362fcc434a1
Date: Tue, 28 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761649193
