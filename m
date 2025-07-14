Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9381FBE87
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752487794; cv=none; b=tagGGs/ryNKtVc7FOTBtqHtJGfonOFxHsdfsReQkfZ1h4MUf1PGFhYgD3FnAek7Evk1TZ8zOxxDY7dvK0wbLSflYXQiolaPfCtikX+GE+w9Ck2Wm59xGdAt6rXHCiwIc46qjHOXfymJ3qaw3Hs4g0XNTo+HSs44yUqkoZcAv5o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752487794; c=relaxed/simple;
	bh=4sk3i7wXtefVYL9jTZUigVgGrc9Qf6a6siI0XQvOCLs=;
	h=To:Subject:From:Message-Id:Date; b=AuwcgEkOi41Vvc+xuQzOnBX63OgYGZY2ZOvUr5EsIX3wRzhRRFsPU/0qJK/AIfBu0nVB2Q5evZcFZD390LMy7Ozu0Wj+n2EdnLLG0JLaoOdSrk9UjtmbRU1eCIlW2O8Gsni8Y9jhEDXEOeqPCc86q+VEd5Io2TlRLKf0m6j0rUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpJVqWaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpJVqWaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE443C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752487793;
	bh=4sk3i7wXtefVYL9jTZUigVgGrc9Qf6a6siI0XQvOCLs=;
	h=To:Subject:From:Date:From;
	b=fpJVqWaAskWIfeCylRRZlvI1PEiLmvcdWTVWA/M43oALKEJ504QGVhU6hitaGTPAV
	 rwGdI2qKfaYkdJWtfDxmVYfWffmdP84ojKjmPZkzMOOUTxElHCpPG6Iz2gfngKmg/5
	 Men2xZOkwYe+kYtPyffqJi25xjyBW6Kw2s+hkGkjtwPnJb71gphUtEJB7DRyCy0Tkr
	 bgEV3EnuaWPBfU6NDwXx3fNruEDF4UEdavvJjidHvH/UsYtSemec9iuWn58IYFrIN+
	 ePh8wlRs0HXbeKcBPoa3YuhPzXlmWsy+NlrCx3rvfos+7yfA1Q2MEyO5CEmJMG+J/H
	 4jzfzc7RcKfhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A877BC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248779366.22183.7800734481032038522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7cafb96bf42c3c1587378d2ff77436503352d71338c014553ceff8df86ec386
Date: Mon, 14 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752487793
