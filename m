Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0232FC882
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763571714; cv=none; b=Vft8uq+ZSiAvTdcr1W3QDYai0JErntSVt6ACKwxmGySVRQPOsk+m0R4IIXOq8Hj1ngpbl4LTO6LVkAOsFCpF906Nnqt9KhYzaRL8dw2hhzrUHPSoSytR9ZmkfPyBbXrN6y+rKSRu9eCyquqXjwj5mxY9TUPsI6Li+43Uc78zFq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763571714; c=relaxed/simple;
	bh=2Swdx5eJ+PNpYKQ8b3YstffmjJEuw2/i1vSAALZq6hc=;
	h=To:Subject:From:Message-Id:Date; b=uP/NTTUaQrlzyxRvCpoJcJIpjCqCNU+0VPtayrsMJjLpsLh3Y2IhCZeIDIlfZNNzzTJelZnH2UtD9kcl3YokZT2tCC7G8iSyB1CqPfsarc8nzL3mzIA12OQb8b46ZM/47pr/oyZR8uD8k9boi1l59arwjkpyiLVraRpm6Dw5GVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUZK9GLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUZK9GLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95EBC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763571713;
	bh=2Swdx5eJ+PNpYKQ8b3YstffmjJEuw2/i1vSAALZq6hc=;
	h=To:Subject:From:Date:From;
	b=IUZK9GLd2wv5ijMHmWdAVIgwMClqBiGvUmVAVaEE8IoTIHYzoKMMiaO+ZiOU+UFLp
	 KOY2yzotBklXPzhj9sFvndIjutJ2O6nFI20XAvts6l8uP1IdkRU92lvHpDDifbSEN0
	 yC7IJukXn0RLdqzij10SOCvb/sOTQrz3a4xZ+bq9E+hkSaRX03C/jJ5+icPNl50Zxu
	 8pkjml5C/4STE0JkbbVs7bwdCVfd09XG82fgSpzdN/ioaT9y7HAnF46iIiZWXdnOsy
	 eg/r8ThrNCTqPS5HBEushaRt0w0ycPGkE8Mw5B6CcPx02uL2uV8hCGqORGh7anZuZe
	 5hjK4baB2kslA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C8DCF396B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357171359.3562.3656202025120103587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e364d7d51b806c5e162cd50e2f42f6eda97c320e52971ba661d3201e5c39d6b2
Date: Wed, 19 Nov 2025 17:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763571713
