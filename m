Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5243F7890
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778185654; cv=none; b=feqFRu1bpJV8/5JEIulU36tUgd4j7qXz501lcHn/iTmWyeji75je8wv8IpO/eI9RJm/0Xy8rT1GQg2j6a+kzrFJE482fCPbP6cE+IXrBpd7P/aSS2ktsb0ia7wss1bUEYt2efTHy4S+bzMFmRPkZZ0OxiduuycS3+F9iOeCQ3Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778185654; c=relaxed/simple;
	bh=0XGVqWakiwTbpCNjgb74sxn1osK5MJerNyvKIsYjVow=;
	h=To:Subject:From:Message-Id:Date; b=Kg0AmForXXFPwl5pyLZN4BDuuFKUXeDIfhjLhetiquPNYjk/rr78hzIAhiYCjpBIgpecXOYIFChEP50qIZ5d/bHpXF+irjQGBLlwD2Bamd115mhhbNE7N0H1pJ7ea2qOfZRXOEMVhMXYFn7nYRi7dIfy5UFl0uw3Kbt4B19bc6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNdStADj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNdStADj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C439BC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778185653;
	bh=0XGVqWakiwTbpCNjgb74sxn1osK5MJerNyvKIsYjVow=;
	h=To:Subject:From:Date:From;
	b=kNdStADjD+sMksbiDvzuJ6Ihb+uIE+kHnXnihGUygYObJ+g4g68ebCbjxNN0cmEVG
	 ZJiEbh9YOx2H//cH1lyXgD8lxp3fSB6+l/loM9/fYnXs+xO4m6z90hmcWQeT8SVNJx
	 a6MjVK9aOTSRHMTEJbStrgnA4y1RhLeX9tQhnY/THYlik4vltzfqJhgbZMLpirk2oy
	 PlhFsclk8jOHqIcpavsVHtRXOhkRzOp/jeUcwBiRxtI63Brf/lmLUJCY1Ozfar1ws8
	 +ag5SLqN6w6A6KpJiYN0u0j+DDwoFkPA7iARLH0PnW2Gko520+IscVSBfvo0c51eVf
	 G6cJ1ATXdc7Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2B4CD37AA
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818565370.24997.2879949822371749548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946fe57302201019f67adf3edc69a0d68ebf949d64135e6b6b9d5ae121d5651f
Date: Thu, 07 May 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778185653
