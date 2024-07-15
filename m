Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6394A18
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721005943; cv=none; b=cjp9ygoCTy+pfb5P4diPctgL0xsbzV0lp7uHV6MlkCj5wXEgFgXrtmFQr1gd9bxjuJOFjBZxiUN+Wf0doVSlIB00c4nvG8xIxBga4dbMnmBnJHCsE/uRZG++wKSYjtvKlBgynwMtBIO9EBRCAMklIe8YrAjn5SNAuS2xKnFc/6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721005943; c=relaxed/simple;
	bh=0/A64j9gxJKJrW0gatnWUlDiEe16N7X4uF9+zdOC41Q=;
	h=To:Subject:From:Message-Id:Date; b=nIvjF272ZY5nlytW38+Nka18HU1kW3QrE+bLQLjXcdYD4FyEkmTSmOYU5/XB2Hwv++FdZpcl/7HedIChXxNE/vhZpgTSWlDE3aV8DGrH3cd5jjxtb93HP6cvChFHq6oQx/EN3QwDXZT/zTOQ5yrV4oePgMQNHW6QNiU09MZ7IEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhSFy/Zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhSFy/Zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AA8C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721005942;
	bh=0/A64j9gxJKJrW0gatnWUlDiEe16N7X4uF9+zdOC41Q=;
	h=To:Subject:From:Date:From;
	b=fhSFy/ZzlyBB2/xt86UaUmyCIRE148zT56D+DuQfy+PACetK7S5NCICfJqOKDYiji
	 BjYOJ5WtZeY5JO5p281bBYIirWU6DZzPN7HdBQQ+2CkF9YLsPBamrbIM2BQuYA3Pfi
	 2K/+4F9Cz84VhO9Mh6fDi/A8GtHJecpdrCXlo4cc/FhA9sBgZHqUE5+oVZk0N6mVoN
	 q4E/jRqUcmF2e2QS2NGrr8KE3VtzhTMLSFc9WhhugkJStQoAdPojoXoddEaWXy72Gh
	 huDveRWbr3g2goIVLEdy8C0HyI+OZw2rnUL6gWF3pvrLwv4QrFdG21YE+8+Q+C5zMH
	 zb6SGs/sEHZew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A45C3DA49
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172100594278.31119.12893408936770355753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842c380df0c78d42f691d8b10b5bed910d63e496d8474525bf7a6c416ff3c530
Date: Mon, 15 Jul 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721005942
