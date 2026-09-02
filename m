Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB26399D00
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788332434; cv=none; b=Lpv5MVo69HsJyEGMJgU187gCFIBiboMhUjyurOS5zV65LNuBi6tfB8EHzv7XlmcWgtTd7a4W+K/wsSHJAvJWp6COPRXtirVLjJTSaV9ozaQXGgYZjAWCQZl2FpPsXf7YMQdkj0jPoGc+y4HpJyX7P0PUXhu1flsBl7cm+GK/8j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788332434; c=relaxed/simple;
	bh=xYCEKAKzqQ2xCT6qZM/J+6IaEGdBdWXjnM4EKFPk9WQ=;
	h=To:Subject:From:Message-Id:Date; b=rdM7chyAEnp5vGaVj3HARZi57jgjo4UUj7J3uZzQ07xRkCBhi9aHi3QsN3HarGfusfdcRdSQWBkTZAaIddsbXUt7uftEEWj0PorEbtnLLxWmg2m4uttDHhZPDBLcl4sUhM3AT0SPeaZ1xDL3ItnVr/cXfwGYde6MArJWwedspF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrDEh2UZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrDEh2UZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3369C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788332433;
	bh=xYCEKAKzqQ2xCT6qZM/J+6IaEGdBdWXjnM4EKFPk9WQ=;
	h=To:Subject:From:Date:From;
	b=XrDEh2UZVD6CrK7cxxZG5m7viPZ/QZVbenLJHSa9iXG1i1WTqrX3o5xyflodMqubK
	 A7qgOaFvfuGNeXzLjMzdnMhsfPp+PVdGjUUT8W3hHcK5x51PZFrDH6fB7eR2lHPhiW
	 9seofNQK9CeOXFMWy5gTIBsDDqmTVQCRulqrMVxeQdds6V/jYSj8K61s121/uf0it9
	 xDwK6+KO1ZzUmQwTsHsl898h6GIZLWv192WXG1oS8JIZhg5JadOJyPG0Y4P3LW9Uqz
	 rlsNTAqaMa9OByIFoHgtswbKuy8MH3N+bFF/A0VlHQC7XYMQncoAoH9LjaaI6NJtko
	 btJELreZSJyMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF980C61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833243369.21222.12872393254427323735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4541a98565622d293f2dad370c6d9a8ac54c5ad8f2f65e6abb64f95a741fd5e5
Date: Wed, 02 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788332433
