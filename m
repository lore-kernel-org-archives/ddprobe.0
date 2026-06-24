Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCB9308F3B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782271594; cv=none; b=qXNJk0kFpmK/Nox/jmuY6zGaQqiL+SNHPAWkqQU9np/licbTcq5gUFpBye5uz857mVfV2vw0FOs9GvzvrpC0y+4L5X0BPYerzjLCKY2GW0GOuAqP/u48AssTk0XS1jdiN4HH505GqHn3UwdvXWY1JwsqTyJF2yMZ18CWgP+DgAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782271594; c=relaxed/simple;
	bh=TSAwG2Jy4fNnYjvo6TrigT3kpByOPZfg7KQpGVWDV3Q=;
	h=To:Subject:From:Message-Id:Date; b=CAdWVYaqzfHxiltOPYwEJBsRj5Kdj85V41zyyMoxs/EVQKh5KIeMWim2bsgoXVpPuaVjA51PDZHAEu5dnJOBX4ROA3xCIVdG3JzCUT62rx7yNlACaVKwD0KeMihfpUHrp4Ioh5muo5SHSePNJBm/3I8SFiNC4exnhrLIg01N9Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggy2uMiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggy2uMiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D423AC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782271593;
	bh=TSAwG2Jy4fNnYjvo6TrigT3kpByOPZfg7KQpGVWDV3Q=;
	h=To:Subject:From:Date:From;
	b=ggy2uMiwSErP70WNUiEnYXT2GEZ5qJCI79J3fBxL67cBIOSrnchmz1n1/fthMZVmy
	 +N5kidIoKzAO5ORusLft/m0tGnPO/M94DVP4cE/VLde92f7gmP0PtjZZhGTBnDoWCB
	 jN6L+pJEda7lY4E2PbJUhrL9oqXs7UYiU2nC+B/6A3+fQpgDsCF1FSRkAvJDUrpqBy
	 WuflGNUxliKk0T5x12TwHlfCL8WNZv2vvajLAziiTToBTOE9xRLR+HVQTIj6zGxwHJ
	 uVquRhgY/DoeAKacn4m+3FObXij1/zXxbAeWE8TYkiZmoN/rHeDZ+9+TJiOtx6qXY0
	 jPLAWzaeaugZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83B6CD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227159374.27936.8418477452949927135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4152b72ea927ddd4e85e4a40c6a714f06ce9241e0833c021824d38da92a11793
Date: Wed, 24 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782271593
