Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB971109
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718069303; cv=none; b=XGOyJnc+ETUy1paFDzttp78+FpbliENv01a50PAxUGNvNb++ROIJol2qP3m9610se+M8Nc54iT7wIVXhohnyHPxFb9xnZSEHNrONf4tO9z3kTstV+adR/qZHUh4scu2OB9ipiwRJyvxwHR9PFZCPWj/1VlwWBt6Y7g9htanmx1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718069303; c=relaxed/simple;
	bh=YmArixydv70bNR4ow0ofjtry3mU1ZOf+yZb4zddB/AI=;
	h=To:Subject:From:Message-Id:Date; b=l+/hor8ccNFegxL/dP+sdQrQDBWL0C5xUudrCqvGHLSdd3UmCRR1Sw0fEs1icljNV03/EEfqqxz0zlDSvPVcWjtVTGrmHu/W7ANuM8oDqH0mHnMbASkLTAEwVNOz4dmwV3GqrOoUR4YGIwiTJsHRQvdFWL8fE6b2AujWEcydKcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrAhlpgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrAhlpgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2644C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718069302;
	bh=YmArixydv70bNR4ow0ofjtry3mU1ZOf+yZb4zddB/AI=;
	h=To:Subject:From:Date:From;
	b=rrAhlpgIDFbOOhTVoTqc5D7CWyj+Ux5x66lUX8c/kt5pqaX5PqpuACPJtmZVQddn5
	 psclMWEU63Cduq3p6Bk46Kc7sJSJTJTfAtQXa6p/5j8wSd6MDAGpR9y0J+YU5uUQ7h
	 hl5y4lrSdpqBayAbrLKuKWVUSWCJfLzT2/SDl0TNkftR/49uUEw1+pNZIrUpuX1fOF
	 3Gzvyzd1PVp/ZaKTJ7r3iOU1v26y1Z/jqHM6bCzH7vssXVKbjp0WtrCjBYPobm+SjE
	 4NKNy1J9PeVaG9NE7OC8UwnALwVdGEB/fTRFLMVZzr3eqjLgE8nT+YkQVtWW2lMj3k
	 zFqJiVgEX9VWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00D4C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 01:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806930277.29128.4334933879211571766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1a3ab6213b74fcd40dc1f7ccc47fc2dfaf819e89afa30be7268af35024d7d6
Date: Tue, 11 Jun 2024 01:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718069302
