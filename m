Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCC0137750
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787418034; cv=none; b=jQLHHdLXg1pX6i400bhbwOfApEk/+5z583OhCLaGn+bYJeGgVgcrmmM8Y4Bux/lx7HYh5Dp1DIjK0wbaWcaMwT4vx5y0dwI6A9j6PJtNmPaU4+ia/0puxUZyePZe+jcgjNR8YGWpio6aASIgGRhnH95LWRlxXOkEiWzuV75/guE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787418034; c=relaxed/simple;
	bh=36WR+CI3wIx/tAJhtURaGJIbwfA6Zr4qJ4kbUPYrlVw=;
	h=To:Subject:From:Message-Id:Date; b=Iap+vLzTY+Wpo+KevvJJDwPZs+RXnujEJEQJG3CKCaORksmsl+PS0dxnZjD5dZ2DjCX6FUDtVWdyrsu9mcvSmWNuu/mXBfhMw+EWSOxOmzMWKZ1FYwWHBIke2fpPt99lm7rfmtl7vVwY7/HUchRcTg8GBidAlDGfjjGQ2hmY+Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYKuRd1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYKuRd1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF61AC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787418033;
	bh=36WR+CI3wIx/tAJhtURaGJIbwfA6Zr4qJ4kbUPYrlVw=;
	h=To:Subject:From:Date:From;
	b=DYKuRd1QIaX54tP4NP1eOwqVplOhLVeerZowC3uEbVIM/mkKjobgi5G3HcAAIqdY8
	 AlpkOLiXwxBRrFgs8PzyYmbLZo3eb1zub8RM2dzgrgYvb47ykR3HAUVXmqSxGtwLCp
	 7/W9qiUviG3EY5htohPaWiXFAGQRAmPB8NsS8cd2hSlbaLHMpMKLC6zdt9VXZtWm6T
	 5M1ARq/oVPNDr19bRbrP2TzV58Xv/9qKP5xKSo2wAiv9sMSlOlhA8yFTH/AJYvXw3V
	 +eX3jya0QYJgn6DoaskbBGggQoiJSE3V15qVnnuaqPXtuWZiSoSZYCU+u/GRbHjmnV
	 bmZfG7ukcEg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD390C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741803368.20858.11904760840522021020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21226e08a5c20b1d263eaee2750ab0c49de2809c8e574dde712716355eb68c53
Date: Sat, 22 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787418033
