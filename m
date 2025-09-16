Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C291A9FB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758040194; cv=none; b=XTONdU6Ej/4/ZP5wQndmJ7o9ahe/2BmsY3E290S7kOl1gR+g7UHc9eCb7X7o63+w3z8DRwqTTFD+S9YEELzROtp24c0nbyiVvYsY7gjrlEyN4gezHiDlnniOZPAo05pw12FC6NlKwHfL6PvfW+0V+2j4iYkGmk4rW7PfHLWIZsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758040194; c=relaxed/simple;
	bh=XN6DhtV7E5htFZ3cMQhRZy2J/fYz450vsok8qqma8y0=;
	h=To:Subject:From:Message-Id:Date; b=N+gXos+xaRGlkd9V3rv3FpHPf8ujMoky3KdKoTp3rflAKAeZ8K380rDDD9/NVnercu3jpb5FeGjVBRKFRB16QoROk9ohe4dFzhVrNjOPHX4w2RrkTgPgZkRrgWcE+/oABTyKlKwkzwJknZLG8rzd7qL1DJu0bF1x35Or5MEgRVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXulwH/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXulwH/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C58C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758040193;
	bh=XN6DhtV7E5htFZ3cMQhRZy2J/fYz450vsok8qqma8y0=;
	h=To:Subject:From:Date:From;
	b=nXulwH/JPSYEHaOtgGiR417ao8ZhNRZ14MqCaJNdw3N+tKw9h29/0UgmSt0tRCEM5
	 1qiuqemhN50PiW1rsZ+klHRzRMoNDwmG8j5ifKOg1XGu+KKa8z6Bjg/KiPmE/ls1vQ
	 C/BeTZIHzXpJf5SU3hcdubmSma5qT+ODuTfTZAoX5qArruIWU7Oqii1Kb8VoYLGV8L
	 ddkNRAYLJhUMQMpR3bg+bqiDphQYc3JskH9Z3vQhVFmJU85S6JspGU7Fiho2C4PY1B
	 xFghQcul+lv6jI4ss1j/NRVc7zpR4gGHEHHCEuOnB8qH1+if3ngLkYhpc5nhF60DYn
	 sDE3T/mygbIQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90681CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804019358.28651.4484816264210328098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cbe11457c7b822c77649924c0b0412de88a9ab13e3b3436308e96279c9278d
Date: Tue, 16 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758040193
