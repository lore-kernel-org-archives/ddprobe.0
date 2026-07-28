Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B68B3A8744
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785215434; cv=none; b=hPMmrsmU7YPqGrDRpkbwbD4M8VO+Elky0RUFehsvXWFTk9KbE2JBWIPvkVNvrM1sZ9wyjT5zcjsgmP99s7GsZNKWQUiA2qTjH1ijpJeA7mJQJAeMmeltO0wLFuVZxFJsmgw/6ynGoA+GkHsTHneN/cdy58JfvjSOYF2kr4mwddk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785215434; c=relaxed/simple;
	bh=G/qzai+zHL+GFtOzFzTywPphfzpm3Fa6s6jlC0F30sU=;
	h=To:Subject:From:Message-Id:Date; b=K9WDVVZYKHlp/u6ux7ElE/fjLezKtTCZdyBceS8BGXKurJxcGYkjExxX177QUt2rFGDPO65PqzcE14TlpbOXAx3lUTdF37CjTmVnazP4E6EQn5i75/K644Q2pC+EymBcH4yP5nxIDxzJ8sVKXO4ewQNEL7QF9oL259qfjajUzVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hfhw/lkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hfhw/lkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FB6C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785215433;
	bh=G/qzai+zHL+GFtOzFzTywPphfzpm3Fa6s6jlC0F30sU=;
	h=To:Subject:From:Date:From;
	b=Hfhw/lkqDaiPz2FTzM5Wmm4BTz/fxG4DY39uVT9SaX1rKXtUzXEh3z9f5ASrz3hed
	 Xbkz5XhzBbneXMRRXD1+XidGxafpH/ca17V0lVzYMi/ZT7N/XuxQA5FJKn7Zw7PU1i
	 /TK31Sbj/+sj8aW2vRakhgGp0jNjBz+YqcXkBBbKVSurZgUT0MP4QPokhI2wr3KMsU
	 LI6ra/cVQ3vR4Cvx3dvw4XbhJhfx7H9IAbBv3oPg/RlE3Nhd8awSgh4af6i1/OGdeL
	 EUNJ3MLachNmjsGkOkK+EqvR6d7Jh1LgHuLWAYtCIeyGVxu2/IHzqioSmLddR1cuC4
	 rAYO3mpOF0dvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCE2C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521543369.13796.3801110173066028535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c2ccda3dae57648a9baf81fea1bd60b2fc7ca435f347ed8e5ea7b9a9c581fb
Date: Tue, 28 Jul 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785215433
