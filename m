Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5613D13DDB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727817354; cv=none; b=NFLLZ4/znDB3Bk1owYI2dl8KwWiV+OxWA/jVt6UiGGYaWOXUaS2YKfjb1K5wRlI0M0YvzQPvdLKIL1CtyJcVH3B7tnwOQa6cjIvgP+x22Bem/ptUPmuontZxVUxlEQgM69WTpzIBaC3vGxUNAS6+wkjB75zzMYREQTEb+q5Isqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727817354; c=relaxed/simple;
	bh=8sajFf9gC4tQasitYeE149wHGT8dtVmzWxIFP4/WR1c=;
	h=To:Subject:From:Message-Id:Date; b=FmYmkpFmxZnTmANh05kDufzxS8TuHUJpetmBXGqKX/JnsdbEI32RvJYBkt6Ql3NhAVg/ggji/imXy8+oq4zHyiLrzOtkkkQL+arOW0ZdV0aJRpcKVXKUhj/2sLUX/55rVMxw5D/DqqlIvYkbhlqVITMA3rZoisTIdYzJxkuHRzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzmHyEmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzmHyEmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC468C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727817354;
	bh=8sajFf9gC4tQasitYeE149wHGT8dtVmzWxIFP4/WR1c=;
	h=To:Subject:From:Date:From;
	b=rzmHyEmSnm+6nYjP4gDk3lA4gEBMD1uIW/VqnSxWxPpGtTXJpRJLcL7q5kpuit9ev
	 qm04r5qV/hkus8Z6tLFHsCYws6cX/JNhdIh07E/j34H55uUTHH5CZ0Ool70iWyL5cE
	 LH9UUX5pCTjWVk/Gwwdv2y6uE8wcUWnVZHN6gKoMxKna7aoLLE7xVyh3NnHX3iMsfP
	 prpa8ind5r0vj6cIJ+dfUkrdmpRTEAycmn6pKwtOew6gBylVoJB1fk0fEJv1ZRDzIP
	 QXjd0sTpZR44OLUUWjwSxGt77wrN80CgT2YFTHyRiZn8K3h72kAKeCv3foZZte7AfF
	 FxeKkCY43ohtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E2DCF3187
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781735370.24297.4989221223679680292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20fe298aaba62e26cba8512a44469fce97d929078634aa2ee2e7a14e40141df6
Date: Tue, 01 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727817353
