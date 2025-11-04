Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AD1329C4B
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762264194; cv=none; b=ec3/K5MmfiFa8nHsnzRvqmsaa7JvczwRWQEkC41dEYsCQKfvGbMq/cysk6FObJN7wVZAxZ1LRHMABkN8B+ax9k9VtAGvNTg/LeOEXJpL8l89d1gq26/k1zPyRsq9D0wyQPNCOo/uWKq7Z1KPoXIifAwmnkZd8klKUigbTxglu/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762264194; c=relaxed/simple;
	bh=iSF3y+oFTFcPvSU5dMPObeXOS3AoxF2qQcxo31+W74w=;
	h=To:Subject:From:Message-Id:Date; b=RGR90z76sPzsErzC3uOW8DRUVfEgdP0PDaJfXtKryQEECyo7K+ZdY1aaIM8I5kCJqET1X/3jvcs8Tp+HxKfv5jngV4gWhzLNCh0sIcHAYGVlltVSz1ECqkJM7AJ1vMGv2o2lsErVc9/Z2hyILpJdKe0NA0BjzL5MXqJgcxU5x+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAc205kM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAc205kM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F748C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762264193;
	bh=iSF3y+oFTFcPvSU5dMPObeXOS3AoxF2qQcxo31+W74w=;
	h=To:Subject:From:Date:From;
	b=MAc205kMASi0Qkux2oJNVIIxYyGxyjnRcGL+9jm64RqLGHrxislLO3zh9hvATNj4x
	 w4IPHVwHXEhBdnm2YCkzuO2UI84qkQB+v3NFiUklXVGGq6ZrLrIFlX0JPGWcv+0eeZ
	 0Sd74WoTgNNITC1NBaehrjcEMkHbbK1t+zmbZ/fCF/lIEz8rysfj0wsWAiUhxbEGv3
	 1Hw0gjR1q64inHpAeM170+/k+6C2ZzDfoV/tbRQYRTBjUCP2dNsoCwHxOwtiEOWljN
	 HBLGHhqThVwMHvbJcDXMA7iEZyhoiWZXdozXLQkT2O6pOtT9JcIonZy95BHL326WAa
	 LFaw8RW14/D9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C3DCCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226419358.27710.12645950654195196655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb9b26062bed080a1f50edfa7018c333f3de71c173a561a451b481a2636371d
Date: Tue, 04 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762264193
