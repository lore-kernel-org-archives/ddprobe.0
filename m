Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014051FF7D7
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751277594; cv=none; b=XdSX48RFpYEwaWMUmHhqCDZK95ZtIxuFKbvXlH7r6esSyxmdBeZZQs0xGuz2zpDg1baPMDmwnOvGTP22uIhnbAo32qBMehAULKypRqXCj1IIpJdsGTh3a5eFd1ZA3C1sraHlMl/kaHn2+LeBMGslwWTRbEgbaICSkFmiw8JpSHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751277594; c=relaxed/simple;
	bh=ii3kJY9zDIbaEgthX9XPeYPJ4feK2FmjMnoNYVJN5Zs=;
	h=To:Subject:From:Message-Id:Date; b=E3VCtIP5/kxw6YMG5w9H60K0ZWXKqMUNJRVMRfQxOHiOqSD+Lbfmv0/tloPNe1QW20jz7br+hWHATWHSXTR6agUGi831HoXxxvZFn9LDt3OERGCITIrQpq5MpVEki5TtEy4RSlCFbW/x0qGhliFtnJ3q82V1B8gBpEUlTRff5TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7OicyPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7OicyPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E9CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751277593;
	bh=ii3kJY9zDIbaEgthX9XPeYPJ4feK2FmjMnoNYVJN5Zs=;
	h=To:Subject:From:Date:From;
	b=c7OicyPAB5VofcV9fF8c5q8IsA5a4Xd440u0j+TbSaO7PWeqgaVQl10BqeYGe/jJm
	 EZZ+rR7B7IHTocoM6keu2Kl7lVfwvXyO1FmzfiG6syqx076BnvcaK6y/VqLOgwO4R5
	 yxUes1Wg2+QH4cO72VygqQAL7lxKzCKFHSsMta+b1/zVgTWNhZ+tziE0sFtJptu4Kf
	 Upxq9H269W3Xt7brK7CTAtaX/iqgkbci1MZGeVCl8IjqH8CI4p7wdQKSc0DwNN2QxW
	 ug4iN4Rxeq19oZLo0uZBko3LuKfXokbm75LdOmpw274vsdVgGqi+uVD1L0w/NJ8ye4
	 1GoeAxAcXrztQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7EC7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127759357.8750.2029870323499865588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975d266731916a19b898025647e4acd9bea3fefe4248d9f62a820b8ea7cc3165
Date: Mon, 30 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751277593
