Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF3F213254
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789441834; cv=none; b=VMiQzE6MNsO6Do6aZtpeEf0K3gwMJLAJAoVlvl7OHa9XE2Qf0WeczDdw4xwDhGbyebD0cTDnVuX2nIis6cjEcQCTwkcl7kXpz44HKqAj74V7eGTISgl71N0wzhUW/7A3QDb1WxlzNwmjGDd2tlkm+qdR4A6ydTk16K/OcWv7gKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789441834; c=relaxed/simple;
	bh=k/120dqj2GepdwV9cUVhwdRHKETeqN0IOFr7ienBYpI=;
	h=To:Subject:From:Message-Id:Date; b=e8uT6Ndg3Q4FEiIHPo+WtI5aapOvNIJhjQT4oW8pB1Q6iwdI0pZ5hxn+C5ueOyydNrz8Ce0Uizye4WxNhVUYEFzeSt+LJO4kBe1lrjlNj7xSt6QIwhWNn8sQYgBqzUP5hnmeHS407ahPniK1Szfys+4+qo9gbBZVl7B91rwlJ7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbeHLgHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbeHLgHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43D2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789441833;
	bh=k/120dqj2GepdwV9cUVhwdRHKETeqN0IOFr7ienBYpI=;
	h=To:Subject:From:Date:From;
	b=nbeHLgHy1WDrdf/5tlr3mgWzA9NaVz8ldDZDnO7y+oPM783vMSDDHutnFWPv0vl2S
	 qqpcx9pztF1HQd6eAn7uM6yvSnkyt9bw5rWtlFt06jsmhCGwxzFOK3p9byG2aj/pAq
	 wZRlmHZLxBpIB1HYOhgaKzc6A99OMLVDji4cWdG8UdJsQibHmpPF7cxWoY0NYA/oYc
	 q3clpEYlJtDkKABIdh8pFI4/YyzdKxt2wIRDmyI/8B8/GNN+DWh5herr59FV/UZTwu
	 cC15IzoTnLKVFAiMGJIbhfgBCUfTJS7te7y6JcWUojcVKnzBgJjqHCv3mFgirRS6bV
	 uzQ1XvFL0y2QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE400C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944183369.12761.16569657195545501901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aecd0318257bcf47b697fb67af2b290eb172de1bbab489be2c178aa15cdd7d5
Date: Tue, 15 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789441833
