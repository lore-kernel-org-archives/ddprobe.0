Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C5B3CB561
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785282634; cv=none; b=ksWWClfz3fbmIm7+UiSUwCoLNwaDxO1UaO8UjdFJOqOw8HC06dUOnEvNhvwBEua2MXFSKS9DbA8asUeOEDWWTEA8m08SPZ/Vx5LE8tUFo/TvxXgjB5WtN713BS6TJZuKyq6IxwHq0DnG6z6vUkJ1lzX/CQWJpyyOuLjNtaUprSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785282634; c=relaxed/simple;
	bh=uzHxPEz1GDRG6nOXVCQ2eJU7mE1NhP2cTyFi3XLlgOQ=;
	h=To:Subject:From:Message-Id:Date; b=SM0E5kkim+uXP5HZFfdE1aZyEs1sLOJOwAR8kJZLzHMKQMwPu5MHqouGXjqqH6Gpbp5PmNjGPrzpzNyCyPgok6Hbw6Q8532NnJmRdeUmTbZmNBZGcXdYh/nJqQHvuPD/FXI7dDhi2Y9BTihj5bDTgQukuw+vZQQBqVZaIypT5NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQQ+XvV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQQ+XvV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D606BC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785282633;
	bh=uzHxPEz1GDRG6nOXVCQ2eJU7mE1NhP2cTyFi3XLlgOQ=;
	h=To:Subject:From:Date:From;
	b=EQQ+XvV6JWFWKZ+UlttINmOSg0bQjKy42mlzqomz/8Khss7GYVhfvEaNil1farztx
	 k0JN/MG1jm7KpCI3PzO1/dU/0O8z9oIpZdFboCWa01/FZUQADPtv6rw4lkAvwPukjY
	 1N+Fbay0AJssZDRFYUaz2O/2Wu6jlVOYam/dN9TrDAy6E46E872oZOS4yODdd1qmyc
	 OVAuR0a500XonOwHO0jS31kWLY5Mh7YLoIs68ke4A0p3RUC21fg2IQk1M3Ds8z1zXy
	 7F+5DVXyRpo9pE9kbS9wa/hEmjWl4wyArQmaLaxVOzH4JpqR8gczXbPlIWBvqiA9f2
	 bkDQNbbSg0lOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB384C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178528263368.4036.1606164914696067670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54fa70effe0b906473691aedc0fd41643ebe9c5dc59db082e397bc9dac5f1e64
Date: Tue, 28 Jul 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785282633
