Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCE7191
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776991654; cv=none; b=Rs86yeAe6BmF9CfsVQFNeeZRhAE3Q8g5lAIP7YSo7FwG9kgJjrSpaYpX7UrC3e+X5fXLykYaghNlswWGrX1ukW9GS77mXORMPu/o6J1RD/fvP4FhUHm2bAIsFzx/p8mktZ1acr6Vtoza89jFwZ+mpGwN61W2fTSyEPiTAi0cND0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776991654; c=relaxed/simple;
	bh=6U1htfJ/YDTuDxt03iIeb5CDB1hxcTUrxDCvFJYBjLE=;
	h=To:Subject:From:Message-Id:Date; b=BaPgi6rLeXsZ0y2C8gwyBtUBrrltHmjLlkcadsYj80Xok5rPdfCra0HEfoNaMB+QngPD7/SSYrZb66PHgH2qISo+i842nebS8/hZcgqKYYQqsDC3o7sWdeW/3zLOhxVcbcXSzjT1w4MwIJsWwlW7qDQIslfDMUAk/bJj8bIzbms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzLquqBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzLquqBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83C0C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776991653;
	bh=6U1htfJ/YDTuDxt03iIeb5CDB1hxcTUrxDCvFJYBjLE=;
	h=To:Subject:From:Date:From;
	b=IzLquqBcnmkUiu6NTi0ZzQHdURKumfQ4irqqIY3wb74EbgZBVVUc63GroQduWFgUE
	 RHHoZxqDzz+uUw1wN/2AWLgGSUVKN0TQdMhc7VgfkzmXTUtaKxGAabXySV2kIRcZqw
	 PPtCb4z29de/RCKTFy1BOt4Mqm5wW20vel38c4ugvBx51lJiUyOEfPp9OFhzVJH9JA
	 y5wOTkiOYD8RCtPAPkJkX3cF5S5qg9l951B4nv6XwrIvp1P/mbjsq7QNy3msS4SpZb
	 +iVDMLgxV08O7L2ppfxYL63keAwA/6O4xheNZOiQNikCEb74Uj97OwPjF94a9wgTQl
	 2Tz6qNPlAs0/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ED7FDEE56
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699165368.3746.11033407484031201264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a148cdd743e8767b7cd17d5584cfde78bb9ca06fdd4e4dc933c3e95992bbe22
Date: Fri, 24 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776991653
