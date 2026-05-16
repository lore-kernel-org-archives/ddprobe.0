Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A54229D29F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778904634; cv=none; b=oIbVncTEb0l9aCQ/iyjW5QJNnF+n7VeqfwmCGajdwcWnEwC38IIRiLXq67XG14CBH/3J4TSuqb7wgbTSoN/vkzGrJ538HUaIcg7zHcZD9GDe9vyx12YBjgByVfGrVJ75HCWtdrU6Wm8TmIHeXkjuT49nDnG6ehrqd+Z4ckDgynU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778904634; c=relaxed/simple;
	bh=4kYVh2CFEpxcUSOnkWS1ZrYFk1HiYMaw4jXeBk+GM6E=;
	h=To:Subject:From:Message-Id:Date; b=oF+b1AGzIAlGOsRybZULwXKNR/dmSv/AiSS0Jm9ZYd7M/alBuNhRbs3ekh4yTnOSUHVkTPmrrL/QItPvlL/8gIwjRi53g4T8eDrm0UeWNZS9heSBIbfUdvcAlNA75+6EWdMnOGnRVCAtf8cTpvZiAUD/gvc5G565mqweraqVcak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpJkChEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpJkChEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB69EC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778904633;
	bh=4kYVh2CFEpxcUSOnkWS1ZrYFk1HiYMaw4jXeBk+GM6E=;
	h=To:Subject:From:Date:From;
	b=XpJkChEz2THzbdKgfC5VJNQ0UZ2s44b9G4DhaoMo1g6Suko+KyV5romA1iKXNtEp9
	 +4rV7IjDRjtlwPpWL6gcolqIfHUj90aJN0KHFcRmdjjozWHbMtPQXQGkjMV+zb63i2
	 DpMUArI/WPZgBXwtqWvQFmMOG6uFci4e/Q48ccpx+pnqyZ/QQiDN1nBKZ9rVwXm7LF
	 OCslEp17IWbFpf3CkkpyVp8c2AWqbTMwvMoQ91u4X346PZhXYEXXvd+L7sZwkjy7TN
	 bBz9QT09zef9xOotdyb8syFNjOND9kozfVyLhiw9ZcoGbFotEWn4VbUd7QFqvKtWdD
	 fog0hptZAMu9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00D0CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890463372.28857.9161344145591717644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d74d334060328e3b1df2b860b9ab30a3eb8567b5d21ba7995508643727be9d1
Date: Sat, 16 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778904633
