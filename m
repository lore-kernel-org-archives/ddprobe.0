Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4989164D
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734784554; cv=none; b=rIX3vo0MkNBVFbv/nlY6z8EG9he3W208CZy2/j8OjUnA+srZXIDp0k0wqswuzkJrd3G6iRXXKgU4/r6SY37+2+LTeKWY64MrM0n8+2CYx35WO8yNW6n53WTJrwMpOE7FgONIE1YVJvYF4TUow2ClntwDy0TQWpfJgfbb8q3ORjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734784554; c=relaxed/simple;
	bh=t94ja3bNv6GdiPhKE9Lix5o3JCPv7Rl41bL1OmLwdys=;
	h=To:Subject:From:Message-Id:Date; b=TKfwt6J+J8lA069vzNSv/KNw8U1LhRY+b92PbNbwVz2yQAJqg89Riva2l7Qc97qguiw5hSskb0bnezVuoRCi6JgQuAsWFxV+Dmk4aJLho6INyWtTpTfqTawjTnwPyhdE/vQtGY5jqMUgMSYMuHAwpDOGZaTd+uHAHN4NwO4rxYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhBJ/oD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhBJ/oD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22BEC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734784553;
	bh=t94ja3bNv6GdiPhKE9Lix5o3JCPv7Rl41bL1OmLwdys=;
	h=To:Subject:From:Date:From;
	b=KhBJ/oD7ZhMu64JcYreILYbYiL+liMmccyWCnvrCPuF72QJ4xK0P1OJNmysiakR96
	 mVEdCm6odFm3APslJoBGzCd8t65ohLqecUGiuMJjkqgm6viXVK3EUt438p+MtJnHop
	 onCoWhHy31al5xQaByUXy2CpWUWmmCkW2sWKj74SJzYKZC5SlO98HmpBNSNGznqvsb
	 hnXpQXv/nOb4Q1wcBpEi8Blh5MOxvkrEWNYitZrJengCoIvEJo8OaBaGwLZarPzKz2
	 FlcwKnC5kXHMMSbC4pHU/Fs62we6DtR11swfYa9zh9NVkl9/rCQG4a8WpHvaP/be2O
	 92V+Dg/38KTSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04DDE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478455365.7598.17793960963211029267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2694015a14129fcc122f7867a475557b247fba62b69d3fdc23b7b3136cc13dc
Date: Sat, 21 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734784553
