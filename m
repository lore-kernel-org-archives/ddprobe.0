Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD701FBEBE
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752041993; cv=none; b=tXji/jQ7R/FF0JWOUkYQN8Y1Oox0X1CZjUIGwxInfx/S/NyVtyfEaHWjr8y7U/gvky4CzVXq9qRHISzWfdobdxU5+ZZXs2noAS0QTkK52hG25nHy34FlNzRJyzU6vX3NOEBTQTsaaO0HmCA5UoanMMBayYOSjkvEjuVFySRJ3rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752041993; c=relaxed/simple;
	bh=DNEqsom5KOezyiIWbgfR59L0lawj4NUgdXBPwZ+w8II=;
	h=To:Subject:From:Message-Id:Date; b=IFgtY+CVKkDfyu1+t6CcO472ZZ+FDnlb127SNA0xwpbwvTL0TvaMFsBeR6pEPZq7HudCUnl6CcRzwXtX14q8hUBzskXQmqGCuyOf+kz0Ya4dGsAgL90jbqo9Esy8/ITQK9xOPmFqjZuyfHy/Ox4nv58W7xQ0qu4Yrd/vcjddmss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoPOUOWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoPOUOWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB4CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752041993;
	bh=DNEqsom5KOezyiIWbgfR59L0lawj4NUgdXBPwZ+w8II=;
	h=To:Subject:From:Date:From;
	b=BoPOUOWcKF9ndKZnR0JwuLUklFFir/wjtkefXxUIVALzwxtS8Y5sheGQ2ze1sYw09
	 re0pWXHHZzYcc6ltKA024CYRpm8p54LtgspHtiSGWTbySixPGFWwmF/ZIPf3zwy2Xg
	 1LoQM9kcT1MD0cl2XAFHG2oBs7P16fYUlpMJ8664T+5FRjdA/gpFUyq8T2EaCZWfzn
	 6WlGf/C4nPxhWCLIfL8aSQW+928/T+WPGfIKKJBBnFTf0RRPV/TA+zXmQ4TABSchsK
	 3R2h11OXc9Gf70QJ/eNZDr1ns28J562nvqQFrTB0UPB0T/AyJOgAVhsx7oqJ7rNRkX
	 XuXDeYHMYwKTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BEC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175204199358.19618.663960749942659411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb48d697a2140fe4084dfce8f1ca6188ff822a5681a5945cb6690ac90f6fa0f9
Date: Wed, 09 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752041993
