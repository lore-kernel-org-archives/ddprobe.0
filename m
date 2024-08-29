Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1E4335C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724963154; cv=none; b=cvtSC6gzfcefn6Dqn+NHm0Rv0CMzKDX82Mz4NaBjwGz/FmWiRhwPBNJA4jaew0TF1aGdcAqIwP8l31ZIpQriqfrxyZFqQbdcaRYsr93QNykF0IQRQxD3wqTpavN85RKbpRKnKKLQZmK453JqfRbiLoVX2jYt805hNct0GErK9Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724963154; c=relaxed/simple;
	bh=wh+wUZ9zhEczb4pSx0pMaLUR06BBleSBf0ZxfV5G0E0=;
	h=To:Subject:From:Message-Id:Date; b=AI/J6nwBkmiew0MATucGHbcLBotnv5snP2sKUu2HkrA2iFGbCB6mRC7IYfdaZP3tNfBLxbL+876YcE+NC+Rz7GY5Im/2tFL/EHzULMsaelAYietOtNwrwVlQYk+aN8CF7UBhzh5g1bu2KEqrbeRYnKo2/J0WJAHV+PFSRuii2U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1+iYBpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1+iYBpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB3AC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724963153;
	bh=wh+wUZ9zhEczb4pSx0pMaLUR06BBleSBf0ZxfV5G0E0=;
	h=To:Subject:From:Date:From;
	b=f1+iYBpXV/IYyOVJRb6zqHDQl5HIRpxrZ59WCY4HNsUYU+pY/1CG2ObDvLnZACXbh
	 4uE7V9EP1nQ6sP4yC4M1OfTVa5k5amcV1NbI6Dgjj4E0ynivdX2P9wWnN1sQorOAbk
	 toioqW+SJJQ/7Vb7jnpniJb6CGVnu3n19P3P9NjEGqhsvoeSYKoaBN9LeCeOGt8+Sj
	 9phIxX0xOsz+uNn+DEUBGwIe93tXl/dIyAow1VHPnAa/UcTXQzcoVNIV8T62C7VAy/
	 BGENWooRHo5feBlbxeHc8HbIf4mY55b9RwQr9VMVnyZSbCMyfwDzCh59YdzkAsGpgY
	 +1Huir5b1RAIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980A9C87FD2
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172496315359.1366.6452424303231162008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54427c5f2e27ed3a937b5bd73a64672a99bd54b63ac5f12b330dd4c0e28218c6
Date: Thu, 29 Aug 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724963153
