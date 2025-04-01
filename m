Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274C71EF39A
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743502194; cv=none; b=B1lgW8lXxokfyyu44hshAhzCPdbfGYSc/wO4jkF+fQnJn9DgPXdHrB+aFErxdlsgVMBjg63pgcatqMQxciFpeDYPFRKKgUTgHolBgYsbny4qLRVzdVGeGXHJAWZ0w1FanO9tDwa50QhhUt7dDL0WKVvzfh8Bx4/6S2BkNF7/Wak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743502194; c=relaxed/simple;
	bh=AT2rrp1002gItUh/U3YD/VMtOQ1BPM2GJp4Be6B/wvU=;
	h=To:Subject:From:Message-Id:Date; b=nQrogMraiDbFHnVZAUxbEzG9YfGB2QbaWU8U4csWu2kcj1S5W/18QT+FhGdpTlMsSto1Rif3Ln5flIJPT0/CHbs9Zq9wZLpH0c4XFGYGcuqVWGPWXawccjl+VwS7wcPgzIoBhOuAy/3S724tdvTrYyMcFvRypH7JtPD8BrvwVGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6M4qRWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6M4qRWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4982C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743502193;
	bh=AT2rrp1002gItUh/U3YD/VMtOQ1BPM2GJp4Be6B/wvU=;
	h=To:Subject:From:Date:From;
	b=b6M4qRWj6AYkzBaO9KwcX/XkR3TJpC4nGwvo43Cq3PwCOhTKy8qHFAQk92Raoknu0
	 h93z6vRBq3WJQVpDRyjIal0U9x62Sq1ODvuY2/fC49Hhc+Nm88wDur9xFm53hvzL0G
	 pjS/0UoqFrMn/gj0Am1QCmnlXFaE8PDDjiNc3fVUgCv16lzL3///i5MNJMMS7juh97
	 9dyZ9TW/FV1RLgwGv5LX8pYsiiEs8/RvkWViZNddNdnBBCROSB//3m5k1ZdWMjn88K
	 xOR+FrqBdnmnB7CLGUC3H7xIyCnDduLABcL1kesXdk5U3FaD66+xK6nBp/UhwwVnit
	 uSKlxsl4fA9wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D11C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350219360.10641.1017049097967501438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1510f4a0c2b996cacccc1f6173cedf5a178f60dc3663e4f514a3a796d8627865
Date: Tue, 01 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743502193
