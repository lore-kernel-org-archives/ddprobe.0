Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF54A27B4E8
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760983793; cv=none; b=er1qcFuJi0agwQSNraW+d6TU1ISM2Wk4b6sCoAUg7Tc5BtJOU6/DtMX1gUdcenjUAe8X/HB2vC3FE3k8fGVu0TEy8/Dq7nIFF5tWXDJq8BM9HdqH6tM3OjauCYi1tYj2SP31F0gWE29smBRIVvV3cLqi4kvi/jhOt2h0elfr9mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760983793; c=relaxed/simple;
	bh=5MEg4Yz7jFGQd9uL80nSiHugHf7BTvoxFEzmPgqbAFs=;
	h=To:Subject:From:Message-Id:Date; b=rXJtPnob3raUzs2wO6nUFFmaa1ehTs0u7p5/UXiPLqq8hgDyUJ3WzH3zqVln6wFUpLO9f+PPRCoaQZiTWo3pqtoKQaVS4wkaSO2ONyJ4Kjtemj68i3MIiNaYE/DgXCNBQHnWc4KbX2tjAsaYfRZDpX2sh3CiGSXtuRSPcWI7wSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCiTPGdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCiTPGdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA72C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760983793;
	bh=5MEg4Yz7jFGQd9uL80nSiHugHf7BTvoxFEzmPgqbAFs=;
	h=To:Subject:From:Date:From;
	b=OCiTPGdwxpOo7mNUS2lkEggdYvzVoilxvheEaZ68KNmYC4I67brlbyrh4HaoQZ2fT
	 WJvySh24cG0Z9DeAQNooEdY26/iaZh+IAR8sIGrvbHr9rCac3Cdub82RLey+TPEMab
	 6klnwY/mhNegUD5cUdvCFaiGqk9wj3HQ23ls/h775SSzVTD6xB6NXUJhlgrD3Zvyle
	 8xlIz8vv15lsw5U9agUA66uSN5kam3MMG7c257vEW7XJweICmIsmVLQWE/wVIXf1LX
	 jDllLPh1ucJI+LeFCcHNy6oeiUYgqRc3SXGtQ/uU7NV54VME+1pB+eUiFGnuWt+bU1
	 TAmWngfYEP48Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB8CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098379358.28716.14876870060254266380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a820cab6520cf1f69523a5bb3cbc158ddf52f554a12b2fb2b7a385de70fd52ab
Date: Mon, 20 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760983793
