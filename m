Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A9533AD88
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781453794; cv=none; b=aGsM/JNmJQfOinw0azQoc4BDO6u5jjfX7FyZwCQl99akpq5CIcmHhqSRcSE3qQ4xnegysLRfhIF4M3mIdrwj0869XXvs9f9vLvR/Ano3mv1hwwCoUhCs0wGXo6tRzP8hCRgbBsXHUuhOIsRn/Ma+I482uo0EqaR3vGRLZznaoaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781453794; c=relaxed/simple;
	bh=nvN/cSTMec60XyD34BzcqYdWSrUmB5aOizPHMmCm8zg=;
	h=To:Subject:From:Message-Id:Date; b=oFed/j9WW81LQG3BFtE0CK2kIjlGXm5RC3WuZBiMkk2nX4jlBbhC29ahx/sAL1XwS8OlY/L8VVAbFMgYDROZOAt1POdXqXJ/ciy5nsVwd8KE6QLxXkdHYVPiBavrswJYwoJiAxLPgPmwhxRjleyv5hkJxNqq6LF2ju5O3vOKnTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfhmL6Or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfhmL6Or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2823C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781453793;
	bh=nvN/cSTMec60XyD34BzcqYdWSrUmB5aOizPHMmCm8zg=;
	h=To:Subject:From:Date:From;
	b=SfhmL6OroV5VmJDe+KWbWXe+Pb08R/qtHxvHNNnqVV9jFY9SYgXwYgELX5r7Ar9tD
	 JXfkQPHvtUzlD4KGqnJ455Gro7e/keN5J1N9aduoJeoco+9No3QU9mSo8UhGanOpME
	 642Kx4RSGiX7pQxHloRn8OLs4VdFRVua2Nds6S6U5dmtofrd6MY+/jDKeLMfq1omHE
	 4q4VWVYb9neyJxTtXDZCY4eM3copFwwlF/lhm5h0KKYou3pZpSDHrdyxN7d++oOQQB
	 uWU6uHe1elcliCVSer321WA2leLvE99lbw3bHqiUf9izP5ujZ3zjtCf6bqCQUKfKl3
	 AG6I0v+lvQBWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA28ACD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145379368.19514.7720786002103374480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc7097e50cc795d0c7cbabccfff041506578545354fd60cbd60dcfbb255e4b4
Date: Sun, 14 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781453793
