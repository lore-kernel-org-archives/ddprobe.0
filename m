Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F91C1F5821
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774235694; cv=none; b=ZZMeD+VewdOCXDjcvmZbyAfNVCjZW+wN2AYtkoTDGoTu7ZYp1CJ4ihCb57oukfgIsDRd/2DsUqZiBuU8VAjp34YQj0/smMKwdUvBAdV+G+IjV9X0mgEJs/gPrF24mYEET6yOF11z6pvAYRrbySOlwOcZLdwhs1KQDPVmwHXUHWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774235694; c=relaxed/simple;
	bh=nRJLmHGS9vOwkAFmljA9O4hhARfSJfFYQN7l0yDt0vQ=;
	h=To:Subject:From:Message-Id:Date; b=nXpmqaWHcCdZ1hQ2AsC9cbj4wqVCzx0wfgP3ejEK0UZea1A3+EfgPL+LCAq0n7+62NwwkeoLrCmrqPsDYRhj0SaPZ2Rs2bno3QQO8dNa/b8n4AfLAbOdG1XL8sihotl6jja1UJRAlRD7KAANqi7E2N3z/WfRkNCNvRnFVeYDY6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIKPOVIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIKPOVIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1EEC19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774235693;
	bh=nRJLmHGS9vOwkAFmljA9O4hhARfSJfFYQN7l0yDt0vQ=;
	h=To:Subject:From:Date:From;
	b=cIKPOVImi7IGkXO8nvNpGPKvDEOLZB3EGExOVhxeoFSAm0FZpSCsfuFyJ/dcppbpR
	 sfPk3wRjmCt0IKuyVlCvk+eXbIYhDALhn/yVwKVyHHg+0VQCF/BnwhrMSgHI3uIZKX
	 zVhc7Xp2x51wAI2lmJJoXzdU2Kf/pBMlTDPgIn00/xdKQfGO15imxJiDTJmEvUKUqc
	 ug8lwCYiB1sxjh71mlSvxgW+z4XM9SOqH2uxa6VScKgAEt9/1mywF1mIwqXdqzfVAL
	 lUJ+u/nKNRR1oL+uyiGTkRj0m6+HAPN5Rb4wJxfbtRFT4yKY105wc9OPMR9tCfxMWV
	 bi7UnJbZPNMaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A7DD58CC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423569360.31669.12744339377648741763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6339166b2bde7b730dc6dc7059f75eeae16dfef9332e816bc2563135de7d082
Date: Mon, 23 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774235693
