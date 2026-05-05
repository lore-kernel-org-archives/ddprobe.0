Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F361481248
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778000854; cv=none; b=PV3mNT8ZbKyxfLCAiXYczNdhz7vaa0nCBkK1KMJf1gvpILv7JvOItFUutcwCrUGprXOrGOMdSxrejxdzEB41S95ww2VYPK6hbXZ6cd3fLqWdbd2auZSkXF7RzcVznXZLNWxOUlhwKDuzUY9JwUWanu/Pj5kxKAL80kLZGe7kXpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778000854; c=relaxed/simple;
	bh=UfluBUxXmQ+zdnNaGdE2oocy37xUm4Pz08QppTwjJWY=;
	h=To:Subject:From:Message-Id:Date; b=XYGulYSqq2zLsDqcBm9LLaLG2dR/0jkZUsUz3eNNLd8/rXYs6yh/7xCIdd8NH8finkyg0cp7Br3VavfQ5xvi6CGEsly40KBRoFcclFtQ/Ll0vEAONeS87tZp+67zISrAfWxFe3Nat1kumaTEMCPSENlkvbIbqCj4iApUbwhEJEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1hn43vX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1hn43vX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65F0C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778000853;
	bh=UfluBUxXmQ+zdnNaGdE2oocy37xUm4Pz08QppTwjJWY=;
	h=To:Subject:From:Date:From;
	b=q1hn43vXzFuDhyEH5EJ8gp/o3jDP+rRYEwSDgTWOJhx+6TTVtkxUngU6sWCaLulA0
	 H+Y8Sn29vyfTxwXLoxWuNOLpVL95jfU/9w79M55YVJSrYx90YuoWd/Y7ovju3zEHlS
	 gGxbp/LfydNAcVRQRmgS4r5omIr+sNyCYiudwXXzdzyO0p9MOm9+4SLz6jM0jWNCTZ
	 wr6+PSoGW46yyNsJOhSw2QELvkL+5ZBfLGAawOef89pfzAeM2AdkdWrnsoA8pHOvTL
	 ZXB+HQJJ83eEDdLhp2UnORs13oHJmV78tRufw2rWrBWhnvgIf/O3YJxmV3PRacUW41
	 UEs7eTKYifwCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2D5CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800085369.15811.10076811726586880754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff7755e8ae892a020b7a2751ce30a3a45f3960a65adad0b2c3d6d4605c80402
Date: Tue, 05 May 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778000853
