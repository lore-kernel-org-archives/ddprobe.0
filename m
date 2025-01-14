Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCC41E480
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736858754; cv=none; b=Tf3/gB9py2JLFRZGxUT/lfVJzKxydxbnCrCUWOxDIMwf9TYJtEVrxu54xgi22nO5GVovPYfXbhAV9A7Csvvn5A5WYXaGerehbja3VybuKx1iCHDzDtYcnybuMO+pjtENDFl501pA3vGKIBRjpNomBZLFH9SpoIovmN/tL5eWDSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736858754; c=relaxed/simple;
	bh=HrNy4seh+V3EyUaAJeq9jZmr6847FC/JadEP2O0p2+A=;
	h=To:Subject:From:Message-Id:Date; b=Ak+B2lH1ShOdqEalkw/Ri2wFPiMyTIMXy00tenKNo12RCBm7F7PLFPP/FIDgRWUMN5uf4x8j2LMP34aya/xM4yvwka2ugDi1G81piTjRRgoP/50ZNCMTPh5Kq3rM9niFiudNeY9e0aLHX7cvn1QMaWRQtjXjX9//cwsH5mCB57s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7p9Cxuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7p9Cxuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29A1C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736858753;
	bh=HrNy4seh+V3EyUaAJeq9jZmr6847FC/JadEP2O0p2+A=;
	h=To:Subject:From:Date:From;
	b=l7p9Cxuc1LVpozoYluCFpJ6q6TB3G4ObScMvE+NZT7P97Kv27+aGWaZZgwHjzjBZ1
	 TyxsUQ6oujHp2k5fcUXhSLyoVAoCTAQgpOM1cSYC4Z6yolEmmo6AwlyTt5Qeu5J5U5
	 7C+Hf0BxMXAD74C0+xCTymHcMMwt0x+tMThAS1IqelCJIymunURFJPYVzpXrtaNWMK
	 iezgfE0f9TurGXPPPPaN5N0EMosNfTbSv0RxAeJFAFzU7x1ZoVBYMidp5B+brLF+uw
	 k9h2kMc2/+6VQ5EX4Gd/sgIbzkE+WLV34gJmo8Cl6UoHCdg3o7pX0tcORsua4iq4Ex
	 NJYLeq86GhCPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FF0E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685875360.29612.15454776774739087417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29208c5885339652efe094f3b4bfd632b20547691e892d45e9617bc46a4c5107
Date: Tue, 14 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736858753
