Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAE618EBF
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722114954; cv=none; b=DmwyecWKkW9UtvtlPu9OqajPvTdMKVteKijJZGfsDmDUStEvoP7B36jKsY78cWre609IHVzAkeAut3uUa6RZG7r80o+6h6UJFCInHHiscMQyOfCzOghbmCwGIGq+sQf//Rjep9CBckWYs89+OXOnb4d5+cWwQgqbPOZp6pfZ9qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722114954; c=relaxed/simple;
	bh=kIaj+s/uY42lA4c3w6R/2xdW/mzBzL5NDdRbM3FvBhc=;
	h=To:Subject:From:Message-Id:Date; b=YQLT+gE5jDFpVP/JKJGQk1E2RRtuaD2hRA9TrNhuZzOKVy1yI1d5cwGEDobo80H4hGbhuiyM4A6c76YrTPAHUiGO7k+ipaae5xlbtuh+PgaBCLBObFzH7TzSXWeKSvxujz8gPy2lG5LglflWWPvHzdhFpxy7RkiraQTqEAgGvlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZ5NcUtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZ5NcUtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD33BC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722114953;
	bh=kIaj+s/uY42lA4c3w6R/2xdW/mzBzL5NDdRbM3FvBhc=;
	h=To:Subject:From:Date:From;
	b=ZZ5NcUtYgTjK1wXHtzX/7TBT7nRvivNn1FX2WP0zu+falJ/HeByeAlKV1T5/nvz6u
	 BuSWsr+WTWa/Abwha0y5r55RsApJm6J1O9581CSa+yTmCWCPtcPZDRDuOWkOSzpKAn
	 +GakeIbd5uUZdx5fYhGnUPttMvJKHAnolgVq2E36XBzbuRNqhWYG4EAgzJeA983xxs
	 Rdu0GM7YWLP4FFY8W+7UJVZjlCJr6psIkWQeLYvN4rltzMGXD8bXemzqtoTE1LrBfB
	 tmaHJrXavM216bWld9ZH5PmPKYZ2przL4j8AmWN9+zznbH8DCWhbMjc3AFgCvLOnbb
	 QEnPKLyjQnc5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983CFC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211495358.15740.1261808212218849349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a363fcdf5b1e954e580e3a700adac10dd273aec1cb79aef64b841f8da8e06e
Date: Sat, 27 Jul 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722114953
