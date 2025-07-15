Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A32273D7E
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752611394; cv=none; b=Z2zctTvxM8JeHxCCPKmLtmYR4Rvo6K18tt6LQFaKGVRunwtq/DHGGvUH4tkLu06zpmfzPvEOdzU8/Acoux+762vUE5ekzeCi+tO4QeEHeJTbTip3hnAmdTyiMJx28dTJHIAg4asoyJhZ4yxbgVtWEmsU1EeFsXuyvys24CBID9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752611394; c=relaxed/simple;
	bh=Dy3caWOvsZUWGKoYsz6qGw1ZZomQj4mB9JsOsz/TOJc=;
	h=To:Subject:From:Message-Id:Date; b=Fjv0m6PSdyaiQZiyAvAejnOMZYu1DZ14g/Y30CYQ77IQhErS+du/bYLN+3MR7UYXxxKDqqgCezcKEdZQztLnm5gT/uQrNBwEZtdo/UWYlVzcJuaRAgbee4+E1d9tw2ec+QrCGZW9X04AtrPRpWrBFhCVSREl6E+h/32LTt5OdIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYp6VU7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYp6VU7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBD0C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752611393;
	bh=Dy3caWOvsZUWGKoYsz6qGw1ZZomQj4mB9JsOsz/TOJc=;
	h=To:Subject:From:Date:From;
	b=SYp6VU7WO0Of2C/O7/i/dB5imsVC7I6HKjJJqITO6bzUIRR0OmobY+UwsmvKjnb8O
	 OzEhHTyhEoE1w8vYCxXPOYSUSudOhjMTYQW8D2/Scgb8J3m+OOlwxm9CFqo51AejMX
	 TJQX3li1mRQnONFLX57gxNIZg2VewI3BX3NJi1mwPIpBpRJta3noI/jsTlG2Nr/NDz
	 t3Nd7dAwJ2u7aJPgpPxYdhmYXGBGQiMtfUujASS8BV6FGOE8+NZy4b94i9pNQIUzbp
	 QqxdGmcT1eGFOAc2lyZLDYtBVcYnZuXyy5JaG8+UK0Vr8Pn+xNtMOCc10TpPhwder3
	 rDDTehnZ5vsLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EB4C83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261139361.1514.9429012084731853137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf74b36dd9a7383e4336c6f6526ba590e4688897067e7c2574197f5b3e145e7
Date: Tue, 15 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752611393
