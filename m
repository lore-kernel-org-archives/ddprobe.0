Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE3F3F86F5
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782724114; cv=none; b=W/4FzM2+PFI5JGqK8iEiqdb+jY1SkJnKojfbORe6nrDqD/k9Xn1WHc4k2UJMCEupLfaYYBiRudBw7u0OVd/j9R7K/Zb9DjW+Fm07s+Y6hfskP3yuEfdREONCdho1oSdMxuv7M9RpI2Ab8CgmHi0Eu/L/RjCSCs3LBixaHsEcC1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782724114; c=relaxed/simple;
	bh=8rxxiqWJwjS6/il7AKBGV6yuQA2oFTqmHQVORFNsqyQ=;
	h=To:Subject:From:Message-Id:Date; b=KCbbdi63kfgjECHJ3UASPKk97o5mP+P8Dgibepubj9ZlJ05MdxfjSsCN52uqiIvI/20QlTeV4CBhNToDUZZNsTSGLtULu+g5VadRHmWyH0IPR7dQZcLQsNRK59G+91r5Lu2CniKRuElLayibuTVOzn8K6kW3QLzIW3Zig4y+9KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpbbDjS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpbbDjS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56BCC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782724113;
	bh=8rxxiqWJwjS6/il7AKBGV6yuQA2oFTqmHQVORFNsqyQ=;
	h=To:Subject:From:Date:From;
	b=YpbbDjS2kSd4lc4J9LgDhdV3pLXyzMq98yvXkOrlPAjjRyIYzIhDAxx1gw+PA2nyN
	 IzHfae1e0KmiSTT3HFeXY7kdpLJTGPhrDCUB7hwhLL8/+HxRs6eF2NQDU6HIR2capp
	 g3RZ5oIBQbuQ5gsw5JTDxzsgBX75BEd4VCooTmfGBICx0xnNl0DYwcwPNva/Xf74pd
	 eOaGMJ4s/M1M4NRcBUknuMyec0zZYTZ0ADezDY8snbWySQXqfnZKkCyjyTc0NTQvwX
	 X/s9A5NHD5z45wT+nTnz6CXrv7Sb3zqVLFBwwnl+cFYCB7TQRQdlesIhybpkwTMqxN
	 HdVlJlL+5uMBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6B9C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272411368.28570.15482913618625946161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62c662e204e19d5476ee361108bc9e7034dda4b395e08d35425176a8a147a2c
Date: Mon, 29 Jun 2026 09:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782724113
