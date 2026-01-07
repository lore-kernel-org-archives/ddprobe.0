Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213723246EB
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767813834; cv=none; b=Eb4vuzEQeEQcmBMomaGnrHoQUEhATYM07QlMAmdczO9VAVkfFbiLdJyqjKD17ctYYsoo2Ip0cx2ThLn+xjVaXSFnoTNdy/nZ4CI7+BQMwX39L49NoWhEsUx7RUr4Hm92ppNj3iTmoQVaWx4tRr7lz+R/DP7nGFEePuFLItpjvu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767813834; c=relaxed/simple;
	bh=fbrtgFoTqwCPmc6SQ0QVkm19CCiJWp9roeni5zlNUgI=;
	h=To:Subject:From:Message-Id:Date; b=Xsz+bgxoBtf+AqQo0drUI5wAUmfczat+0+mk+rw9PT5FhGtbBpSWTiVWExm+JXQHPoMecdpSQETXjtgUUUm475zK1/igKRMUVCK2VgQAqmZaIo7GYMNKxNq1idRLhZe/GI6ZY4GY6YbJjU9im/8Sc5UEWsE6rvbhJVCNDmJCqSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuBif1qh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuBif1qh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ECEC16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767813833;
	bh=fbrtgFoTqwCPmc6SQ0QVkm19CCiJWp9roeni5zlNUgI=;
	h=To:Subject:From:Date:From;
	b=cuBif1qhQpWqAlZC90STdbiCyWMBYQrHJVAOi98oeALMnnV9x9m/5+gp/uVWsl0d4
	 0RhvNbTTUMDVAHGX5lDm8SgPzH4+f4NBdsWE611e6NBZjldufoQb0rfbTL+/pidvTw
	 x1WVsDLgQbFTYsHCGy+qMvDD6vXc4jp5QpSYOzwKfTkC2sX2qsyMO1+cXtWiaOc/MN
	 vHktzEW/n9XD2s/OUHhWphPX0Nd2hoIagXhAxGcHgO8e1Ff07NoOgY2kN5HysUU8Re
	 u97xK4JI3nEzGhmuap3HOYIvUqODtShvnwhL05pEhGqsWLbJPkpd2maV9MlTF2LGne
	 2DrYQas0nMlKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92348D0D16C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781383357.5320.11854470471326187288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3899243b704e0a1b411c59d15551e5b89217bcfa5f21a0072eb206c3c755cbf
Date: Wed, 07 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767813833
