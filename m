Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48123224F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743129594; cv=none; b=kIuFoPNhZLolpKaSt+hJo5uU69PFRllv9zZp+LTe3H1v8AnmdLZCDDn6lP9m6zoavTc+crmaqO37CSg2zsHh92mJAxMjrVlQZNocPk5GikjTnJOxvgEi3agUwOa6MyMu9hPKDsdcAx/OsxHgc4yufnxlClFwfJZSr9aC9hxuiyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743129594; c=relaxed/simple;
	bh=wXSjKytAfMQGIKpD9wYH180UisMZO33By6PKb5V3Ejw=;
	h=To:Subject:From:Message-Id:Date; b=Ool/1QTyLUPAWFbzdkfvglprmuzO4+00ugYPkfAGVyTOQQAFLrbAI7bmZvZ5FEdY/s++rCYXLKxi6zmvE2CB67C2fyoiKQHuh3n/of+ffYITBqyHTV0yg8Qz0qh2uFg18IVO7d/tn9FUM/oI6yR5Ivy9XCvcRUPEmOWnNJ49E2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjDJX9ti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjDJX9ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6316C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743129593;
	bh=wXSjKytAfMQGIKpD9wYH180UisMZO33By6PKb5V3Ejw=;
	h=To:Subject:From:Date:From;
	b=cjDJX9tiTLBPc1y+sOjSRBVMwjZ+EZcJTPvSmyH7oqFPVz7egit0LnJ00yX8hiWR4
	 fb6roZbiRfk7Z4EldmA3/ka6oq/YE01TR2FaWETnJY6+xfNjIGtxINWAi7kwYnZ7MB
	 bMrodXnr4E+Sq0AHL1GTuQ8g1K4xFxFKgykv1j8HpeHLenSPxU3IS9EHt67X5c9c51
	 IKIRAtulqtydMNTIOLerHVS6bVva3DVMkbkfwL4qXLugXpDUlK0sexrwCHb5Lo0DLP
	 tayDdBbyEN8Lcps/V1A0SJdT7wt9AzuDRmiVh2FTD+QBFLU1ed+Oiutn/i+ydBdpIC
	 nQHecaWV/1rQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BAAC3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312959363.7605.3187345660562643346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890c76d67291f20862af56291583ba6491984853b360b4110660f14528854d1e
Date: Fri, 28 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743129593
