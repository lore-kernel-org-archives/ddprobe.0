Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711E52FFF90
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789396234; cv=none; b=DwMQ0WYlDRXxoP/y4dZrwwXb9mVOwLFurQYLtD9dfWWjQsVYMIOwukrASR02Bf0GY10Eu7kgWM465KKCnP4rN/0XTxMW501nNuCMR58/UICjPUsKVfHO3zsknqc2npKaDRMRCPIlxxhy4pWyQorsEheEzn/8HsDfpf10YnaONg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789396234; c=relaxed/simple;
	bh=irRhi38y+7lWofbM8iXJnGl3qv9sf9JfNfOxzEpYfhY=;
	h=To:Subject:From:Message-Id:Date; b=Bk3C5Di1w/IGs24D00uGUROo8PjFGEwCunXa/trOm9f8lcV2cQotkJxCVz/9F/V5YAS9uLmqL2cexJfx5M/XbIvaoX01KoWzJqwnM5wfEcitrFAoBqdbfRbl5S0mP5EsSLHz36i8v5yt4UAd0GaaYu/Du1+4z/Hp9aSw02GKU74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYL0VaLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYL0VaLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56C9C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789396233;
	bh=irRhi38y+7lWofbM8iXJnGl3qv9sf9JfNfOxzEpYfhY=;
	h=To:Subject:From:Date:From;
	b=XYL0VaLwDjj5PHEHqpTPH6mSgPbgqVMXVsEADeg+2DAHrsgc6bTbGpOF9PdzTK5Fu
	 4HqeRUv7PfYK18OF9DSCnQH/cTa2UH7iG3348o5g5XLRw/4LDVS2c37lsStlPd03CA
	 8kJ0ztkn0T6utqWgSUHq9u+sXMSur3KCSznAhzAtIePwd8Ofz1Vm6KTy5RLl/8QuKy
	 XQnPcswF1de+VmlJk8Anvmyn/jMhreQ1vy33M4LiBI8N7VOuEwNf+DtvaYaF6r1xfd
	 VwVpcNlxf6hO+KLsxk11rRuccCtQdwxkiejtNaPTB/9g8UUW6jwEEcQWJ6ryY3NBE5
	 RUfKYGuarJhyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3E5C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939623369.1783.2918906918764886515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1414174e3d866a29422fc42dc7f454027cb848627eaad9d53f3215fb7a02a9e
Date: Mon, 14 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789396233
