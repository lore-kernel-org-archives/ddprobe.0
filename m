Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF9D33A6E1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763645514; cv=none; b=pW5dKH7xNwM7bqRBbGUcsWWA3LEXYFIqKdOOEX1EBjEIdPtlncASO06LctY8bw3W3YPG/HX1Hp5ndx4lqavd3BHMY7hhZP6GemEpRqq0CHH54rVZtSvyV/B1N1DhDuch5BBHQgY3Coo5GST/5Zcfd91wme6EKXlYSMPmFS4at3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763645514; c=relaxed/simple;
	bh=idB5rFI5aHrbLEUMezu3aq+BLlRY6ccRXqVuWXYm6II=;
	h=To:Subject:From:Message-Id:Date; b=QwMBru8gfWwzHuALlKuVKXEHbxT9RZupNt0vKnXbFGvmC35FRmguckoDIo0w7PmNbPEo5YeH6ECXcnNpbrWJ3e4B/GBhR9dXfJtHEyf43ChJ5LoFW1cfrokpRv27EEt2uj7CJfXTaR6RdLcL1i9W8FtcurKwAoo19fhU2/aodRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xtf+7PSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xtf+7PSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65DEC113D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763645513;
	bh=idB5rFI5aHrbLEUMezu3aq+BLlRY6ccRXqVuWXYm6II=;
	h=To:Subject:From:Date:From;
	b=Xtf+7PSOlsaHYjnllwVqHrlKVOcEe3mRVq90ip3SaS6yo0/Afu4PamboRWZL1jYLO
	 FlE+Ur4glwGnPXxdh+n0QWttgzFYvV5VjfEJCYPqWhjL7lBy2bp7YB9amwBSS7Y0X/
	 HE+5v4I9xHGnS6GR7fyPUExYaY/UZnB5xgVRqU55LNSgBtAowkgrbcgMkYYfGtCa77
	 FryI1SgRqPYc9Cs+ok6qhbOkvckKdrLotATKl1QeCaANO6XfAFg/dAjkxyXOWpnyw0
	 WDZxpCkHDLj5os3upEIwC1H+UgDrOjQN2NoCZHX9ApXjOiQ3Ovhqg85tRchV3vDAIW
	 N3K8B95XVkbrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939DFCF8856
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 13:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364551359.28156.8915658406381531917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4968d813a74ad86cec6d22f813c36013284b946ccbc26f98fc405235625804
Date: Thu, 20 Nov 2025 13:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763645513
