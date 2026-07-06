Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A2124CEEA
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783356514; cv=none; b=DKBdrHJcFrnsTSLKvcypywW9KMmA3TNL4w1PxgGpw7SvrgXGVCInaRibOHfAwmeCP+GnMOkgD5lDMve8O1DU0KOkRag2l0wqTof35sZPfcmJe5AvmdMQhrCuynzChPgFfOf1pqEnv3yYcF8mRmzpk1GhOVhTWpdv7/YKIpoc9z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783356514; c=relaxed/simple;
	bh=B0L9yisVRExFpok//EW0nB48q/tnYI9jJvCXoKCcnLA=;
	h=To:Subject:From:Message-Id:Date; b=CJD/s1gWA+nJsFCfIpDEswxpxClxaLMrUh8UkhBkqNhEMEd70Bh1aaffGR1/b1vTAk+T1gFwmisW0EnnbGADZvZiqviPEyyN4pqXnHeLlYczExo9I8eyBFw+4FkCvD70BK8YQd7dLoM7Kt71vF1N4RJBasAg+m2bgWNjpK0ohdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzwEqKm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzwEqKm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F9DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783356513;
	bh=B0L9yisVRExFpok//EW0nB48q/tnYI9jJvCXoKCcnLA=;
	h=To:Subject:From:Date:From;
	b=AzwEqKm2etyTtsu2J7uCGbZwveo3V4/qajbNJR5iuyzIJRHVXG2zGgNxmjURNDJBk
	 oSkYb7h36HGzetoIVoDzi/MR6pc9v0P42TnmsvIiaIDonigdq2noxa0wrb5lw0KLB/
	 SjKR7aPRT+0Di8N0eyRQ8Xyzpl7hgS8UL+Wig7ARVDws7l+npsk4vWukkxgx01VDc2
	 Ex8S+7aE//3ZmbmMBqLntNnidIHVp8Tht9VS0Ig50xe6a8SPYwXXu4RDc3eC54HHBV
	 PPXBkXjwqVzIWlUkGTYkrRL9wVb1Xe5R/uUbTikurbNHpG8T6VizZu6i2rSfNggPMs
	 VeHbok3Kp3uVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB41C44500
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335651369.12917.11628004172780545802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d9bd63966f8bdd304f33b105266791d75fcf5313b94d73cc25d639a8d6ffc17
Date: Mon, 06 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783356513
