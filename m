Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131A22DCC1C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777943254; cv=none; b=uUqkUVC0JQPQfD3lsywH6T6eUeoCW1hI9nvXs6vF/VlvAyCwGmdHZFct9pHeA9M0EB0DVqYmGr4RQamKOYlPFhBNr3LDBV7PkU/DTP7mmBerZjjdWy0yIvIT2tpwScjWq+oyTN7FSCA0C1HgWKofzwqyRDk8VdBwB0tQCZZA354=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777943254; c=relaxed/simple;
	bh=BEk5oO5CDxtozQKt9f7OOFPwhk9NE2OfuV433gn9/no=;
	h=To:Subject:From:Message-Id:Date; b=eIE/7oeTYh9kwo6W4LxAW3XLlHkXfYqI7HQvv700hNWHCLpuPl9g7Bpuaq/zYrA0+83eqU8Pf2CbmfhkpbzjIC8jil9dIi2SLQl8VZ7KiV0s9zSHKOh5pF0kkZoMLC4W/V/h2LuxsdqA2wJ6ZFNB+Mit8lvGFE8/PR4F4kndiM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l96ff7pH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l96ff7pH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A29C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777943253;
	bh=BEk5oO5CDxtozQKt9f7OOFPwhk9NE2OfuV433gn9/no=;
	h=To:Subject:From:Date:From;
	b=l96ff7pHeROWwgWJiXLOLpnUctHhoWkIRTnTf4c18LkU2HGFzt4b8NAE5UPbxUlnM
	 t3VBRmJCwPugOUtkTeo1sDx5jxLva7fTodw2ZHI6Sq37zFmKRz3CYxOfSlRppsedar
	 9SsNv6xPou2xeSVkdiigvBLvztn8S5xNzxdP9206fldTE+42MiE83h4qQzL8uXW/zH
	 VbsOAFUYvMdPwlE5v4D5nUHja4JHkHMj5GWNhacoaYXiJ3Tk524pyBQp5HB1HrxWH8
	 VzldwbeuelOUw0EAYusir9n+Ktaw3dn8TFLiAHVEdENyI7i5z6BWOXGve7uWvt8qGd
	 dhmRjeBhK/FDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98D6FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794325368.5626.15007687875370396725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8126d4322538218ab2db150e07e121d00f57ef180d3c5dfd1cf1335d97f197
Date: Tue, 05 May 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777943253
