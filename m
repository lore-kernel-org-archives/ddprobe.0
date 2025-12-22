Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE9A17A2EA
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766371434; cv=none; b=l0TznyzA5UnUNo3M/ZyCs7J5vl+kbWYKc2aypLnDWEGJ5Sa6b7DQ6MyLVLSu4pdOmgT/vqmmnT5tgO+53Xr8ViLizW2exF18JRKSJxtXPJJgJl+jBS2nJjjE5Kq0TD15FlXOpjwm9YsK0Bl+1csoAk2ly6AuCWi77LlpAz45cUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766371434; c=relaxed/simple;
	bh=5q29KoeqjQhnmFA5czEf26avAcUynY3aNNpSXYDUxtQ=;
	h=To:Subject:From:Message-Id:Date; b=pLgNIlomSNLwdmx4DdvMfroXrauHcIJWYCAxlVZw/t8Et4ER/Xy6RXpEzmGwySsFrlss63BCZcVvxkHlwz+PI5yvtZ5rZOFYGY1i8Vx/2t8QLuUyDYcNgOb7BnyH6ewnc9C3nSAZMZUu1x7MpI4cCFms6Yh2Uyl/Ynu1f91QhDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4TWSHUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4TWSHUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CAC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766371433;
	bh=5q29KoeqjQhnmFA5czEf26avAcUynY3aNNpSXYDUxtQ=;
	h=To:Subject:From:Date:From;
	b=T4TWSHUCjSJCosd8QH4FmJp6AI8LS2uYtzsUUNJ5tgO01njJQBrTgFrdVc//7V2Yg
	 79F5zjhxkorZpwVJiTCHKW2HQXq6OMZHVI8Z4EQ9CTiso2Soc4ior9x7Wu5f5/62NX
	 MtJ7P1dGffOKtnjhNvc/sIQo9i13Sp2Ka2c3E9jER5jRYv/2fpOA1mDZ7nKFVEWRJX
	 19mBx5wCAsPpdZZw5R9s1PFss4JFHQ304k+h+5PPHONxX9JAexdchuqUEriCffN5y+
	 8iEVPZgaLJo9cVRrosArXV0Ypphlf9wv0tuxDTNWQisd006BagzpvM3xmyqih6WRHX
	 X7VgiEbTYt+DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901DDE66886
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637143357.28222.12825084993069160158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9056950525dd3e404e3f22ec30d1570a8233b9dc1e5d91f00ab586a7c3c0af5b
Date: Mon, 22 Dec 2025 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766371433
