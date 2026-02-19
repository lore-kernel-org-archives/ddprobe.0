Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBC8148850
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771472094; cv=none; b=Zewd/btfqRvCMAYVJuW302JiZ/+F4UbwWCEitwv+YvhgVZtsHF3keU2yrsS3n4wM18vXzP/RNl+ImF7n0BmLeNau8Si/9hj5pkW06CXd3o7tbhD/9oF6oKZrLi6OZ56MnXPQA4L03A5N8qGdoEQa5WR5gIjGrM1qC+6Zfossgyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771472094; c=relaxed/simple;
	bh=4zoq61iaXNworKlFJDSmj6pyHPWSjaMfD/bI0fJW+UA=;
	h=To:Subject:From:Message-Id:Date; b=SrQuwK+WNHPapL36nb+VHU1qZSHAUvq+U/X5kcdGHtkJBNqYF6QV14cHBQJhKuH4UFa2gi/CmQcvwUl6JsHvxl2d3hs5T3Y3nWU9jNNV0oF2+cZ1Ia6fC1ycpwiJL+GA0gWwx3xm0OEK+HZb49brBG0YljwYnbjlrQqFlCN3IQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGG0r8n7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGG0r8n7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF2FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771472093;
	bh=4zoq61iaXNworKlFJDSmj6pyHPWSjaMfD/bI0fJW+UA=;
	h=To:Subject:From:Date:From;
	b=BGG0r8n7JDWh1yyJxW+Xm32FLvp9G1YjHlLUJ6+rQybqQUD5TxmxkDT8v3EHHXf5n
	 kifLpHlRbrabbWb1cf3rYcValJhWqRmbWJ85HiS2NsLqJkV8cQBBviQNZzpaHhISML
	 RcoPzYNTFwvdx//3xLcwKGG0dWI1WenVasWl8Kq47uFIvcsdEuLyBKXz+MNGhVH0H7
	 zoghSfhG3tlQz1sbABd3oFKlFfIijAxph1ERahvlqy3algcPEfCYcnaoc/gDmin74h
	 4smod+pSmF3yGhVid4byRMS+1EOuSjTEYPKln801n/rKb2MMOqUTnHybHqOVq62/Bq
	 Fnlc+j2HRd9cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE7E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147209359.12700.6660074337257512983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f110f5eea5ec5464104bbbb267aef2605ed7a4be66b7d8f21ea4351296af47e9
Date: Thu, 19 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771472093
