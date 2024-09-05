Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C84A54F87
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725579354; cv=none; b=cnM7evYsNFNZT5jqO3AB5HAKFYyghu8P90FjT7tyAllEkc8E/VQjtrhcDnLoj1q3DxsO8DS2gAsZPzfulH5rDHJy9LmCHQZA6oWxHUiIMp26+nN7PHgLDZklsf1VnapKqCUwLblnnRn+PpuKDj8eG1BdNo7wKK/qK9rAI4EVgrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725579354; c=relaxed/simple;
	bh=cXENih4ei8ZRmQH9vBuY9wpo4Elg+XgmmkXPNhzxVJY=;
	h=To:Subject:From:Message-Id:Date; b=kMX6hS7IiJ0VHPPfqwiHTDyKFlbYUnKEOSHdFvNZpPwmgQqsOgiIjJ/P1aDUX2PDvxuq19SjiA6L8NzE+LTeJDBwEFF+YMhbyr8c11bbNy4cYr0P+igIj6Lqyg9QX1zN9Wjb0Y3e4WGGj0F8sgfpBnaDE0NVlCA4h0Y9JV/3Ba8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9wE894y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9wE894y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4699C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725579353;
	bh=cXENih4ei8ZRmQH9vBuY9wpo4Elg+XgmmkXPNhzxVJY=;
	h=To:Subject:From:Date:From;
	b=C9wE894yR1TqWKcc/4UZM6TIRAqaaa36fe8CGVK65wADamoalx6l8/wQ0Y7ZvPncr
	 hRoupiXA6eMOut9k2/4iw1Jek0rCqcpjZiiZtAH7RqOrmLLUYLELdK8jJznIFMUZK9
	 BnQANngZ5rJnROzbG8iNSVEabzp2vUOf7b90Z5KpYBax0Wp5Gd4XPVjujWjraUNlzL
	 sTl2Ybst7djInHPxFiqg406zSR48vIcsrffFv53BwDoOHlAfkFHgGm+FD4b5xiEnaU
	 HQNwppNBf8MM2EMb/7xmgK7jZsHlT8iWedBC3Vmj5wkI5B5xdl8KWlPYf4jiKLHrsx
	 1n6YRxAX5QMUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C19CD4849
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172557935365.18979.7475051197990114329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcdb2c8f8a1f9c919690b93204174b8368112e1704b1981b8d09fa1131739a9e
Date: Thu, 05 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725579353
