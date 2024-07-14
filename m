Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BFF15C0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720998683; cv=none; b=pewV/n3e3pZoPhi+S7rWh9t4F9yOhlXannMJnxZ4vDZt/gZlJL/VM1zJLRafSeqg3xaQaiLbE8ZVhK8rphFEiaVjit/3j/+ni1BLube1L+Wrll+epvAlqy5pXPuVmqJ6NdBwNrTCUNYFscvLibt7p70ysJcuDiqAsqTjcuSr+5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720998683; c=relaxed/simple;
	bh=mVXg4WTRpf0m7Z8nCBgyCKxOa+YizGNXzXd9t8Qd+74=;
	h=To:Subject:From:Message-Id:Date; b=bU56Xs6fcTrG16shy3ZvOIy0m41EWxBjn05VIuHswhNmen9W3aTSok1TliUhSCNINxQvlGX6XWpfWlFANIgZtLqAYim3X6/MsMB2LxssZEBbpIGIe5924qMohvPM+wsQsZ4Xzc5j4Qi9b0ushcScbU6GurTpS4IlCjNeOPS0KgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVsig6L2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVsig6L2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07250C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720998683;
	bh=mVXg4WTRpf0m7Z8nCBgyCKxOa+YizGNXzXd9t8Qd+74=;
	h=To:Subject:From:Date:From;
	b=LVsig6L2ccjFphAWEnHZkyCFL41kbeWHhxY0mN+SyeKOn6BcQeArMppIsIHFMYmM4
	 HnyEYHQtA71mP+1e66aEleQUqr9U59IJx8KthKN50RrwgulEbOszttCorsKFTtmEq5
	 saR4n/+h5M6qLhNwSsgTS7SJrKeZodrcJ4fhnwpHFJTbz+vCbaB3ieEjNdKhg02xAK
	 6dRWsD+5zR6r/5pYfwQKQ/XoWCSQh6qW7xgKrxmk/vHF+5qfqz8EmM8450FQWf25II
	 GDIgy8CyupVRT4k+lzBgui/sWSDGninO9CTHx8Pj+2CoMpWzTua6S+o1bW11MVXwAW
	 qlbU5erI/rUaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D688DC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099868285.1066.11922686409267090543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23b1d96477d5b1a4b66ba6873bdf55a416d839a583e53cfaf7bceef544c82ad
Date: Sun, 14 Jul 2024 23:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720998682
