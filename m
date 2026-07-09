Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EAB2CCB9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783570114; cv=none; b=NqkzlYjIrCk8kGQEZOwhXsLbyWBUxSjfvP8t/R7plOHchIk1hRqZqjIfKDHAosoPSzg8a2JWNNQjr7Hji5CCfRwarCNxvBCkOZy+SpqZIW23r4j80oJ5oZI16mRmtdyMzwkEumIfXU4Go/tJOztDIRjBoQM4sJ6Nf8SlYDKqmow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783570114; c=relaxed/simple;
	bh=HqUy0Xaik+NojC9u0xd+lwcVy52Au43P1+povtDUF7A=;
	h=To:Subject:From:Message-Id:Date; b=TpiZEpM9r+KNR+SyblV5cCl+nWW/cfH72CdWByuslt9lo4A7YTavIQBIAd+HNcDldhcgQLHuqcrQOJUoGinyk83BTjGbdn1OCKKhCqHywp8FbDMt4oZ0upgucfrfx8QsMXguhgQAeDOGqMNCNtKj9TEZYikpCYlpnMW4pvi6kxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIKzn1xV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIKzn1xV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA1FC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783570113;
	bh=HqUy0Xaik+NojC9u0xd+lwcVy52Au43P1+povtDUF7A=;
	h=To:Subject:From:Date:From;
	b=JIKzn1xVa9zJZgoonds2AgDCdIBHcMxrAYHmzsTm6Bl9DIPcImty22FYm4U9039/Z
	 20IqKsPUhBkcVWSgcckeZrHAtMfWNH/qF/wHziwvu8PrDxZf/bO7oK4HlywHj59mT7
	 ghRlKJTwynh9sehv7ouJ4co14fdC2ZG7SZtazyje6Bc3gh66bvllEpjv4+oBpcAj4O
	 8rqT6bjbSq/Y3NLOT4PAk1y8q9Z77cgQEccwy7JsBwk+MzjiIxvjDsF7meU7oGB+JO
	 wBt326y4hQOX634/th5oFeEkQwHgEWrAyA5KNmf2TqlXgKfU2W6FswwtN+mjBW9Gfh
	 2TMZgmhPx44Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AD8C44503
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357011368.23891.9110543206846615551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf08f6581acbbc08b4a301d125e67eab032c4c15b7754cafaf310852587c0f5a
Date: Thu, 09 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783570113
