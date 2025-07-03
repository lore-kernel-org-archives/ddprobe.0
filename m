Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287D129B77B
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751528994; cv=none; b=JD8xo4c1uvs0ffs2r94FtH9iZl3e0ZyXprZKlQtcI+mBNYiS/Zm/9mLXX1zt7hjNVqrVX9MXGvlH9v3AKNsZQC9H1ccxtKQpKeuP1nP55jFOGDfG4IwBSI++1YiHHVQ/LvcNG+mu3LEj809n+KUcnUDI7OyhHitzkrFZjKN3yD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751528994; c=relaxed/simple;
	bh=t0mpwAYWVbqHkmZAK6r35lz8572WD2kFtwaTB3ER8/Y=;
	h=To:Subject:From:Message-Id:Date; b=ncKHorGcdjOXTpjZPgV0hCzQHyU97usRxuggHS7pCLGjsRlUzpzAubeQTAbpLr+FXdhHInGgbG+VZUZDI2psPEj8cDUFOoC50d0ElI6EJ+NwyT43oy/vdrGeo/SujGasVpK9wgqmJiztSVp4pHKVKD3UnesjnlNq4RDh8S9tPp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPXzclNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPXzclNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD81CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751528993;
	bh=t0mpwAYWVbqHkmZAK6r35lz8572WD2kFtwaTB3ER8/Y=;
	h=To:Subject:From:Date:From;
	b=DPXzclNQ2ZbpDFXch0P/7GEYQ9B1WOVAfUoZJ+ET0qiAmmr5TPLA6lSRStBrMvrnA
	 txJ8hqQkYOVKM0NO8GHkdjbriRX8eLhweNUKOxsqtkSyoANMhoxZnlq8cxmUxuFPWd
	 vncT/QCmZoAUJTzX+kBmMAcYjZLlWB7cXzE0aZSlkpBZhaQJ+t8/YJVUyEWfyWkay0
	 o4BvQmBRM6UUIeK1fzYQGQ57zCoaF4cstwLYzfNuH81wV8T/2K+Kq1WUuw3+nzI4B1
	 evoyArTZjJD9iGt2A5O3mZK/+uQLUs8HdVq1ib9tbALN2B3VJ11j8CyvspDtz5/2r7
	 jvg7eGSmGdaiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCB3C83F04
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152899362.24444.7676005018319082809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df522c59bb83f10eb4c3d4fa2acb7d094a0defe19d7d23451419a943d50e819
Date: Thu, 03 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751528993
