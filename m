Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5390035975
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787944234; cv=none; b=Hay591Xz9tsChm+mCeweWWE/LTTQqyl6TEwr+VrGAG63AYEkiYsUllWAsLuMM5EK7yN0PsPvB8xFj9hezKiVa/Xa0L4j9+tMzxUhAfPyB+v8PkS+00/LlHxEv8v155hXNgEh/2GgntZQXKWxeqm78MW9DOUchYDIgVO2UcR0wlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787944234; c=relaxed/simple;
	bh=4VwdZozPhYlTK7InkZNnpZZa8tsEw4LicNw0dLzfBko=;
	h=To:Subject:From:Message-Id:Date; b=gEz7NDOmcG72eRfBG32pU+axLOFHw7BhIMoXqwlIQPK1kWxuNVJN6WH0aC6NfzxI0A2riFPU3kTyBVjFPeoATDWYl3xecE4GSgkBS9K2dyUCYWmUwSqSyo33owgMYv87JwdtLkU8rnLhY6rzBtWfPr34hPIjRM5HVG2yRvceG/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDW7utnh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDW7utnh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3790C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787944233;
	bh=4VwdZozPhYlTK7InkZNnpZZa8tsEw4LicNw0dLzfBko=;
	h=To:Subject:From:Date:From;
	b=XDW7utnhjhYz0aYbjj45E3h2330HE3x7uYqdi9x6t6b3j89JdoCeZ5XwQ7JPK91GP
	 Ih3SLTOES5rOELWvG5UH7ya6jv5+LL9AFZl0CDEsYNoOqv5AioMx5NX5X9AdIZNzkV
	 3YZKmcEC1Pwud8mdy6NeFTtmGyYwBKk2FvXpbXdTRfEmxiPV6VTYLP5r+wRX9zngwH
	 Qk1iyNYRpYpl0l61myTTbrYBqd89jpqS/u49vKisZ+ww5ihrZeLaONY223LfZ4t2j1
	 6gBaRvZX/Vg97PNaxK3LgxaCzonEheYMk7odkfUJV8pveqP913P9lPRDkPkoekXrth
	 5wR9DL959Gmtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE620C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794423370.1597.11529392008731677313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e58d42ddeb2a06d4c49d8df944635854de8b4610786657fd8b7ad2dec9fd3bc
Date: Fri, 28 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787944233
