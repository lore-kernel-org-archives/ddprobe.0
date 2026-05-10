Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2A936BCF2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778419233; cv=none; b=NKeedD/aa1UBbvA8p6SL3rT/oGasE8BzTmFlHuCqTUI/4aNU8xnQoitc+W9EaDvP6YCuMDtPybzSsNRJh8IJgnNCY+uu4mcgm+6Je9alAbTRjilyWry20BVi0f6rrA3PsqwkY2tF1MF/RLmjHpV87Iraep2H1QwA6b7QvlkGLXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778419233; c=relaxed/simple;
	bh=iAm2k4eF/xJg3aMUijliysFyc9QuKY/umbE7l+gvbII=;
	h=To:Subject:From:Message-Id:Date; b=WI9Bx9unYwft5aKwWYeMCPdBybtSa/ASYP9G+J+jZGJZjcJFolwVOlI0cMM7en9bG2MBtbb9BFIqifhFaQTJ7m9Xx6PPQUEjoDr5YbNHUhZNDKMMAPzeBHFlB2SceRaY9Vi8EvMEi0ah6og7EA4FU6mCieHhGea4Q4iFYjOT950=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhWfkuV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhWfkuV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD292C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778419233;
	bh=iAm2k4eF/xJg3aMUijliysFyc9QuKY/umbE7l+gvbII=;
	h=To:Subject:From:Date:From;
	b=mhWfkuV1Hrd+4ak2nBjNpS/xP3ekWjdY42jy7e2EAbOCjSF6ZTNwPlY1xXr91SvW6
	 jtlVnll7ByvieN6G4WUUHR9UfbEGhXLER5rYQEBQKNIHc9wqt+dGxyEgKFKLkERNZ/
	 hV5QhnxTUO6wOpET8YmAXh3FQJxWSrvslgAk/cXsf/kmnY7STCLRmoIYqH6zcfyZqq
	 dwAZEJCPFxy+ANmqDFSnfpSQbZKuDt4Zgq8d6d7tmqYe/YciTyFfv9mZ23VEK1g9TD
	 Ka6VcNjRNWQgEcoQjBacxY/ZY53ToQ1sVNV/k0cnEZAKCPtY9WyvC8WsB4QZz+67nE
	 G0WGEdxVb6nHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0925CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841923368.6186.4349199093505483125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e70f1fe466f38d7546bc3eea9404854f8bac02e72a8672ea87ed34323a2c9e
Date: Sun, 10 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778419233
