Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E1E36D
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757869794; cv=none; b=tXmMMDBRYhEgq3sjjwLKxyEZsGdTkJpXufsWTXwtm9XTNgCobJ0BWbOE0Z9wM3tFVdO/rs0wWBzT26JYBtv577p85P2XrrmPxP5BLOJtOWON1jdLNznBHru+4I0a0+LW9VpSK2w9oEoCrgH4VSh3Xgjl0EBGkw7eylk+481qUns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757869794; c=relaxed/simple;
	bh=cgxtNpOEWmXAsU8Xw0VI/ClI04wMbfpTRg5xPBzc0FY=;
	h=To:Subject:From:Message-Id:Date; b=hcfj5YCfmr16sNGj6yTTFQ+wDjAphYHzrdsXZ2qMG/1EJhcsFDU9E2/PqGvTDT3nP1VhAyXo/immaLH509bnCVG5vIYVEVQK+NnfXvg2e9xF02Fv47NtglUGcKGtZcwW/JoKr/t4MxzY+0SmJqKS6AU1c9+fzjyXx9bobDEzXG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdzLfQzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdzLfQzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E97C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757869793;
	bh=cgxtNpOEWmXAsU8Xw0VI/ClI04wMbfpTRg5xPBzc0FY=;
	h=To:Subject:From:Date:From;
	b=AdzLfQzUvd8BqwagxaMDor8OOHxJrKgCwBzgjtRmqrWDa8oZ9IjnIEzyvUXFQREEJ
	 zWv+ttRB1TwxEDOZR8equMEB7M8Bmm7FeltAUpT92Ww/3Dt3id6IFiB11CtLgBemb+
	 60oa/32y9IocasO8ZME36Aw9z8U3/7gYJO3L3jhhli3c1mVCuXjCZE9SuutYRHTnZ3
	 JsPxEuCSMqXECP6wRh4n5Evf7rA8jAoR5CY6kDoAfD6az8GVNE2LF9nkQaJsZDeUFL
	 ltFcQSUC4O/zaze1tK0vDG4yBUlzaASLen+0V66t6HXf/1pJyhOB0xirxdw401ule4
	 WsQ38d6s4Whpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC15CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786979358.20517.3911242881706894455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b292c6f5958706af52e04ccf3c37a1bce3fcf59125a90fb61a42f40616f970c1
Date: Sun, 14 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757869793
