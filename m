Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F0F7F465
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707198497; cv=none; b=B3GSjI189CHJk27o/QIy/5ONhfHEtWavI7PFFSNXD3h9GCztr/4oBLiahu9pl4FxoiV0NuQHQsSZPBPtuQmFR3eovFRHl97mlEm5vlPywk+rokNGSmbZh5O7+OITIKAt1ZiijT/2eeHHMGumTqG7zsg4ishHrOf93M5pHFTJPWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707198497; c=relaxed/simple;
	bh=L1WtyPB7HFxd2qMWn14+yjVQnuwcm8k2EpfMKRCi/E4=;
	h=To:Subject:From:Message-Id:Date; b=P/Q297u6G8W515P/u/Zm3T3+vPB7XeED9iOWAPW8osz2TPuvEU1UHsYr5IUsjKVH3bpyNagy+VWnAtq7GdprFcExsLtchwVpGzBg+TW0lzuy1U/mijl2NmpPN9dMcFf0DaOjeZUtzWFKyBzGSNPixDHyaPPcX7isNmk+s2UdCEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjwkAJ/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjwkAJ/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C96C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707198496;
	bh=L1WtyPB7HFxd2qMWn14+yjVQnuwcm8k2EpfMKRCi/E4=;
	h=To:Subject:From:Date:From;
	b=rjwkAJ/0LMMpYK9FPIom+As6iXhusZAYYkn7aO7zsq3e+9gr8ERDU7uRevcWfJdyu
	 PDBqm7KosqF18o0SSIhjiScJB+Jwic4k3ye6EizhSQMErEPqkqUCVxuKfq1A59/vVP
	 IXQoMkuUDbZKMYVXbnKrcgja7KFo7fPyFAdQAczTJAyV9GENkQc2zPKcZnhWmExqwo
	 H1BRCnGJxU7yXU/jRRCzXMsK6xhONVL8Eqye8Ufq/k0gG9nzydO8+olnGtpHNyl4fp
	 qFkMqpD8tjcjX9fK8BiN1wctaH5+XvsJMzAVz4XAOnxTWWXTnHOC/e2XCl+az89t8B
	 6a/axo9Etltaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69185C4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170719849642.26764.2160434290005174189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809a171769c9102d4aace7940238e5194bdd80541d855aed9e815c146cde5192
Date: Tue, 06 Feb 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707198496
