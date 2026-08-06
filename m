Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5519D4B0487
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786060234; cv=none; b=A6sGdl26Z0uk8EeTCqdZLBERtTLkFALG36ah1vZSny/GLAKJd4ksEXUDeJtOcbzm7czn2Sdlwi0kWwNYvxaUlDudLm00bzhZ439UHMo63hHUeAZ5p8gzi2mtGeAdw6rZmhBOeIzNTy6JyDsuwVzZSw6lMacVrDasf+P0CDfrGeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786060234; c=relaxed/simple;
	bh=tEciWIARk/SJ1L9X+MsqUkFv1LCFCKxs1H/QRFeGnOI=;
	h=To:Subject:From:Message-Id:Date; b=VVWe/XGqQI0nxn0NhgZm0v4qwJPAicBMJYD9go+HjFoIPfu6FO5WcX7lbzVCKaP7uE3Fs5eVHWPEYBaru5+nPioCo/4I+IBz+isJZi2hoFegnWcjZuNEhbnQzukwwS1Cz/0/yVLj6zb74vrc0fb1ZbkgiCDmWulZKDMs9zNhDu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4ghgNup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4ghgNup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3034C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786060233;
	bh=tEciWIARk/SJ1L9X+MsqUkFv1LCFCKxs1H/QRFeGnOI=;
	h=To:Subject:From:Date:From;
	b=m4ghgNupGPAqhyu6xSHGAv0NIBYrgSYQ6A9DE+JVMpaL5AnhLuPMyp4kA8kTytaAV
	 dMT3AW7S/Syf50YglJo6veZS9czk2ZjRmyWu9sa/nGphZLptG7m6sLV0UFtI03rurL
	 OoMhhyPN0XXBM3Nu/qpOmQDmM32WyoC/eyr/SCNsTe1YjYRxiDLnWURFt1KlJawPuI
	 if5XMn6HzkS4lnFwbPfo1FIGgc5U9+aU0bg6gZJxDVK2Se3P02v1t7ALxr+pH0voif
	 Ku5SNQNfPGWFUd7tfY+ddcEqUghLei5UNbu+3TZCUJq7hbHohCVULdQ5qB+XZ7qkMz
	 Z258W0hnBboRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF045C5AC7A
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606023368.30771.17021843411307290723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4abba94d82faee396c83d035a81e15c71e9f10b05d5d460acee85fe65bcaff
Date: Thu, 06 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786060233
