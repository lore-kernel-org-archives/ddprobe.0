Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFC53515F1
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787182234; cv=none; b=H/x36QDfR/LxdcwWxNmkHnj6tN49PsE51or6LUeySE3nhPeAb+/4ImxjvUkq6jDx7364hqpwXKb9XmfJCejql1UX06SajdrvWKSOBUHh7vSYD4ehBEf2NuTFmO+CZ+F5yae6KYIBFKCB3W4+X5920qaN8tvncUYK70duUEcjurE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787182234; c=relaxed/simple;
	bh=XGCfjGRHkPFjMFu/KP9DsBLuUwGRreWhzwQi2IxGdc4=;
	h=To:Subject:From:Message-Id:Date; b=rimS0SoP2GlobjUsw/abdsC79Fm6k0ZlRI2PDqdSxiJSI4dIKJ2I4KemjN2f69bLLCw5f5M08HKdobD9L0al5Jc4yANB85PKS660twDQkf3nzakP2Vs43q3v82ijIMYmfIQlH/T3gk8gfqY8iKknICnoujpM1f99+ak+knZ5R8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juvYM4YN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juvYM4YN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D291CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787182233;
	bh=XGCfjGRHkPFjMFu/KP9DsBLuUwGRreWhzwQi2IxGdc4=;
	h=To:Subject:From:Date:From;
	b=juvYM4YNkkzmUvuyyKctxe+iRKaLivt7Y+BetELXHFumo1b4drDvkOSVXFeldGecU
	 fLDQQSbrCS7Br12cQ8xWfS0xVQAtrENrgbJMelDmoXNOHq4esMmkgF9GyMck8nCzss
	 VcmeQ+QB2WYOM80mrdbLhpepdpH+HmpUQnRULGkFyQ3snOaMeg4lL1sgQYTWL/mn4t
	 qMod5iMF0qIWrGXbhST3KIuyR+ZzTTfo4x7a2WXGZgbeyANQJZFT+v4Nu+glrrg45W
	 jd+hYuJWfBEdWWdHWxbT0dK0ZZzRfGVlaOj7SbrI79roOunqrcNwbFUYqhl2gajknL
	 Susx5vh5xslWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB549C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718223369.32269.5576989662255480568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3acf64ebce849f63c6de26a6c36763bb7e6f10bca4cfa678129f037925046126
Date: Wed, 19 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787182233
