Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EEE1C36
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751218794; cv=none; b=fiOItIWyJERlTdlbzt85BjGn0r7WjZiSmzsDIpvCAAoa0ILb1/Jktjd530qcd4Y2azVqmo5m2tJGVUya8qukPxghvOfRiPeUjfgNraGfFcXsuOf4MJlDWoGaQ3nhLfGfS/Yyj0gH0j9YPd1hB087biRH0PqDuOD3q05i5ozAJDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751218794; c=relaxed/simple;
	bh=qYLY6lwrMccSr9IruGETvacs89q9eBy4STPAty7YoBM=;
	h=To:Subject:From:Message-Id:Date; b=cJEYxHykAXiCpcSgiJ6niwAG2OOCvRyLobPfTndHwjDFR2xdkqMDBTT6z+HVMvL0tnCHOFVKEjVX8WlLh0F8pOOqut8Bk0nOxXJ6z7OaSgmmxutgmiVOqaJtTZFR2qUUY9MtN1dr/AuEW8Gcd2vrG39feZMYDMt3l2JxkXe3zCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtfIKPtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtfIKPtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A024FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751218793;
	bh=qYLY6lwrMccSr9IruGETvacs89q9eBy4STPAty7YoBM=;
	h=To:Subject:From:Date:From;
	b=GtfIKPtJU75O/jRYL9ppyESmfTHHoSlpZaRQITqnt3n03tmmNVP68qnlJ2XKskM+Z
	 Ill7kvqAC6kq357Z3egDRD+VvDWPGbzBG4qWc6JTXPzW3jGviDlvBpiGXh5Am0gpKN
	 HahC2Xt6D26Om/7qfUYoGlZyz4M9i6ikO1nvxw4AhxH0qhCFOig1vumh6hhsvknW9X
	 /ZIiu1EGbTFSo2eCzAbCbB9FOFqeCKA2zAOldYeQnlj6+L+5WUkY8se0v/3nE9icDt
	 8rFLdC3s1v+bmTwcxH/PNzKFTQi2JlXImUs06A7IiHztSLP6xIk8wLJT+V/V8n+0YY
	 GdUmmsDnyD63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2DAC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121879357.6356.13253503192621757345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b814d5b8853fffd86e3ae33d64fa1b033657506ac1cc352d32dd12f221a5fea
Date: Sun, 29 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751218793
