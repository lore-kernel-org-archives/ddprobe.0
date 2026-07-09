Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364EE3C3428
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783587514; cv=none; b=NVHwgMGqVmYZe1226SGBHzlLCpRJqf8v78SmvZHjrK+Gs4i0aqTlV7HyRNhPOuAU11O8B4tZoB1seH6aAFFLtb7tx+3+8Pm7G+OXCoKusjW92F6ltjU1g2A+PlgU9DCIUUfGbncP8LhBBFajSqfk8HsdgOnQoCNH7dLvo4y7B+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783587514; c=relaxed/simple;
	bh=6Jm6ysm/3z0a83g/xZqw3+/2v85cgW3Ov9lHE7i6P9Q=;
	h=To:Subject:From:Message-Id:Date; b=mq5FC6fsvHcjohbOKtynhGsYkwOswGhRe0OnNE+wMbtb/NVU5shPlpiTrgo6BasY8XuiNn+DbYC8WEHkcT1+D82BlXT19mACnX/3c2PD/8ykl/xvfCh2dKygKi8lFYoKNYuQEPgJVcCBaq/MNWN1f7Jn2Ohv2IJXmcgWdVAwey8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKARHLXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKARHLXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89CBC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783587513;
	bh=6Jm6ysm/3z0a83g/xZqw3+/2v85cgW3Ov9lHE7i6P9Q=;
	h=To:Subject:From:Date:From;
	b=nKARHLXwHw2rMkop3FMYaq88kajBAeusU1qud3GeK4E4iyNL+/XHYl271J5vmPmk3
	 iRoXn/agyKat3zJ/630qp/4r1rVYaIqm4eJ9B+sk/U/gi+BuEW5hkFcQCNkUMwlqXn
	 Mtp3B94cwsNRNcWsBEfjiwV81nxchkvujB9PM8h6hmX4MqD6ltyuJAETCeRdhFXTB7
	 dFLQCxFQFAUy6fszhNRlpOsK7btWZjAkkdSNLkDMwViSsG07lWRc5L9vUhZUrxLKHi
	 xJt6G2hWD/75+qB1UndCkLE1QpbnbF7pULOiJcToHvz4+EJAkU/zgBTPgk61Dn3sWA
	 uWlQa+649QSjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A885CC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358751368.17771.4129375056093011061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6c3a40cca2cc1fffd9c2781ac43b36b3375767299c96cfb366446420712155
Date: Thu, 09 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783587513
