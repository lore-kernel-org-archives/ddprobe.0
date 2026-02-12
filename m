Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD532D0C7A
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770884094; cv=none; b=Rbttu3XYRE38SHG3rEmNiYny8SJp9mywFCbVRDQyxNQLa8MyAT098N6NwJRdOLVT2Y4eASoIxLA0RYHo8v/A/yDlF2p3BamnQEG8liQZ1tEn91psqr1hSXeb1/tVNZOojCMrjaXUNumW8cv6zYZVA219NoZ8uWaa76hJz45t2ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770884094; c=relaxed/simple;
	bh=T4kyMtiSd3gWAkSURpY2KIjffjS8gw025MCsJ2XJbHE=;
	h=To:Subject:From:Message-Id:Date; b=lKTlu8jxD2PI2KEdmyGguONXyLAQ9k0EY4vn1rq8X/ggS3LJfhZ/IJg06ztmLQv3VeQPDPJo4AOYLti1SXs1WBu1YfKv2edx0h5FUQsEZbBR43L6BBJnd93mcmVU9YSEeJTg9tpuvM/qHXqfMkHPqxe45C/63dGdWjR9kGKmenU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myxw2HrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myxw2HrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6623C19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770884093;
	bh=T4kyMtiSd3gWAkSURpY2KIjffjS8gw025MCsJ2XJbHE=;
	h=To:Subject:From:Date:From;
	b=myxw2HrTNNOFvzUmL/FxssZiVnZkR6396faCiWjYm4cCK5apZbhbW/tkZaLHvh311
	 yceHArYTeok0E5Ztz78D06RBJS7u/iBBVgnPlznVeDAPGV0FbjF4o4cnSQICZPT9mo
	 92ddDJjRTgglS645qTXHvoh5pNEH28ZpitMo/zvdMs5vwFPC8Uv0oP27c3wjRyYtB2
	 ixg1+GETa7qSN4klWgtJJ9xQopfHskUnZolHAdFcb41r8fuGIewGskbrxR0B/kDzBo
	 OlRrt5+4TWWIZFBdk6UwpFXy/KIhXGzpk3AbLz4qUSsSZ1WHb7Z8ve64bhyINx0vlr
	 uu7Dln7zZyt8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D66EDF04C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088409365.12677.10937549397610399731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a43ea9b7d7bb4cd6ae385ed697a15b5b38124cc67563a4602496037c3882224
Date: Thu, 12 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770884093
