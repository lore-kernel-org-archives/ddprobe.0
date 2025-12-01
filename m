Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C18729D267
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764586974; cv=none; b=t1GQhD1rksn45fnUxDNmPym3wjGz/ObcA1KQlMcklRJxeyquL787eRqmXtXm1KGcZ6bTywL6qwBqEK1Zv5HpslMPBCRshk7zPQK8S7DuoGtzJG9AIfOKyrxiB+MCqYwiLzKDvBTFnGYrnzoAAB4t2PPffgQU05WxbvsuH/xTI+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764586974; c=relaxed/simple;
	bh=2E47TPLZ03lIFT7Okh6jZ/nPokI+T9RPxxladc8iZ8g=;
	h=To:Subject:From:Message-Id:Date; b=M0LvEzBlcKiwZ9DPUEB8NJEcq4f3+2vQB+HtVN/A1n2E7PFOeTiYS8+kbr5bQB1+6VXFHHCQWcivYk+7vr3o8VBDKGPOn8Otpyl1XdFeYBKo+u6gJoK4RJMywVxla/Cz4qOgVXCCIm9kV5hLYWUYUWbF0YAlz0QgbPmDBPN+swo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+YZ2GqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+YZ2GqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E45C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764586973;
	bh=2E47TPLZ03lIFT7Okh6jZ/nPokI+T9RPxxladc8iZ8g=;
	h=To:Subject:From:Date:From;
	b=m+YZ2GqBkWoQT8zU5nJ9YYQDwvHcgE6biQAsg2LNtPjt1uzJUhjAp0h1YlUnm+h+G
	 Qy4EfUCt5xpyttZyfeKbPMVPjrPQDMjnhUpW1d2WAiABeVikM+Qx8ab1UlSEaFStzz
	 KPZQKP6mAUE3KgzU4y/mrjxOUjsM8EoA3+fF2zLnK78m1q7t4UFe24hLVpyc3XqqMQ
	 iyRbxtyYVW0/n4h+BV3UgU3DIT9e5/HTg37TWG66nYEnJx9yLZGGK4+ADd418r5f9S
	 55eUvpwhmV02znCfQ1wTWTfuGgvaycW19RTdAvfIfs3YlthdOx4HmmXNC2T8kyt5lk
	 oPmsGjcn2w25w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973EED116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458697360.1189.8730519641457322582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597a1cda60f435668030de3e5173c9632e9335ff50216dfa77616f587b981b0e
Date: Mon, 01 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764586973
