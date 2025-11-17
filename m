Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B40D299A96
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763374914; cv=none; b=Dw2q2P5EsM3c85UdFZWFsA9QmOwMBvRmN4dilnGJseVRAn8kHmLXQ1HvrxjcJL8HblG2/4M5Tna55uNAhLRroC13bWw/+lZzU3UJ908rtFKDcKME28NYwKp3lHQ13dFvO583T2N2PytjA0yWVumF/q5ZmjCLesvjYGs0JLU2NMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763374914; c=relaxed/simple;
	bh=AbMsrpGytTgZhV8iJLvUOuiTgK4Rd5QrHRZSW0jUh2g=;
	h=To:Subject:From:Message-Id:Date; b=UpXCy5yLqJeaYmLma3tyxq0ODVN6cF11c16Qh3/Zl0FdzRB0D7PjbrQXR+hFJHCO0BEBOmRO24T8+hXcI5Tbax7zutDPXo6ExgRFNHCADprR5lbWJyicSDcHsOjqwHzhp7564fVTgEMyUcnwQ703O/up1jGS+QV7UZBR0S3qxdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIDZSpI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIDZSpI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D8C2BC86
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763374913;
	bh=AbMsrpGytTgZhV8iJLvUOuiTgK4Rd5QrHRZSW0jUh2g=;
	h=To:Subject:From:Date:From;
	b=VIDZSpI1mbKxnAygjNVpgLm9YSVJnHTcTQKuQRy6eerMKx/EEPVZapyj508iN2vL0
	 qxb30f9lyxeDN2wZMW8zpBMyi6G09auZX4ho1GcJZp5iPxSJJ32QTcDzrbfr4Ff+D/
	 GHuBVhLDFpjpRAxCLR99967kmOL6Gb1eJ6UYNYoQ8jsv0b2jqZQ0oQaoTq3BdSgJo7
	 uToha/8YvPyq+RNzMG8fiM8g/9E8xWPBOQ5VFLjz51PI3AAQS0zHp1D6sd4dLhBbY6
	 vUQJL8fBfWPudQwpjX22F8741NZWoDU1cvpK6cuNu8l7KtGlikH7KsmtT+FcxTB2Ly
	 XjKmmVJv8ahwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964DDCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 10:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337491360.20272.11156864167953353402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132ce48ed48f879bbe9fdd7f527c2dae3488c21bf116a585a2a5fc1e71495833
Date: Mon, 17 Nov 2025 10:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763374913
