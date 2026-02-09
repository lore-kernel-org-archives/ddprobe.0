Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C784176FB1
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770619434; cv=none; b=dRKuMsJOPm1C7GkgwlJCNv6ELLogdaGUdo1EwzASjm6IqP5l3yjRJYUpr83+3fFyxIWmyuCYQ+j9X9XsuU9Rc8tGloOTwU9FG5KOSxWxtGKyjzfuyWHJMn+sHLYvve0nZ31EWZ5MmeKQKnMXzes//soeVF9Ek1vXTal64Ndi8uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770619434; c=relaxed/simple;
	bh=nyL+v2Wn37i4TXRTE2WDPfJKcRd6xnFEulJsTKrDTtA=;
	h=To:Subject:From:Message-Id:Date; b=nowIpwkLHMtVZHkkvkCZZqJkz+njITmj41nwKp3d9Puojy6qvkABDjVwvKEWBXAt4Dgcf1R6/7bXo4kaUYxyz/sHvHrPRaqNJFF98vqGTSoE5U0/3RdME81jaelhP7R/IO0q9wA/uEcYtDFqi83ovPH7AAtzsM2pfOSrLfsBq80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3nUEtm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3nUEtm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA056C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770619433;
	bh=nyL+v2Wn37i4TXRTE2WDPfJKcRd6xnFEulJsTKrDTtA=;
	h=To:Subject:From:Date:From;
	b=I3nUEtm9hfidSfW8PlokK4eWBiaZKnCU0K6YxRlZ4UFZtJo6trZFR8QEl0Ux7ukk4
	 wdnsvdwkLiYLHoI6speqjvbOSYv+i8UW9LjDv20GRqLjCSE+sYpoZieNiCsgrj0nex
	 CN33UDJsxQ25PkyiwoVZ/eL1JMzMgiXFAgIZ/DpdGnCDHw/4xQLpaliDzKmcGsjRh7
	 TwWtAfQfgPtOV8lg9Gz9MT8mAUXMe8anTMSzai11w+BPiwYMMv/9QSTQoJcZaYRNP9
	 +ZhSKNf5BpyiuPQHveczstToVw0gwjvdkciHEyj6IunXOQu/yjnuZd2MbXZDj1jtpH
	 LS3qTpCzEAjLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31FDEF070F
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061943365.9517.8012334840773693901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7988100f80b5896fa17605931771544c4e7574fbe3da6edb9352f40fe0402a23
Date: Mon, 09 Feb 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770619433
