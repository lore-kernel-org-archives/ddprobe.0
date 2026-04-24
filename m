Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FA919343E
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777019254; cv=none; b=poDl+3c1WXLx1XZbLb7eYdakFL9187K5yBPun17BpczcLuVVIoKZXn7GorJfp567zf7nAuUd4cv6w7Fm58uHgU1AqR/KuZxHfMrNHkZe37RZQhyf25PeScRjrCrELps8tusKeqUujegfFiUroH+3gPgKQwxhdIMB145uSX5zCTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777019254; c=relaxed/simple;
	bh=yTGMNU2himI+Xug2E85dQ5iaVgTs9N7PNiVCsjulv3c=;
	h=To:Subject:From:Message-Id:Date; b=gUaOEFLdUe+CzpzZ/EZGeieGo1JwHcQtgPjDv/aOjF7rSK296r1VPtut7ZkIPLxs6xZoo0P2O6Wl2goEuSwrDIhCEINhwtc2k89j9vu0a+G4/WfrJkPEdMbgIa+gNE7WD8eM6CQDq4xcSK2JRVS7lmMBgJgo9jdq4wofpA04mNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPvrQo5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPvrQo5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A76C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777019253;
	bh=yTGMNU2himI+Xug2E85dQ5iaVgTs9N7PNiVCsjulv3c=;
	h=To:Subject:From:Date:From;
	b=LPvrQo5dqTTQCWKG+0E2fXkfstj9eAxZ5URQjPSKQn85VgO2XS2n03wIND5ZceVfN
	 p3eTw5igEn36KbQUnn9P62AZVQ/y9gAf5RgmNe2649LU6HWA/Fa/SePG8Ikwcc2eW6
	 /9L1BFjLmvB+1KhEr5GkeYfNV0pxQJxZ9MaCbb5AZNGjzLRktYFXFAOu2EWzqDAgY0
	 6ZLlpxhGNGuRUJ9K0Vj4cCfkZiReQaNGoiT8VpBAlj/DN3eqp41usoGr9AKDBJSYiC
	 84mqUUBrAuhxw9s9f5VVgdh4WwbR7xnKnsetqqVmlUnxQWD4TEvoO975KIb7e+fM0D
	 y4bRQQgB+Buow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E69FB44CB
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701925368.28135.14132030728583092450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1c6ba254a693db0ff0f545b666eb233b5e6c81df1c113143de332a01a98f5e
Date: Fri, 24 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777019253
