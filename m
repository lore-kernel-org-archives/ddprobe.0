Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E080313532
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768277634; cv=none; b=lSxgi9M+bOoYtjkbcbgAdVdZzP+r8HI+igMaI5uTGjW7UPdt5Uv5BvtnxRVBQGB7o3y+eIcjMnQyT3T62wMTwFPCcalzbIt1FejjmWIWx8njkIojgY2tMdh5KOYp19CDe2tfvLKJ8MkqKSQ8tKtnf16hy9dlvclR6fke36/T0RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768277634; c=relaxed/simple;
	bh=zlD1uf4FdygDrSPoZCz4I1JFM0+kKFeVMdQUq7JBmJU=;
	h=To:Subject:From:Message-Id:Date; b=aJxpOiazj8VjlR8O1QKHA9OH9JhKW/5CMYrckhT46eWg7uYIjO3ScQnHecGPN2NyOCRYn3Kzda7rzlSBoZuewU19OI+5u9SUNo6fQcJq+KRjXmefoUmvgS5EElP9p84O03MJ0g4hAdE0Ax0j747CBrSsRvakSpE6ciZ/1srdrSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hbb9ya3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hbb9ya3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C3EC19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768277633;
	bh=zlD1uf4FdygDrSPoZCz4I1JFM0+kKFeVMdQUq7JBmJU=;
	h=To:Subject:From:Date:From;
	b=Hbb9ya3i0LxAqGIm9I8nqDIUw4neXJ/44SWD5sA9JfiqIJ/lWsb+yxI5udIu8QdHy
	 OYIc0zDsp0If3I18r3DIA8zhWQc1dWw1K4ezLL2MoNxhcwfqCDEE0MK4kgbbP/yyKv
	 DH+LZnw7K0ffifvKvhyBOFngW5kHNNYWD9kSXfm/ZofpBt3uqDMPPdYf8bhQTsGlR8
	 uYRDdXpY8f0StLJtbR7J5lIYelUjyKplKDHKES83r069MqKlow3XHEfjO/wDqA9Kky
	 poIQu4DPKSrUVxXWzvp78u5UNylGOk0q240diK5ZAIxIkzZL2aEQzYUtMa91B6MYNR
	 f7+xd7KES2GUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C9FD29DC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827763357.24285.12370298043458296147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a01bd07ffbf2507dec68d6135c381cabf0bf3d8e2ba4d31b7e547b18d163641
Date: Tue, 13 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768277633
