Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C950F2D0C68
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756943993; cv=none; b=mdDMKzllGYAVqlD93PKOgsJDYK/nLx7W30UcBD6qPKPJGt68aN3ohS1viPPUQjE2NGnEV2FHsPCayWvqvVjvopCbHkSzyRy0nOPbW+OuAb2N9Yn/b8a+alndRHIRE0QtFF6sNzI0EFfq20B9lOBQph3G6vQF12OzFRuy0e3tssI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756943993; c=relaxed/simple;
	bh=yYlpEH6A+hK1TAlhpqaBirlz9D8Lr/12wSghwRi6LUs=;
	h=To:Subject:From:Message-Id:Date; b=BcMGBG5mgSJYxzcvc6A5YfNIULPAOHB9PTOn045pejvlqTjQwjM4YDWgoM0Jic9WAUKZ2LVnJk3cB//Kc/rijMRsISFleFTKqNYnBRfRZL750bDF9xt3hN7TqRiDPrZOmrstXutoFHe4wOfdB74WQQXt8dR6NBLi/4bSwlAdgK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/6V0E7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/6V0E7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6526C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756943993;
	bh=yYlpEH6A+hK1TAlhpqaBirlz9D8Lr/12wSghwRi6LUs=;
	h=To:Subject:From:Date:From;
	b=n/6V0E7SBCp9S3RVPsoy2UzEwuyb2q50l6Z5FfS4o99pjYo7D+ZLOYnpeUj6qzdbZ
	 2n7aZyNn+D7IraEnm92wa47RmCaffj4F+tghaaDShsTaeQploMjs0DDcML5bgjHqc0
	 i7FW1fnfMcQ0QYzmFk73bPheY6mpVKk4yDKUC6whSs8BqBeY+9GQiGd8ozYxK3L7Ld
	 sznkcxcwhWOy8D+4eRNqREyif0WyuN5s8LpmQY9yxK72om+5Ro0ayY8jxEGH+QdZNX
	 rd4PNW/SE0i4W8eacGkEEE9OM8wsIG/14yKlx0zb+L6ZuUxbQIUTmIFx5oCC+sFX59
	 dbNDElf0LOlPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923EECA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694399357.14407.14269172235831670916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e43f8da5db79751f9498fa1d6660c85a0fc1516c7036c4982166eb85b9fc7e5
Date: Wed, 03 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756943993
