Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D307E274B46
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755206994; cv=none; b=QHLcQdTq0eNo+glKOc5OzK0lbCSG0kLmYrPawV2CbTeeSe/V0MTWZXd2+40L5HgV6m7nVqb2sGMnuQ2b8vhpcmOY3GDI9ysWj3QJ0YODzzatw/s7KhH8RkrZaTgPIpTBc3u8dhrLyoLVW5XIBHgG0OMPED9fUO9ZiR+lQao8+Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755206994; c=relaxed/simple;
	bh=PcI8eUpCxRYUHAaBIJTBz3lvO5y8SA766E9JoZNMbVg=;
	h=To:Subject:From:Message-Id:Date; b=D0+V5uV6s16k9DO9zyMkeuM7bu0cr1mDl8V6/mNdjojxavknckuPo7mmwXXDRo5NVA7E11y/yBbHJgaCCQhsSuTfChvnQH7sE3D3jrTG9AL6nKb7Ff/JEtTha64sDzjVuPly/cDeuViS4+RhgsVHMwAG/0kkvlsBHk7IfVYjpiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ml1IY+5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ml1IY+5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D77FC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755206993;
	bh=PcI8eUpCxRYUHAaBIJTBz3lvO5y8SA766E9JoZNMbVg=;
	h=To:Subject:From:Date:From;
	b=Ml1IY+5zWVKMUWW9DyN+qXFZSE7n0wvwtEjQtd27h0DqoLW6F+T2MYP4TqlxEES6v
	 qWED6znySmJRgV7c76d6EAxMhxc51Ql/qsfXD8qn+BMijd5OG15wsV0uqOZwWELECt
	 bZR35p8CbSFrvR/g7S2ndthYOMdH6oe0WHwhsgzWxwG3P2aOzyfSxoIq8E4cBAaUzu
	 5op8wYvILme4NDdO9IXr5NOHn12aAIfL1NvA0VvJKKYaQK56xhImYFkbJ265m7DgSK
	 OO7g7U3YTRpVS9LV/eoBdB8IpAJpxuBnMvPEnBWElsUrZIKjGNO0KFfFK7ULAT+Ak7
	 RgxPHMQykceMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F30ACA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520699357.14851.18389283755335329058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94851e6cd67163dbfdf66ea54462210231d12b611e4f0b567f959447dcc33bc
Date: Thu, 14 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755206993
