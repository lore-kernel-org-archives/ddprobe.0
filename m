Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BD22EF64F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775505334; cv=none; b=MHplQ1D0DfGot4pcUPd3x9rRMjR5Qw0X/HETcP3+Od0UusQvA6Z6bJHkn61NeOKQ2JflJe3+Z5zU5xRkiAiGyqgBd36lhPZxnwuXxJT2F4YEuDb4J/XuK2ffII2sO70cYBnJdfyELt+zrW4B+mw7K8GYHyVg571kzcoD0aeR3h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775505334; c=relaxed/simple;
	bh=lC6lTJnqQpkWU36YAGqDD6sEnUhi6ihF2PhTigmM4wQ=;
	h=To:Subject:From:Message-Id:Date; b=gUxmgEVvZSxQVIUBfFPDXkfrijfi+2cTa07DJK/jeVrzEezCsaFt17R5HPqiGzCkRCvvfw4eoUJXj0KbUMXj6+RnoRQv6kcnNwh89rEPa65GxbIktXtvmCBZvqaBWpr5tBs9pfu+IASIh9+pbklIKIQO0fVaGmfhko3FS8ccGzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtfBkI1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtfBkI1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD474C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775505333;
	bh=lC6lTJnqQpkWU36YAGqDD6sEnUhi6ihF2PhTigmM4wQ=;
	h=To:Subject:From:Date:From;
	b=dtfBkI1U7JhVXaDP55oYZgIWRng9pPYjWWZ9ukFPNWghy2O8izc7f+yIdS/tJF7Ps
	 DGmgPES8YVZ9mjMD94kLhnKINghTD1jB1Ancj9A8iKzSfHvXItBjBDMu6tWaFWoESo
	 0roAMcQpw3NF8NQnmMI6b3zcHfi4ldwG5tlcQzJ485ua2ksJyXffXVlbmcjiu+t8yu
	 kmeITklrwnC6dEOtQvHxosbcAAojRZBKVJq4R3+DolOg6K9DqKLQMpSp8TUgJx8aoA
	 DRSEAYAXl8b40Hb5Z0u2Nn+iz3YaJgl3OxihodndNGBgrcaOLjvo68f2YvqK60WS+w
	 JWngnVyvj2JTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA153F46C78
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550533368.15276.15202770787435783452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63bb025dcddd21709f3f21a56f989b9ce1e1d32fd0f278edb4714e1f0efad6a1
Date: Mon, 06 Apr 2026 19:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775505333
