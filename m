Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284E0425CE0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778068654; cv=none; b=kpcQbJxxhVpaIT5XvIE14inWcdfEqQxhEzdWkH+m2eLb9xQFH/uTtGpx2z/PMx9yHXeepDrvkCnbhhdWC0w2Hblkvz2o1yTxjHZdm1L94M5MxQSi3aax3/Iig/3AlkZAm9w7abm+nKT6DH4gH6vSG12yx1dpWAWFx2C/amXbrl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778068654; c=relaxed/simple;
	bh=1cTmm9G/SUlRnTETgmUHYVSc66CAgDUDR5NkzXQ4yiQ=;
	h=To:Subject:From:Message-Id:Date; b=DXGagZ/xiH/RXp8s0ZjKiIgC3RhXT/Z79LBPQSxqLMLXFLSj0tbnA/+2iX/Wy4xc7+LCjIJnc5QgvWkecqYntJEs+dEvg04sE54OlEZMSGuKRgKpj8US4cUaaNLT3bW8rcqYUcPFab1txNvIc5u0H+Ng34DkcJw5MJmav8qX2QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bqi0Qxkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bqi0Qxkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D48C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778068653;
	bh=1cTmm9G/SUlRnTETgmUHYVSc66CAgDUDR5NkzXQ4yiQ=;
	h=To:Subject:From:Date:From;
	b=Bqi0QxkxM0jFuDVV9OyBIisIe2r+49W6zVnCsJ/3NjYyK3zwcbDezrsOZGUvTqZUO
	 n3fhgWlOpoXgrxVvGn7Q4vyWReJV5yl3VO4E3bijrRrDXQVEZ1DpvtA9wYDq/ONoU5
	 yO15ZSYxIjX3TGl6xZoeDdyJHRwh9xB6HyqBlpOEuFT+vxryPskPbU0HtLyZ7WmZmE
	 L0Ec+7YaOrJ+5tohn6ef0EB34V5448ssoKkpUR+ewyqvzPnClOF8+8G0955fLYRcJk
	 t7PudRbc6NgeCRbJ25tqpNd+1Kismy58SZaqcXUJ5MaKxhbMvcqeAE6glePBRqVo7L
	 LOuGhsDf9FZUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE82CD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806865369.6492.9959915182218912326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c93002450da053612fece5438e789ef613f9248ac162d661f9b7f21020e0a4e
Date: Wed, 06 May 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778068653
