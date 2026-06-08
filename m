Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2342134753C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780933474; cv=none; b=omDXH4RQcPuwRZ3BMaTfqPvCKP1e7uasxx4trOeCTQdURKO8Hz0NluypgJM7tl9w/z3UbXsbtmBUPs2hyzcey61F3ca1VSbc1NOSpAGS/Iw94uc0va9y4x5xwqQgtVwzLrpdE6Om4+kg8UvM/7jUZmqd/MRK4oMaAVrpdDJTpMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780933474; c=relaxed/simple;
	bh=TQfHz5gbNhCv+DrK7QhKC6u3xQ/93GwW8q6HkQl21/8=;
	h=To:Subject:From:Message-Id:Date; b=roow9I+nVrD1HFEbOculTqqyctE3gud1k7RSaQB7CCJnppaACwFPlmRsYDrJSw4nXTvnVmi/E6jg+WVvumzvKFknR1sk2qBqUdFrt80tOMzv4Lgp1WuVMi2UwO0L+phzouytqw9Xxwo8HbKy7zN8NnvdZHiyL+WfVkCC38BP+G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSlbIS9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSlbIS9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3399C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780933473;
	bh=TQfHz5gbNhCv+DrK7QhKC6u3xQ/93GwW8q6HkQl21/8=;
	h=To:Subject:From:Date:From;
	b=pSlbIS9pW4Wd1WNrUw5Gheudh90sbM3l0ADp8OqQVxNQvQoGPtmz4tv3K1wikr3bw
	 qgleiZuTDaubaVxhpoQY6CAM+zG/5M2hatN4HnU0vCSc7FPAhNNmlrFStZlpT967ry
	 LP+y4QV0vplQ6w7CAE24OEGZTROCuF1Opt72dmZlVFJ3KrNlRHR7peJgRvMzEaZsAH
	 uiWdf2fgpbTcefqQK+llO7mu9DWTa5+GnClCiEoHPQrXjFYE3JS2abR0kuB1MCJM3g
	 oNrpk0N+i6NHMUWrTOIrzDzlKIIhUzKcrQutJ+572sGB2xCDeqUf4lwmAb3Bul85Mk
	 kw9tJRFFx2tLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59FDCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093347373.13105.13538162519516638461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f84cb21083e4331a5220804228cfe4abe482bd0675226a78c15b605da00bb58
Date: Mon, 08 Jun 2026 15:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780933473
