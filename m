Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369B83EA949
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782482854; cv=none; b=LUhbVElJ5sFOfk6v2haLKnqIGkf5jQnfcKaczrRQh03/a5czSOCQmj/q+64Lo0SIzrS7IW+6sQrqtnwyB3HKtYV5BYuXy1D66cSAglh/DSQ4bS8qOZ+qXyONNr/5gSyExtnHUvNGgcrWxHSAcs2O/8vexU7aVvu2AAkAxnvbkAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782482854; c=relaxed/simple;
	bh=xjVDhI2w5pCm5H/USt8vNhzA6WRq9T+bQTGfS8mbcGA=;
	h=To:Subject:From:Message-Id:Date; b=Hx0Rer7ufHUfGYhcQdGErNP0xJjWl0GWA5/8oW6ybVPYkmQWy/cndH+FuaSvK7KPL+VWaUtLNLLmBV5a1wbjQUWZ5A/KyBVqNCKxo7y+WiIK+3ZFEfZDbB3o3UjliGSG6YFSTfwuDEwixSLM8q9sTGzieOLk3RtqJ4iVR2nDzVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GM83x2S8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GM83x2S8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DE1C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782482853;
	bh=xjVDhI2w5pCm5H/USt8vNhzA6WRq9T+bQTGfS8mbcGA=;
	h=To:Subject:From:Date:From;
	b=GM83x2S8B5Yq8Tq6eDm5k155sK9i7o+TAlOWy8fjNN05fObB2k39KHKjsyIPgpXRT
	 Tj6mZeI8qnfU1uuz7yzrP+YbmMuAICOL3piklWEBt7tRe91auwYxDKOR4sW68UWi4f
	 +kHasHgVPth7wkqyfrmWiXIqL433utUkUO9RN0xe0OVuCvEMVNFHynG2B7iR+H3Duu
	 PlSWQeE4veBf0PImpkvyA9m/M8tlry+Ci4Xf1O+0dx2sztyW/fSc5vRXuaKnEp3PPj
	 85p6Jc0dlEB/3wFRUO1Ggg2wGE7F1SoMToWXs6etYqmLZNOX3NXUZQTOEj0wVAZQtd
	 zCFJQSJEuAeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D0DC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248285373.23638.2844609931989727748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71da310ff55e352a3608e7993dacbf9c07d0b390885f23905ccff4e9e445bf8f
Date: Fri, 26 Jun 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782482853
