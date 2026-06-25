Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E02C38B7BD
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782398254; cv=none; b=u4UnMw6yHXCXD9qmQXVFK5lCnGdAC53MMyN1n8lz7YwLZQVRSHlr8SODxMK5fW+FG1gqsl7IokdywBNlSXJy9kpZCWq73+QqJviRlwI7mkY4ygjsg0kaw6e/1WscfsS1mpwQb09YV6vpaT1MHuQNqef/j80hsueYF6s1jUKw+is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782398254; c=relaxed/simple;
	bh=5uFJBPinv8t9M23UBsaj4qoGHKRb6KV3ahm+iuAbygw=;
	h=To:Subject:From:Message-Id:Date; b=ALjwmG9/C70TX80X6BShwpMTnwkc4sgH0EGjdfWcKAXJ+BBnBUhPskTMx0DgFTJ0nNot32dsYj2mbEGoNrcrQikDkBAAdHJYyLQn8I/mFWt/ylWBiTOMfBGpJKrytbn6Cjp2wjbKXJ3N0fKTqpMsqQiJl+wsEwxLtt5w13tYqk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0gBIYRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0gBIYRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8D2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782398253;
	bh=5uFJBPinv8t9M23UBsaj4qoGHKRb6KV3ahm+iuAbygw=;
	h=To:Subject:From:Date:From;
	b=r0gBIYRMRtuQycBvl+kRZOmzN/Y7Ukvm5ayRNPOno/lZomk4eikIQpQpqupiB3h0Y
	 z+qmv8R35mt70YELkgh1uVj4Ue4117K2EsSKhmbIBtevzWJUYLhHgUTrwmQIy+zL2L
	 cEfaWmxku703Ly5pW33dwo7O4WUhUg2fAi9YCJsULSTIz5h4ydrmR9czxYvrBH/S6r
	 ePy3rmkQiac2QbigAuNJtSjXjKODdGTI2SNxc3D2asiNxu9YC+SN6Le+P9lYTWfcqk
	 25mZO0IQY1c4Hr0B0NA8BA3DbNO6rVR4rs952B8XCl6vyFguGTy1v1t2zCa/xCQCPR
	 g6ATzccE3hHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA87ACDE001
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239825374.32010.11788071605660302497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b1d87c8aaa190c6f3558a07858744374c23769787044cd10e9d99bfd96fcba
Date: Thu, 25 Jun 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782398253
