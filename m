Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF598397AD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768394633; cv=none; b=HbBC7io5n3ztAXRTg+o2jWI/f3yhLHYAw51NBoSDO5xLI45fKvOfcAZLlSM5wfWfyQsHk6CWDB+wG6Xtg3NEj9nk31RC3YFWGBtAOFUCG01t7vrFJJwzHTr4oHM9X6lCk64eZq95fysfpojq6VB5qIzG5IbOTvuMIUsnjHVkOGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768394633; c=relaxed/simple;
	bh=+bgHUxF55dXKk6QgpINI/QnP5CuViIswz3WpQ+lmwxA=;
	h=To:Subject:From:Message-Id:Date; b=bUOe0a6lTaIxd5eSKBEx5uRZ+vynmB1R2ZndLW11USANzzP/2g7ZWgwLvg33zoq2G90PFiWQr3Jg/FZq6tEi3c4rc5ip+yuIzgweNFaucrsDrKNLc0Q0Qlwvyf48LnsC8kCOjX52JZrA+vQzBuDZZUy9/bSPOfbYRh0KTO1QF58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVK16UoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVK16UoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A330DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768394633;
	bh=+bgHUxF55dXKk6QgpINI/QnP5CuViIswz3WpQ+lmwxA=;
	h=To:Subject:From:Date:From;
	b=aVK16UoYnUAeconBEwoHLDdZicBlzTY+TCd3zFcwK58ELrcsej19iSnPL8UMdZc2l
	 QrqKH3zA9O82PItWOyw4y01JeLr1juuU/JW/7McVUkpUp3QGRelkzgV0M+YFYpMNjJ
	 8gDtjhbBAxHhjXH2sU0F35v+nVU8La+Oc1YTKaYSEyORfXmkXoSW/Vjr3XJVd+eC1u
	 DkGYVCSWL+MwQqHrzEVuOSsycLJK7HL6yzsREQqLdo2NkxYwUrnfEXvpsrva4l54gU
	 3MCn+va056ALmLvb8ArY5BKx09AIAEdaNnved9h8rrZlBdOjyFfSCyf2EkOyHfAiCb
	 gPaPoZRIbMP0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FCCD29FF9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839463358.15340.2584471737545648939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379c6d9be9cedcb0aa6724366909415ffdedd660a614e3ca33c74b345e56322a
Date: Wed, 14 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768394633
