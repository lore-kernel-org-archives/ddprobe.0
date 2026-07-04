Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3B41A316E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783175314; cv=none; b=NzadtfMP2NVt+fi9YWu2mNI6Z0srePWml90dttCSQgRfM0gQ4os21G3Rs/InJR2FA3Hk8/dAMxjLDr9a24GGmQQCo/RCAPql7Yvz1zfhiIqGGueGDHOIzSqBUhemKtxvRk5Xf95SIFHxHqphcedU8misd5Vo6RvU+O5NT2FbXUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783175314; c=relaxed/simple;
	bh=CXSS7w0uSVb1KP+ORS2cZBGq/NS5MSQpkK8/QT2oFK0=;
	h=To:Subject:From:Message-Id:Date; b=fE/iCcWzQHOYojvXHsTH9FHjCYrdX9V5HVyuxZsmmAMFWpS9V18OGyZxYJStKoENZfQWdYKNIvkmZY9BKpTUtamyxCO9DnzztQx+5RDlfYB9ghXsOHBPYYKXZOzITQ7gPyrdDDgbkuxdw6wJ9o61JATYyHxkGakX6U9nnXjceic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXG4jY50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXG4jY50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6B6C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783175313;
	bh=CXSS7w0uSVb1KP+ORS2cZBGq/NS5MSQpkK8/QT2oFK0=;
	h=To:Subject:From:Date:From;
	b=NXG4jY50ZqfmU8TJIKTZwf/AHzP4k/APsCjESTIbBbfpj4abtQ7WtmuGvgPkjn9NK
	 Pd1nFM3jf7n1brUWHMmPsZQuolWwhl53Hk1SzDvmJYLB+5nT2XUO5o7trdzma7+IA8
	 vwhqkPweITCou8BrwSDkL+Cxh84AKP5BK3QVHgX6TNFQjwcfKqWzy8dDRUQi9sTzCW
	 06/aNSeOTvqQ7llKNSiqJkYzl0MfNODGmp/kBGDVxLRTLO8ZVQ1gBZcFXaOmBggavv
	 Qvhvap39JqovHfKCxqKUUX0e9TwiFYvXk7fRuJiuITR1UfggtW5x8ZOzNsn+XOU8UK
	 LuPBgZUYiAS3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE87C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317531368.16899.6459090720866168673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fba1cb84555fc1bb4100f4c2536c1af41418bd767e3720fd73fd72177f9390f
Date: Sat, 04 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783175313
