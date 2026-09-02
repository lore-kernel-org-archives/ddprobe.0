Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2714519AE
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788390634; cv=none; b=WDcFkjzt4Cc3OgebYZPUsmegH9E2Ch9LZky8w0Q+vKidCAIm6W92ChqKQCAyni1gEUBlcDhzTD4U9eUSljVJf8YqtiE18wDH7IFs9uvXkEktuwUkS92gIJnkRJa45mYChVkG/JmPEzTyA5lpJX8pz6OG7c6/8VIGl62Zi1OzO4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788390634; c=relaxed/simple;
	bh=yXpxz4lVq/iU+1V8lerzzUnAps8LEF9DWa9StkLVbKw=;
	h=To:Subject:From:Message-Id:Date; b=oqDjrUmF7oQhVyeD+lxMpxlFxIxV6SuP9TODIWXs9DMggjByDC1oSDo1GP7tlIxFH6Q0c3pBMY63Vb6Z6lYQEBv/wK3hQ0gLX6al1cchswcmgpe29+3kFxa+cCBLEomDIe2qekGi1sZf27YLTi63N1iWEugaaqFFwc5tGbCovHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5A+fwBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5A+fwBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3389C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788390633;
	bh=yXpxz4lVq/iU+1V8lerzzUnAps8LEF9DWa9StkLVbKw=;
	h=To:Subject:From:Date:From;
	b=Z5A+fwBN9dZU5GD4de84mL48zZU3LLrEqGdrxKhCDJKAf5QTBmIZ5QeXqwyLHeJvv
	 ptJRLZc5I6xblONgR+L5WuaFwqgQKfbnEzxcENx4POOiJH69HvYCBR0B/NcdNZJ7t5
	 jN7RSV1zEviUokQUSJdHjTxnWa2Rlt0jYHkiObTT0id2Hly5Tm9OtBmXo0uN/i9XCm
	 +7212O9Xfw2XrglPGT1walM8eYEiEtwtQHM9WnyAKnwsTWtsK9Mv5A54UE53/5LiIE
	 4SXZsgr0k89h4ubjIKlWMUJfhVJZT5I+UCsFw23xGA58ZGAlN8UBHK1h+yKTks7DKL
	 oBIpFWSChQRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0826C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839063368.10570.13623943063197049152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da181485a6d3e4248611e033e0037e5c82719e363379037e73a96a860d2e4ed
Date: Wed, 02 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788390633
