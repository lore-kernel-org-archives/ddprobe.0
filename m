Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2DE7DA7F
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730826354; cv=none; b=ckorRmyApgdO9NjwKB79pVw8gXosqw/AKoka1aLrFNKb7f1bru4a0HcbJ0JwnQtjXIsjKfGeYEoqJOsOQL1B4lj1zX3pbFvoZEaGCTKrLsOvFOa9QAvECXLUhRuBLy4YASgXD9IYT7H5APlosvCnedU6l0DKHb75C/rSbiD3IEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730826354; c=relaxed/simple;
	bh=YlVPfhbZSKHgGVhR7sSza3kE/NsMbjzF43PDOnkxeCc=;
	h=To:Subject:From:Message-Id:Date; b=Kaf4+F0yYmlX1MI29pbA6TmVIVMWj1Eqb+tJCVQ7A+ZKUPrsFJQ2aYzFLMbKrFXPHztxhFbgNrcmgd1/4uuDD7P95nMcN09bWosU1l3ATuzQyVErPUdKWhWMah7s0EJD3OlO+svXPQWBv5pl9sRp7FPmli9rIJ+kqOIVt8+mpYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o94WUJM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o94WUJM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F34C4CED2
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730826353;
	bh=YlVPfhbZSKHgGVhR7sSza3kE/NsMbjzF43PDOnkxeCc=;
	h=To:Subject:From:Date:From;
	b=o94WUJM/y20po71o1ZtARVwSktaKQCKLwjv+b2lJu3bbzjDjI40ZI8PIAsnbPWubx
	 nKfOAk4Ot6pCNUXvDzjTcGKR3cAEYh3eiXHbMmO2eP6c5t+M5XVS8cucixa42cXvWB
	 lQyGHklL5ynvJJ/iWHPTo/hpM49H/Jyl7YMnYPnRLJewSPBHpw6ew+07F1GKEitFaJ
	 nBFljaX8ySxzBB3fqUK9GJ3cYYyL4KJtCcOHvzTfcYT3JPfxKu3iO4BNufSQ/Q06GZ
	 A52LJ9HC6x+5awwRPDjG5J5UfnalC9BV29KB6B/9nW/FQ0GwVjIDca7rjWgOBUFEhI
	 mzNvAkn7Vqy0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F22D31768
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173082635358.18588.6008232111043222487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93c01b2f76ba38138886eff1d5c5b1469eff78342562f7d153510ea90d860d1
Date: Tue, 05 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730826353
