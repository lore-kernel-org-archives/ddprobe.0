Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8564499B8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783798114; cv=none; b=mdCqMX0GwIBem6cCWb374aU0BiPSvtFYj8GFCo3aYNRYReUQO4dYKILejzb+vWA8WtPQ5xZEo/DOrqpF+U1cNESwl9ppHxQqBoDIeSrHWGVyhfgPHbOQlc7R5WKdBtAsY/EH/03O1yuTDwJBgviCJWrE0RsrLoFb5yb4KhX0slk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783798114; c=relaxed/simple;
	bh=jrTIOYK/+cDk1R2Y9ac/CWocwWu6a8nZGDJqViz/J9c=;
	h=To:Subject:From:Message-Id:Date; b=XSCOHIKQyxv3MyAHWpJ2w2t5z0dIQNbgsz8SZSTLi5ejV8co7QBq7dnfYBgh4lxi9ePjVPDDlkP8LqDqEWOvNgOESEJrtw8E4tS4C4Hz82s1D1tZgUi3QktsULirSc0kxmcq8M2i32E7mWeNsdUENIC+zVtYjdbKxpDseb4k6nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kq3ou2ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kq3ou2ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4BBC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783798113;
	bh=jrTIOYK/+cDk1R2Y9ac/CWocwWu6a8nZGDJqViz/J9c=;
	h=To:Subject:From:Date:From;
	b=kq3ou2ngCXfm/HaPKcOyBkC3CuoH2yyFbHOX5Rr0JXyaG1DMckOACBOxY2Y8zmSTw
	 Vyz70oqmyRBkapSlC6NodZYQBr4zKZuEIzqlTkhjg1+vWDcKuNBwwvbXJMUIQsxNdG
	 g0vTJLue/55f55PHSgB33sF0EMUV2RJmcR3wikNX4R3occwVpjQU6KF+7Ur2687SXy
	 zDwZFt200wJp7fbIK+OWpOolduA2G7Q6FgP6kLwi2me7L9LS+eoPdHmK6+0V0JSRYc
	 qfGr2J5Vqo1W2CTW7PrRzT45cxy3ydvCYY7Hyjx/av+USMhAyBPU8hDORPk3cEG1sY
	 mB2cibDlGzGQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6B8C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379811368.15936.17569783213709828794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c63e3d801fb357e0bb1c4920614cfed50e6c92df7b28c83e2f363c79dd5233
Date: Sat, 11 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783798113
