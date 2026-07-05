Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F89264612
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783279114; cv=none; b=mLtc9WNEb3YL8yc5d+P/owalLO7faA4DMxs7UfZTRKpjuzfm3jLk4Z5FAG3XysjtYsjOWLxlefBwqHXbAYxX1cmvJKNK5WnJCVzg2lMx+EoL4dmH0roKfyIvAfpDKMmZhCosUziiFCFxIogRuYpbRiQH12IGxJb1Qcxtj5kIqjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783279114; c=relaxed/simple;
	bh=j3t0jtxAkejQJ3lz4p20fDmRXzB01NSOmlqm4cEDkhc=;
	h=To:Subject:From:Message-Id:Date; b=B8QB5aAeKQdKT5TbfQoPhimYNed4wBUzPAarNlxo1CRK0EAfb86ZaEm5AinizpagQh4h7TNM5SISUZbCLv0HFxZkTsHVf2Fkxxw4/exq+1SRK+WsG5ZVuOcTJv26VXniyNhe8AyqTZTBGxAut/D7uMtqPYU4j701TbS+BNXxnXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpopepwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpopepwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C07C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783279113;
	bh=j3t0jtxAkejQJ3lz4p20fDmRXzB01NSOmlqm4cEDkhc=;
	h=To:Subject:From:Date:From;
	b=bpopepwmHCCK0b/VMXVZY8N0rdUMcMH0nGl/gnz++ZeMnK6CMsS2uL0rYfxArdZ/p
	 d/kjZFxRAPo8/i6ywhUXCtJNbUP4+LpnXUCg4ux+RPJ//gUsJUQuTASIuZN4MbN81Z
	 Q2bLtpFTsUEC9XNtiAMJZx03W45AyLBMtOFXHEuBFdSf/J6UycE4htaRP2obkYx1aC
	 tQ8bJZZrMjgafdkiXDh4tvEju/brcPM4S/DKXYECMho/XTLDWRRQqeSHcOuJILef0o
	 1WGRABUww4R9zaTH4gdfpcY7+iUgX+ezQHtj3uJFHilvzoViiyTzm9QkuVTttfXW3b
	 AxP/Xm8xf1HeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF53AC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327911368.5189.14811009635545270147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f167f0ddb8e730ed2a8177d4809689a6a2121e5bfa576b389eb86750a527ea65
Date: Sun, 05 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783279113
