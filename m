Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B17A1C9DF2
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725617154; cv=none; b=MCeDmRPYHLVkZrXT6bYjO0FLWGPdcIfnVkdzHw0xrMY2GuQLZnKOOHuLjxYDOgD8TxwlVEoxuNhZaM8MmZQJj2yNCC2L4GuMi9Q4CJGTYJG/UxYc7jji052210DGHM34/gvqkY00wVHebqXuMgSENN5ZiicHOMoko4iKWAsq2x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725617154; c=relaxed/simple;
	bh=tEiI0l8tjE8zZX24R1ECxRSa89MBil2zp5v4LLKd2Yw=;
	h=To:Subject:From:Message-Id:Date; b=oIfONtucPr8mKO1eLLaJ84eaxW4YDyr4g9uK42EmMe9CTj6YeVhZg+xLzg4CRhdEBGsQI+yW5y/Le2r7Q6taZm/1IlnxqaRsp4iKJ3kx8XwcyRksDibVxaqlQvNpHLEwI1OxODBSAZbZJ/g+FJ4n5lrOhrnuFVZWaOyjGivipF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzSAf7lC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzSAf7lC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC35C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725617153;
	bh=tEiI0l8tjE8zZX24R1ECxRSa89MBil2zp5v4LLKd2Yw=;
	h=To:Subject:From:Date:From;
	b=QzSAf7lCqv0/RxVgSB0MI+wTx2XSi0J2xkH5PQpENO0HWrViotsfXVjbxivZ/1YUv
	 qqYOFVWQK9FPIxxn4Xq2wYm73TfYLkQlazvyoHClD+FA311OHvd9MHy/nj5wl+5EAp
	 FOo/1YvfjxagrNlrjH0hxI267Drd7H1M+POvfX1sF9dA94aOSMqHi/wt+B4hU3ELsz
	 XG505uJ5nMJ9CknqzrjGOpyPpTdwVDynwjB0Wg3Z+SAhfsNZuqKjat7MtSQzntp0yb
	 jEallWYZmiwVuQW3Y8gZLfjToL3qYqCyxXI+XG7rjk3UnWuJUsTZ0ObiPzjgixS9yD
	 1x4/351TYK4IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7CFCE7AFD
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172561715362.6106.1107996107981602890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9c41268910f22dcaff9cc7591b7e860831081819c19ed493a33bee633b51e1
Date: Fri, 06 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725617153
