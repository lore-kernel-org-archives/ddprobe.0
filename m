Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1123838A737
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773654294; cv=none; b=C/GwAkRZ/S+FwzpgQPmvNegzNnCc1JII2R6KpcHGydfunyNuvX7ez9W7m4zxy7fdQ3qXTjwJD3OZ259CbE92iSaXQO7uWTp6V2Kl4g4sLrnN+NlGoMGKVjy7JtTfCKrQNbg5x1xG5m1U2O9ThKd/ALl9KnH+vuCBh0YYki5ZKeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773654294; c=relaxed/simple;
	bh=MH9FSdI6wLOXwJZm9JT9k3rpsJOEvWskVuYPntowEAM=;
	h=To:Subject:From:Message-Id:Date; b=NKuiV58QlaMm3ShOtZX892HtN4Z3LtHVd873TA2eDeqUTvvyqor00otQHAF4TwQDJnMNe85XV5wqrqWCny9kQOMqVLuiCzsNVPr/WaNcnsXY/gjxooBH5ryp4uFnvIrKZYapmElpIGFJNDE2IgdNsIZvkMY8ZVwWsihyIi8XySU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4zb32BX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4zb32BX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BFCC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773654293;
	bh=MH9FSdI6wLOXwJZm9JT9k3rpsJOEvWskVuYPntowEAM=;
	h=To:Subject:From:Date:From;
	b=V4zb32BX0KM7tp16+SPQeTDm62RFAJyqnclpwylxXvQoNRc8Apac+RNg3JjzuBdA3
	 errNSETGGiBk+Pth0ntZC54XNuPMyXWxLpSQqG7Pb5brtksE9ulHnyvuaGuMaR28Ac
	 U9iAbIaVJOKJ8uP1Wcwh7b2NESAelHKhg8pluMcxc5m3/nrF8faBA/ETeT6kS18jRY
	 gkptnv76CtQlhccvHeyToXIeDkbrRNMfabJj/VyTVk3veMEy0v5EfAR7W/V6p40ZUb
	 DHpiRMVkbLGELisiG/Opd1s90RGPFpQj2gmYoAkooxbV9hwfg9KazEc9pkyPs8Il+0
	 dTWszhHXuRMbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFFF4643B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365429359.25340.10813322743249335280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fcb7ae56b91da1e87756cd61cd4548c4aaf3efd730dab56854960cbedcf411d
Date: Mon, 16 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773654293
