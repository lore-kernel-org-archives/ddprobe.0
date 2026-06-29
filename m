Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4200B2F8E93
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782755914; cv=none; b=lZ7V3K6ffZd1HXGDIT88Ji4bnK8KUsajGN+CZ2pLJGDwk6huLA0S3gqj+6qYFxQzgvXlfB/RDGZS76UEIJoaYHOmjs0jFM8/o/xREOLLp//KPDy8dX2QSI6mQtdFK1KKiQrPf0q8jpMYJbH7EE/5DTJ5iey+C3G96uSP5c9Vykc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782755914; c=relaxed/simple;
	bh=70nvDhZKu/CsFauHiG3Aybg8f8ySzdEL6wYApTuHq5s=;
	h=To:Subject:From:Message-Id:Date; b=lkxeVhs43vKZnDOH26WDjioQ2JFT3gtz2CRag/0OagGhfRPneUOoXzl8kfNZ54zqLXWAUy6oZ9A//lxF9cuB+r4pUUUDQflUC9kGglu+APcLk9T6xW3vZZ3ggqCvyjfJaKCei1TAm928KohoFl3NxYEnUtT+Ch00BFv/WxIAd3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmgZH7nK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmgZH7nK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B6BC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782755913;
	bh=70nvDhZKu/CsFauHiG3Aybg8f8ySzdEL6wYApTuHq5s=;
	h=To:Subject:From:Date:From;
	b=bmgZH7nKn7Y7FyS+6I5IAA+GgzRgnlY9OYaUroCWqKZ/POWuQ+qPumocRZrd0oON3
	 AuQuXOCmm+V46XLxh8kKYC4+aYtSTdOHeUqu91XqhZm+b6WNDYgfWUOxJkxqvspgTl
	 LfVcO3+x6S1MiHctr94Hmg1KdAkVy6MdU0hheKND1ZBmswjIlgBAZ5/ReA4ox4ssGn
	 1lJSNpapYU4W77ySUjUlwrR1J/2gMjzYCd6R4leYtAdeBXwjcBow2cXMeq+bmOQqiR
	 xng7fi4vRZN8YhNHr5R88FyTJEcgPnMwjCfScRmQ2+ml7VVbwaiCjlX9WvsTiCfV+m
	 o6XuBndN03odQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A71C43602
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275591368.18235.15001866520310959939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3433a998ad95417ab2574ed186ca57ad5468c1dfd5032290be76f0492c48af
Date: Mon, 29 Jun 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782755913
