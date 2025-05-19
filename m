Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC5421B9DE
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747690194; cv=none; b=W1nWCAhnTSUPUL5VqVDPsIIQgFmthrbkDjfXe0ElfUmcT0UvhhmmhXAxi+wtARsWk4DpmWF6zN67jRemlgPoLi+J1kDaCAxb78x5L9Y1hR5nPP2xqBkW2W8T7TyvHOaux0AaVrncCvY15jQnoPtDgcNH08QsgM6fA7vyRbVd/RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747690194; c=relaxed/simple;
	bh=qlMEs8DIpu5ljXt00XnvwhIApH0pwJx3ZWa1oNaBHgw=;
	h=To:Subject:From:Message-Id:Date; b=p82hn3NzTYWjPznjbxtHRms/qfkXnIdLhLAq/Lj0dcgjjfyMwYngOMajGHi9JCTFwLHEL0EIkQe5GCnIRAhTNwV5Q4EEmwC3bzhenPuCbxVvvaVzT+wnBfyb6hr1J34EqZ0+1t4MNY66jCC/9/vhtKW4hM/5ucUmb/kTScoBPHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0URqLtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0URqLtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17ABC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747690193;
	bh=qlMEs8DIpu5ljXt00XnvwhIApH0pwJx3ZWa1oNaBHgw=;
	h=To:Subject:From:Date:From;
	b=d0URqLtz+FqZvQWBLUFoUIA05aEg7yFm2gTu+PnTVHtgrDbyjYk9xYnimLG8MF9uB
	 yUi/Exn6UbHpN00tCWk2+yeZwnol9f1gh6l1LwPzBgyqQPP1KeCzk04pP9lMFcJvMJ
	 AoRAzDjCpOh29ZPWAwN8Yk0rrbjxbg2tu2BrDVWQ7fe6AEk9erhrfBjkgJxxhbUDjT
	 4muuUFEjuhvnv70fpaGHrfckPZCR5KPlKxjo1k4ygvj5dj+/5PVTYwH/219DjDoj/i
	 63JNCOLJm9rAMUfIgm8bpqELKVAUhgfHXsK++xogNh5CYZGmIiiEs8vgH4BHny/2lv
	 pgRSUoAf3TkcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3A2C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769019357.14360.13460410281236617441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685ddc4767cbfb2e067240ea8f88977fa412dfefe88a17c513cd66a3bbe54a06
Date: Mon, 19 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747690193
