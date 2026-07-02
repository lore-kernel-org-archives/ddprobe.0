Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3703A3C6A2B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783033114; cv=none; b=Zior4IXbHMwbSwOmK0V+3HvQPju9B+PawPzhQVsDm5jyRubCmP4DkTycTon1XJ98xCvaCyCNaCtE/llf5iR9h+Gw2TevtKK7jTvCHvcFpFnI7jEE5YlE5H6eeotDd7ohzlNM2Lm1Ma+TqrSlN8L17xOXGKUlM3W4zEGbMjcJrb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783033114; c=relaxed/simple;
	bh=PTBNPP6T8lqqeeohMp+N9kA+2QPY2K/eHiRRqQq+woE=;
	h=To:Subject:From:Message-Id:Date; b=Z0lthjpX6v9z1nYK2bfxKwSAs6GN4j9R04vgDKK9kNwDSLyu5YbFhtwh48kAwWgMEMQtSel+0CpjXLCwUKAlRV0C4pJ6KFz/oRnssMAJB3aeXxaN57sm3+vuTAZDZz7rBF/+ms1WuYTVx2CjC62tR6+/y0nkUJfwokTGvIf9UjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRFc/1Qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRFc/1Qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC550C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783033113;
	bh=PTBNPP6T8lqqeeohMp+N9kA+2QPY2K/eHiRRqQq+woE=;
	h=To:Subject:From:Date:From;
	b=nRFc/1Qg/s2lI/RTlbobjJEDveaCFJ4lg04Mmqyw7Rh8eCaUu5uhgSiEoUXKcaoaX
	 6RD6zN6xSd8+xGu/dOZx9xipMUkZ/NzEf7D3k8bNuon5TBtITySzpdVWEPy0aeDP0g
	 NHkNTdP/QVaePSo7YrMdjFxeQfSkK7NVHYQdzajjSTU511Kjcm7BzIeHrYLv3qNXKn
	 a6yiJQrhl+zgiTPzS6iN4af+pdNVg18CmG9uG1uNh2ZivnO9d01OeqT5YaQkKeviHm
	 iLqVoF62oTpc5p0dnBRtBMhZ+M25kc78agZi2IVkRUnW2Kdwij8V3be8tBUQbqH8vv
	 IksJhjRmWSlPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F93C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303311368.28082.13521096326265733341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c600ed439d2005b3bd8acabd3b1e5163bbc5b4825fd6e9b28c715cea857203
Date: Thu, 02 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783033113
