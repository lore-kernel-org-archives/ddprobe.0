Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28709224229
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741595934; cv=none; b=IOOUNuFizrtBK/V4S8uIU86+l0x/0KWltvVK0zaGJusHqpeUxgU/kMdjnvBERzoop3eQi9B6f6LfHwRZZ5QEP+WAjuyCUwjNUFJAqmf6NQFv+WqOnQORoukBnd5wCsYgbPjpFxfp820mhSxaaBTrH2CLxzCj42heDaUC/CMNJz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741595934; c=relaxed/simple;
	bh=88Z7WtL/j8MgY6WxQM8WO1OfQwkf4G4ygiRw7y0WmRM=;
	h=To:Subject:From:Message-Id:Date; b=UKWsU29WNcNjAg2vEdKlA5yyQHgMcxbIgVW1BRntf9qlV6HyPWYa7InfwpFrdyHhSIG+IhFhJERLQbUM5DG5nfL4PfgTPPY1bUuY01Z+Z4fDP8eoTzJKg8AROEjmTN76hlENt837hOxaAdqmb/+A2xcLrrRMQGoEAooTEixsRB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krTAZYqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krTAZYqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F06BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741595933;
	bh=88Z7WtL/j8MgY6WxQM8WO1OfQwkf4G4ygiRw7y0WmRM=;
	h=To:Subject:From:Date:From;
	b=krTAZYqAH1+kqW2BzCCG4B0KIL40OBY4NwVncAxe53JmRckp0jLCR/AKsruS9FIF1
	 UubJUSHKWnqBRMQMtLOKvvLPGJ2+/Adl/VgpRHobsew/Lkxt/jjSrQ4aJM3LUqQUR0
	 yAKeANXDUTBDKPBQT4YrTE9LZsaemwBWKjmjRxOrqdQ8BxVUdMVjwKzM7AwnJA741I
	 wR9iMDc8wkYYHa5RWXzJ7PeOAER5c9q+6YN5y86c38OX11hhQZLpwxGZ+JhbkQFa4B
	 hrQFTRZHvDJMsJGO+5DkFgZoPhI6U9tjxlPGiNRO2BqtkMkiMYhEoN6LTJBKMkRmra
	 bIwZ/XOeGMYMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F7C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174159593357.18629.15586944953359042062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625ae94f1d21b6b6905690cdf084e3c8a05fbdac1fe7a7d3aa3e92e1a1ce8186
Date: Mon, 10 Mar 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741595933
