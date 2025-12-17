Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7A12C375E
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765993434; cv=none; b=pGTOAUbPmbUABRG735zqAe1svcFGhVjL8fuUsi0KtdmN1k5Tm2MFEvzg0bGV0TtRCAVeN0dsNmA2o+9h9TTPtO+JEVJM2g6nG8/uQSkWA/5X0oY5UsFrrgt6l0XH++74yqHrDJMXt20uQNHFbzVlKqzsa0Ti3/clFJJNlzZ2E1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765993434; c=relaxed/simple;
	bh=6iDf7UlIildI9mRnwIHG8Gwt6fQ0x3NszWKz2Nx6oeI=;
	h=To:Subject:From:Message-Id:Date; b=eOBqEtcp+lnOgr5WeDaf0pHD6dxOYUDmoX7IPHSiCuqqzlf9PGgiZT4o5oweeWQhDneQPyG3XTYZD9rBHMvNrebfeZQhBDtSJ4nDxxkej+v46GOnYUiny8PZ2jF8xRAxr0WLPmRKDXIPseSO56x0vUG51yVFnQ6n356yVCFUWf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsbwyqpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsbwyqpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2513C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765993433;
	bh=6iDf7UlIildI9mRnwIHG8Gwt6fQ0x3NszWKz2Nx6oeI=;
	h=To:Subject:From:Date:From;
	b=dsbwyqpJYmVa00ZMg7LXX2ChVE3Q0LHVTTxvDCjEQ2Vf40psYgun7eKi2dEphnERf
	 eZzEgGai62yEQpvbb4UkqLjG8LycTGiiG9wpnjNbs8o+qWihTvZY3vanIjqWGLKSao
	 cCKIqmjBfoUExDYdbIMX9yEvz8EZAwIfxy53v3ZKdfyRv9jvfytCy5G/Np6F6HS36A
	 UNFOi4pVj4Oj9BDeIlcbCjVfW6WoGNQKn6mrDunQq6got/O5VRabwWiRRXclhvMH9P
	 re57PQeeiD8z58SFKJl5gQmuqPK1FOplxN7tVtgJX4vQLY19oHWnrwoPEIuk/hL+7S
	 auaRhxi5mEHTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032ED65C7B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599343358.20593.13701660109835947159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35557c1bf427ed2b4adacd978d6cc5e1e00b2825f7be33bac9196eedebaae1d3
Date: Wed, 17 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765993433
