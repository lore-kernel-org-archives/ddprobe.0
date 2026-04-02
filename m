Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374E9207DF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775142334; cv=none; b=tC1l1hrgCDip/5dfckhh/r3OUujilqI+npkqwZA/7UTn8dyjMJDVezrk7L2e4vWBWsCSBnKPPynuBParYna6m1mMp78fMLFPJ33AhVYR3dMyCAtkyOqSJZjW6NcsVpWn4NhQFUeSmfLNLIx27JyvBiSOg/a+AkEMOboadjfYXT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775142334; c=relaxed/simple;
	bh=AsMdJJHLW6YjJ8Wpca/5J1E8sUq0OtQYe2ql/neTSvU=;
	h=To:Subject:From:Message-Id:Date; b=GotBhtkGWWNDSy89IXiK3keKGYXhizrgUZIxw+ctjO72PZt1sDNhRo3HRx+KAug9gW7gGfFdpSZDZilHqn0MbGTn+Gp19YkxKVh6SuHnjR1VTDFjR4sfNevLaRLn0LQxOgzlFChRvjtm8y/pRnaMMW1GzXaR5xV8DgaoOmIkDno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwipuUJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwipuUJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C8CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775142333;
	bh=AsMdJJHLW6YjJ8Wpca/5J1E8sUq0OtQYe2ql/neTSvU=;
	h=To:Subject:From:Date:From;
	b=CwipuUJE9aGhnq6pAJPSuVoWj0POMWXnkV7YAlOcIj6AOZoYq5AR1pjgCdwIl7sMN
	 +mFopZjarYHz/hGdOuhXGSibZMqu1FJVk2T2+l8n7/6DIKB31ZKZ0ZJ3bcRYBpO61a
	 jFsk+gGkIIymfmW6lQN1dUi2w2QtVpaIgwMgTi3UlZd58r9ddJtaGex6xFKTtSzDG1
	 cvUqwfkU+CfpKg5H/HEUiU4qg4UlHF9A5SG0h2SsKCXs4QTF3rnkbec3Kxlmf3i+3I
	 RFz3HEBZzo5ZQT0xibwqBxJN7FSt/7Ws0TK3ll2Um4Ie0hLy2VgOC0RZ8DETg6MHPM
	 28w+J35t/kpBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2E7D3943C
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514233369.6956.8792526975733884993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60dc4e845337ed4b5e47f16c038412b428220490131718d786e5cc5a84f65fa
Date: Thu, 02 Apr 2026 15:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775142333
