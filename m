Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E82E1448D5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778550634; cv=none; b=OdK8SoemStnXpc4C2JviQmnICL2Z8vpaiwxJ+x1cnKSlsjFRZ/m22PcjOIZZyZwOFGp6dLrmY80BSut8XGW7U4Jo7rS9LDWl71P55xoklHC9iq2/bmZ4DYFVcTt0dxzc85dtW+TWNeCLd1MScE/RPAMKVqhDedmBO1jVURf+TOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778550634; c=relaxed/simple;
	bh=dtj9c++zdVlLxgnb4mnoju5XDYZZOZ5hYTSAU0gL2g4=;
	h=To:Subject:From:Message-Id:Date; b=Sr5OuVOv7w+/LH3uGJTT0dxmvCTXVVALKVqaWe5Eyw2UAvroz42oz0Bd2YC9Q5G2xuQovjz8LA3qrxwngAd0kO7vnlGpNpm+/7fG7fnCiws/gs8i8KFjrUm1ZChV8NFSCLMRyt70PU8K6Emvu0uElnDkf4zblI8xXbfVezy15ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VD5axj5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VD5axj5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CBEC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778550633;
	bh=dtj9c++zdVlLxgnb4mnoju5XDYZZOZ5hYTSAU0gL2g4=;
	h=To:Subject:From:Date:From;
	b=VD5axj5Zb+n/J1KoCu8dx9Z20Byi/6wmDMZHySyqfuoT/iTVwXtuXw3hjrnMrmNRq
	 QyisFqDP/caEXQFrtPI70seIreQ7ZeSVyxgIfxyIoEP582kppLn08N40hsULnK/iAi
	 SGa3v+W8zaJDX03yRXbAA84pgZSS2M9beHJTcJDmTGrs+EB+vwt48fme6zEBmEfpHn
	 rAxpApe3EgATV8Bo52j/au9T69vRWkNh7XylJBwbzssXWTU9j2kZ2j3Mqs9UddokTr
	 39W8Vlg4v3yjvxlEO0+7z7JikvPTgxCNismglecD651EjzmThYiCyWK+Tg65UzL4cS
	 dEsvwj4nFCkzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD4CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855063368.16638.642895910967242215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c299f5ea2fce59240ef7e6fde887f4f1ab1c90055aa9e57fb441b41be5ec985
Date: Tue, 12 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778550633
