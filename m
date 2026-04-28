Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1C8370D55
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777384054; cv=none; b=N9i7zc/qGa8l2RCWYaep7Gz/HOuS/YzVALTnTZFsDqmaNCL+UCe9ODLyee4FvFdDgu3t4G7U+HAO8vT+WIb+++u3cpSTNsSuhub5ojXB77eSib4TT2J8TUH35WEz7qybKeEUVcAW/A0enQHSXQrt2ZWcBaOlpAmtVAmc1UVuSs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777384054; c=relaxed/simple;
	bh=5jHyrEPQ6745xHUoAwOnogJnjlaGKK4PjjAXEiKUl5g=;
	h=To:Subject:From:Message-Id:Date; b=OUL28aLnaUCiXJbkVS6zjCYYdzw6DvDgTuTixQ6UkjzWrsWD4TIzYEeyVhM+HDNT1OZahxfWX4HDgUmP9rb5W5ezIk7lRjzXdfgwBQ+HEG6dde6Cwo8M3RCRY5QHUAjbzQF7PtGt3THwQdtDhJr4MSlmhnYGku/5Plm9s3cgRdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbO68OTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbO68OTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3749C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777384053;
	bh=5jHyrEPQ6745xHUoAwOnogJnjlaGKK4PjjAXEiKUl5g=;
	h=To:Subject:From:Date:From;
	b=XbO68OTXwJ4q9hc9JLAINNSAeOsexKYMwUe4DpZFJFR8ftOlQHB5cjo9yIZxMEoBA
	 xS0sSbuat0auwa+TK3U1m5g2jJiVcSa6JfOLbcISoz8529vuKb2pd5jRohypTe7ve5
	 VNQBmbvcrSEUMWgNCf43hInFigCNFW/7M8E+2f5/r1TFZo2dchnEVboG+KuaiJ3kiF
	 VNEwq3Y2BH5zSp/POgQk/OTGUiKONkyTD7VbylocJL1pEkUAQb21KBF9F3ZzqAJivD
	 fY4EKuFjc5/gIle/IHKElg4aZII18+cQMuDkEbMlYKGlNW0HNNRSQUP5h41rlCKD5E
	 6ulYUGu4dUkAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA160FF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738405368.15212.14725436532892896121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa95eedf604f1f0afef4a9d2bfaa8d63402545c2499449f0afebb3c4d709b2ba
Date: Tue, 28 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777384053
