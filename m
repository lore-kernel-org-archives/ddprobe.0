Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C541620
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717377323; cv=none; b=iltcSAcPybnq3AGeCzDPx4q/mEbSQEZN5EhswLKpE3dQJm3ZHmp3hHTLID27+oBhyS3KZmNwl+qwkN1xYJAAEPtybbt9Vbj+OKvvk+evF8vIYipdFfxrbpp4FjU8UZnHeP7mFLl6wEN/XogdJntrwx77B8dDME1VXvO89bcxg+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717377323; c=relaxed/simple;
	bh=MeLmYvW0302iFd0b2fsYAI2dk7iLvmB40P3ftqx9m2o=;
	h=To:Subject:From:Message-Id:Date; b=nN1HiazxV/io/oroGTh6lrEk3Fyv3X8rmmYALU3W8+j3VNjfJcDFlASwo1MKKlirVrYR9sKy7UaCg6SdVb70QHsz0B9ZnYx58KU+mysyv15uWwzD8KPR6ZVfT+QYo6lOXAfnmAcWMDlg3rsphNqWsoG5AhO3kqnHvkc6AxdoiSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUZi2P4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUZi2P4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD63C2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717377322;
	bh=MeLmYvW0302iFd0b2fsYAI2dk7iLvmB40P3ftqx9m2o=;
	h=To:Subject:From:Date:From;
	b=oUZi2P4CtbDxsj6JeZ8xpZrSJZsBFN1Oht/546kYHwLYgCpBpnZ1vAPN7uda1AIGH
	 ccmpFmr7lqLwinesvofgFAELVgpFa8LXNdVNHWYWsLEyVuqrUBTrmTSK+yNIDqr5MB
	 uR7mgFSIc6MDscEtN+Owm9OEmMj64lvWtz74VcFzN5cFOQZkYjmj7wDU94KCbLATkW
	 QrYlgsBjr/oaOxaa5YiWBjfEI2ygIPqnF/GzhKd1tsioLdWOCDKrUm9GunQ+KFP/8X
	 +Hl+ablhPywrwDuysev/zGa7OOiq+oyNnzEGnBTlY7K+B4WApcAKvo8yj5uf8JdNT/
	 9skMPn9ibiaNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9B6C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737732278.6692.13626271386516987310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba056c2cd161818341394a2a10a4ad692ef82e81258eb1dbf88ba196dcacee2
Date: Mon, 03 Jun 2024 01:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717377322
