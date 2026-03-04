Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEA03093D3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772591694; cv=none; b=mBFDYfRw4oGCJ+jMWEaWGuI1W91eypPZqiD98RPYwlUQjBNqHuTE2/uBz6aO8BToHXw/uY+K634vYgDhF3+8ifUuA+JXwTvXz/0njAOfUYBw9FbKkmT4kfnQOumnr08CBJTcw75S6SK1cBkui1jvc9D/erq0707Ez3tDctIuaEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772591694; c=relaxed/simple;
	bh=G1Kwd/Wr8DEKpM3Dlz9L11xew6edmf+5gqhtAMpt+No=;
	h=To:Subject:From:Message-Id:Date; b=j9ISR0mjZ+zx9uxt2LjrwikZuKxtYUqzwenRHOAKbyHHxY2j8zIGy2JIXTCzhWFBWcVjr4mAqz/Xo/zjg13Oa7QbEj231yDbvFLparVOAO9ubaX84HYYVRNYdzSmbV8LDKKknnWIR+aORKurO92r04xaEAvXJhMEjiXZhjd57ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qp7ZTP+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qp7ZTP+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AD9C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772591693;
	bh=G1Kwd/Wr8DEKpM3Dlz9L11xew6edmf+5gqhtAMpt+No=;
	h=To:Subject:From:Date:From;
	b=qp7ZTP+5i1NQaiInRmYzXcyQ+bk//lx1gnuH1HPaE9aDrh/KOkVehwtsQUmbuZ2Gm
	 Ru9tWhbvExHpY4v7XwMox0AIlOvK1QlabStFZTY04mQPmsYf62Yg+Sj/YpFN/WGFCZ
	 MYaYC20GD4QRqGG0L+oaiJjYO0FVRlau4jZ+flJjY3dsPLpIIcSQFGfOwJeMhrbPZx
	 rCtqa5b4oIebdsnIPpW4+15U/lqgkqU/z6Ce3lp2EKFACFzXdRUiZj46/WcDGLbgZn
	 wO8kl6Z39a2idipRXPCyqMyopvFTd77lBAwXTWAdTPq+/GmgmkwgCBK4RowyXEizWo
	 YdvwTDrEHjwPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A460EEDEC01
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259169362.21399.12487379200265098791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60f1a1f2c73b009345f4320fdd08664747bd619a502602f164ba407720c5ccbd
Date: Wed, 04 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772591693
