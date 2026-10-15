Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433014766AC
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792093234; cv=none; b=p0EfAz2tRLqfbShkOX2ESR6EScyqiwS1Pb/QXL6B83A2QtEnRVl/eGkN+fbasgeldL68r3MunbSYrQAcbpN78gVEQlw9MBT+1BgOquT3O08bH1WiQnBzK1vhkrkt5ihjP52SWvfUoRRQtf6dpJCMeW+6MCpbBkiC4u4XMJtDKJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792093234; c=relaxed/simple;
	bh=XTsTLMmRVqTWSMef7TScOiXFAfC8TCOwsqcqjxMiBSw=;
	h=To:Subject:From:Message-Id:Date; b=VR7jyFnF9vxIdjCtVCncDQbWGKiBdsARMp6gdy9G0BvCGuL2EmEOzJJrLyrmjgWQlQPtSi9cCxc1WlXiNITUAbEoOXz17W3+T67dty5Xa7MTqqiRGwgIkuJboaMs24zLTVjJB3iZWiX88EVcheHLXFzUmKqly8qsm/LoRz72EYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ0uEExh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ0uEExh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC21C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792093233;
	bh=XTsTLMmRVqTWSMef7TScOiXFAfC8TCOwsqcqjxMiBSw=;
	h=To:Subject:From:Date:From;
	b=KJ0uEExhH+wJKsr/iko0/qUAb2boRe1hXidbtt9YJ7E9/1o+KKdDVw+R3htyAUvPf
	 DZUyPbuujoshil+688u4jj/m0OyDUXabt3aO0VXqjM5PZWXNE4kHoPH6d8Q0D5Qxlm
	 o9qAPru7Sq1wI6qzDG5/6YB4nvv576F6BOmBMnlgMZZq9ohspqYDcnERBEBpD6xbWf
	 H01bGCWYBmve+B4jZcDba5VgLC+1Gs3/rhh9XGjLQr8/EOgVJTZ3P8rx9+batoKGFm
	 Sb9Itvhy/Cvce+Z0bSS5VyfftDf22WUUi8d+3kI2i6mCxgXsNBfF44lQqdwXlnugXq
	 JCQ0Rv+W/3cgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA665CCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209323368.30339.8009878397694066762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e45f695863d8d75265bdca97fc722742499e4626a712c8c7427441189662e81
Date: Thu, 15 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792093233
