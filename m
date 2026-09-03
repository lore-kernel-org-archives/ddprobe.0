Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C05E400E1A
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788421234; cv=none; b=ZkbMGtXaqp37+VWf6VdBdlkcheO31xVvUrTMr3G2R0dAbH2tgSkHQPfI+3Z6NmbN+2W7zpxthr/q6FvizlccSoc/E1k7YDTuJhCwl55bHXKO07vAGpQ+hXMOWfaRPNYI33rpGjvL9LwfJpLs5BAGrcg+2ycii5HlFYpSu7+CN48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788421234; c=relaxed/simple;
	bh=5rXGG1660h9iz2YJORRIfY3FbZHISSh5JNTchg05uFY=;
	h=To:Subject:From:Message-Id:Date; b=kUrQMRCRAeyTTkxRpRR1uiIJZc/2BC/Wg4+YEYVk6os9L8lviu870tNvsTWdT9Ety74v30+BTo/zZ8FvYsXcE622Hu0j/o+NRO6BOEXD7JxQ6V6YpzCn+7uUmewwu2q6EgLk3HrwCq/cYj3cNzuKUR3USUwIuLNp/ltXqg+Z3ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EW5DZ5BR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EW5DZ5BR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC176C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788421233;
	bh=5rXGG1660h9iz2YJORRIfY3FbZHISSh5JNTchg05uFY=;
	h=To:Subject:From:Date:From;
	b=EW5DZ5BRHq972AbjQgcf0+KesXXvQql9RfMcdOMmUiJxxizwStW+tJcVEn4dYko24
	 L6o//wlAJy7x8UXZvz4ySROq82XImaixuMSng8335ypU0INt85lQSppBj2F7Oa2gXW
	 MNir6oIEtBfHTaR8bCAalu8kNt6nznDC9SU1Es0cUZSfmZKdzSIQb8MuiTVcjRGxUe
	 iJM5yAZWizGxW/i1j0NKgZIpM73E9CYqvIbfxB3Y8fj8M+ncJqdB7ya6laQcQsaV/c
	 XQAckHk8n3C4y23SrPP/XMmwFyCCwYhasyE19a4FlVh/GicRzYTUDgK859URuUQUmD
	 zqVVnI0MbvFig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB499C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842123369.30154.501188771144397069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b895b3c764283ba436657e451ab4adc4609ee38cff1e9d3520dbc066a5627e6
Date: Thu, 03 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788421233
