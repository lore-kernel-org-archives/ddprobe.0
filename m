Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3326619CC39
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754728794; cv=none; b=t/gZf8X8RFSWET48pMiV9zWQI6rhtmpuO86NkRbpvtfUyx+XqPgY0sId/WmFES6jItt4zG1UmyxnNtjzsknFBBFUs1IS0ejPbnNq+n10h0z+xz1/GONMugV5rjH0mbrz+n+9fTSVGY+g6B8AAWxjQWhQ1WeUz59if61MrMk5llc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754728794; c=relaxed/simple;
	bh=NuMb3QjH7T6KtfCoVVZuCc40MF9FWGvoc9gGY6+0u3c=;
	h=To:Subject:From:Message-Id:Date; b=Jf6Wd5SnJImiG+8Lq/oN5Orf0k2oCIi3UYmztaMFf87oAk+DNMoyGn96rn1KomHMnmpX7L0LyYoeYI4Y1tQZzmwpVfKVGQ84z63TNcWX3JemhOXMZs9ZZxx0Ys00b5eXdA+cj5lMpMeNCx0EzsjBwLbB0fWgNyq418WOfCQneVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XywEUZ4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XywEUZ4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A66C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754728793;
	bh=NuMb3QjH7T6KtfCoVVZuCc40MF9FWGvoc9gGY6+0u3c=;
	h=To:Subject:From:Date:From;
	b=XywEUZ4r/+lf6A6eF16LkxH9mzWe/MtvTkDPZGpOTWXCWUORz02DOYX4FMBpxr2F6
	 a3svDtDN8WoVM9E43j1JKRans429fDARgv1nvDL6HWxbLFdBixPKnZFTNvyIxAlNSD
	 9g3F2aM8fekdCb+Rn33me7ZNTmecAeyNQ8w172zYZLOpazYOnuYOl78F33yUgdjtxz
	 8bcMzKb1fyrR62Ulg4BlTZnwyZ9tY2zFSsG+WroJtRmP/ThbkizhY8+YjEs1e0Ryle
	 0NMlS8ICm/qhTnw+Lk36LhWPfYTPMVUyKb7dWSIP+dD/uZUgC5Fn1H0RNalLS6BlBZ
	 umcfFatGknOWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915DFC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472879357.13918.6256505664580141045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4753d58da09d9c179e346eb6da2d2901880a481280da8353776f8334a24601f7
Date: Sat, 09 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754728793
