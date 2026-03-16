Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A82933CEAA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773638694; cv=none; b=dBynaCP4YE8a4+muWgWKN96ye0BV+7JQlzcVWHzZsxOwv+mC1FtiM0s58aked5v69fkrAf4EFjoSP4TD7ulhhbrj/IAl1VS/JxxvrXf6gPvPUuIZLjz9zPMo6UbyAo35q1xAKvkkl3APDbhyzy9oNcWlhlW5UfJA+mBWFZc2J+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773638694; c=relaxed/simple;
	bh=HpieUSzaTYTW87PIWNtXPGfH/HbR+jG4lR+rFl4XDbk=;
	h=To:Subject:From:Message-Id:Date; b=NrNSpC7DOMo1gc270j9xV8Qz97eYP9UoL513uUzSshB0V/bJqEvi6smUT1Ox5kBFYahW4VWhbDBmakfLIvHMJcekbKp5wSzMkqhrmOuc+8E7GNsdQNRu46wnue0E1I3g5GEknWwbEI9Yz/jf63K9eaNZxuSbi9L/3yfIUxjnvdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ame3AF8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ame3AF8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A317CC2BC87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773638693;
	bh=HpieUSzaTYTW87PIWNtXPGfH/HbR+jG4lR+rFl4XDbk=;
	h=To:Subject:From:Date:From;
	b=ame3AF8XKB+EuPrr/nSimrXGoVuuU1HuSnR7h6+Yg3WeSkIzYl8l0aGmcU9DwmEe1
	 G2XOrZVZ1yzO4uy0pwEhBwTJNGHY3TSE4wj64uZhDXlRr7I2gE0+o8Mwoslg9QedUK
	 97qeRGmJaWZ/Xy1EjnhTYzwCnqgz1SIK88PzoYQLmOjS14qS8AkO0frdYcFg+84vvf
	 cjzggAReA65MQygUnELBTmPsGLrANMmgP3M2cGWEawpp28V5w9bKfOqHPpqy6HOI1Z
	 nyhMZNunZH/7qOsfa9kgSrpYwc2W3pxNh52FwP7jIAT31fF5o0F6I2EeKr1WTDBxcF
	 uVxSIkPs/RsMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBAD58B36
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363869357.26070.2635346380809989558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9f08ca3e4f98499cac8cc929aef4670cd865348064b3f6693b4bc77bbd76eb
Date: Mon, 16 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773638693
