Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F5221578D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772595894; cv=none; b=ljtHGTtda/FFP5xzdc4LC0vWEy/yaQD+OjSb8b/4Io7zfeYlmWmBcj2Dn8OJ6euWVCkbEVUMfA2gemLWZhwCO0pKDlv6DZ2iq4pgIZ+KH76S0Zgnn3GfEQXm2P8zj48tKfwiXl5P/SjsCnL9xypAgbXrCHpCYu4LCLcgAMX9U30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772595894; c=relaxed/simple;
	bh=oAwDp9bu4gxGbDWCEQu13SyvUV/6nlPxJ7nc2m9TrDA=;
	h=To:Subject:From:Message-Id:Date; b=AP8m3ZZZ4CbdUUX9V4gsVwppSv45fCZ7CFAh35rua1MdjSyGCsq1mbj4bDqCgHcrtjulEkrYwEho+jOlBE7frbD4od/PEnR/reQypFJf35LRUCq3z29bMsy+/FZ6OAXU77GPtx9Eop/kBadbCWIgdwiKAqIHTW6fc5jaH4BUH94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjdbPYOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjdbPYOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7364C2BC86
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772595893;
	bh=oAwDp9bu4gxGbDWCEQu13SyvUV/6nlPxJ7nc2m9TrDA=;
	h=To:Subject:From:Date:From;
	b=TjdbPYOMrcYiVpbkDUtN8hcADTrBmBc9L4OnDgFg9zVvVb3l27oYWh4Vso4yVcF9v
	 wdbksNuWQXdd65j0H9IX9dtRZWziUZUaqimjUs66D5JuTG+MfBawFrO3cOTRrF9Eng
	 1HUXnaDParmnZ+XSfDpx9joAxqshqvOZfHGzuUXsWFbQ3XjOKvM6HjKMTLujQc64Je
	 WJr6Eizr5YEkpJphWvu8EaeC69kwmyOyWDRILr8Az75hhqBxjm9eqRfleGy8HfGiq0
	 l7MS+9q01GavkWoRWgrRYrk7x7AD8QDDgVjPx7ozqXeVWnAyQbaqwy3VhCbjLUgvhQ
	 AzCcMQ+UKzbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9632FEDEC02
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259589360.29033.7432137644231865292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021acc14dc034a7930e28a60ce78863bb56e63db66803899d605c95b955e940b
Date: Wed, 04 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772595893
