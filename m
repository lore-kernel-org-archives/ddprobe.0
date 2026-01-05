Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0D921CC51
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767657234; cv=none; b=ttJR4jfiifI43TGbkZr4JeOUGoge+Lpi9GNz5sJIPUZ9fJos9ch+pmIgNfUV79sSfIEQTjG2PmsrnoYQ4p00yiMvmNt22mrTvew9Qs5PwDgqgxYLiTrgZTpY+k+rKUj3pN3MXa4HfSW4VQlu1iK9l/tnY5zU/qcjR1GC84ySCdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767657234; c=relaxed/simple;
	bh=BuQFaq3LJyrUrc3t2UrSCj3s+VQod9VSZtNcPxZ7lXQ=;
	h=To:Subject:From:Message-Id:Date; b=mI8ez6mmCYTXjz60XsXCrEjFgg8mA6jUKD2Sp7ZV6+zh4jAxK4GnEBG9eHvZ3qsLXBcXhjQ9/EMB1py6sB1eseYZD63PN0NQlHvM0rFNJLQ0VoBlUafZikBQf3pGBeP6urnmE/OOcxbfO3Nue+BpMtsBCx8yrVKvXUtTO7bNfno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKKxNXx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKKxNXx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD9C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767657233;
	bh=BuQFaq3LJyrUrc3t2UrSCj3s+VQod9VSZtNcPxZ7lXQ=;
	h=To:Subject:From:Date:From;
	b=BKKxNXx1vDtRmMQH45vNljfKb56KQvx6hJm8KkxKp8T/ieyJ51mHH+S3hNhgkh/HD
	 A8XhyGxjHh9EqQ8dK9IZdX9vQ/0XXY6C/ERtNvhk4tG+T2D2E5H1ThK4Np9dIa0TrT
	 5AaECDEh/D9oHcTZEu5V3wdYmq5MGlm19ou5aU8sZO7N+lPs25iSZiIOHW4r4Y47mw
	 tQZfR+Vh4plQ2GcIdw6mQhVSx72PcgER006tMp+ghfK/DqrabIwrUGse8z/xcoYdG9
	 REzZ66ouz/gA5zyGh4LfbPikio8nHgFsQwHWgM6KRCJoRrZIVus4NzmO94tCXiuuSB
	 MUjW0lQtkHFng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96402CD0423
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765723358.3416.10852971929936052869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3889f0d547e328f556fc77b0818dcc680152a7dd7a59939fbf10d8926a94b00
Date: Mon, 05 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767657233
