Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DA4BE65
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737390954; cv=none; b=Sp5B8zg7uhTy6T/ZwFFi9SR4NRIeR63ehaPSDYw/6OKNjP4jleG/ZuwO2AJJjXPStdKHrqTgh9dJZypIgTdv3u66CW/ABK7X5gZHJtYvotfSRLkWEJ5PuBMhXyUi/6MTmfeTLDEv8eycPFO5i/ftr0AqthGHPoeOCzOgd5/Ni50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737390954; c=relaxed/simple;
	bh=30Cfymjdgb+FmCHj4r8xzOU8ttcijTzhoc7vbA+dDp0=;
	h=To:Subject:From:Message-Id:Date; b=YiOwR5kOGjmjC5vN1QoRvqnkOkkdxMnfOd5IXIhB+VQzYZV+n4MPyuNgtpa4rB9jNV4Nu87JGF+WueEDmFMnyjH3p2Vq1GcEZRLlTpN+0JsaaOxaCkNs86sQ3vPovbieqhHJF0XcX6RA5QKJBm83DgqtFPVqqr1+datjN/geIA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucHE0Rix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucHE0Rix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1485C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737390953;
	bh=30Cfymjdgb+FmCHj4r8xzOU8ttcijTzhoc7vbA+dDp0=;
	h=To:Subject:From:Date:From;
	b=ucHE0RixmaJta6zG//xksqmZmye+dw3XcYflxnOK3Z1dmHD0yiu7CGLdBwbUfGIUk
	 GThw+gA7qjdaCbgQjV6iwIPu43ArqK5Tkib/EXaEChGwIXRdgAPVGAWfmVwJQofhAc
	 7mHfUBT6dF1JcvgJ1HF1abOS/pqSah8aYqSWK7pmzo+X46fedS7/NxcflL3nS5bEpf
	 jQRW8KctbrFrG/6vfSlgQmKbEhuhZa7F/8i9OIEMLHW6xxGZ/cH/rcIHOaZnCRVvxm
	 UJops8diL60pnDow5L5El++/x/hlYY1T+UyK/4/Z9u33G3Nm3yDfsmAZliynTRkthb
	 rlYfo/7/mqFOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E789C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739095357.8610.8688428636434262800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7933d6bd3ff66ebef50767e531a947ea734d148c79fd23613db4b8f9d3d9fa2
Date: Mon, 20 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737390953
