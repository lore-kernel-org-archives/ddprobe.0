Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A3F33F6
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759390194; cv=none; b=gpFlZxz9yJFibYUlaROOqz0N4I/RNhgd/1uRdB2dGpX/qQzciF+529uq2LMy7e3FmrcpRKFmtKA98eCFXYqAxgGtA04LptLpZrsJwIlW+RyRQrIYPdi0a9CqJugcWB5fpDwwBBJUPEWV+KGw9h6IONdUMzncGihAjKrnENXGtJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759390194; c=relaxed/simple;
	bh=QLDGdXmO1ayXonsMEBL4vauWXh8sXshW84wvftjgc6A=;
	h=To:Subject:From:Message-Id:Date; b=DcH8eLAYUz4/shqnEFEgwts/eCQzzJc5OMluAGHJE1SYReNDx/wP/wP/z1WlWLVY87C1xVMT97CHdB/Hq9sYjM5aakWPpge3A89o7q9XDdQCMge2C2fB6I47hg3lzlQixnK0BzMTq7I+ETX+qwbSs3qIbF08nExQJ6i6Uc0/W0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkOtgR7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkOtgR7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F7C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759390193;
	bh=QLDGdXmO1ayXonsMEBL4vauWXh8sXshW84wvftjgc6A=;
	h=To:Subject:From:Date:From;
	b=fkOtgR7N18foLlFe2C03uyiQbWWD2t/tBQ0FtfqCcqFpARU8ta9SZk+9CyueZByQ1
	 I29hPIIAtUJokvzgm3TKT7Jhv5b1dfk4TiuVdgJuWcHvzpaxSCanWfPffQYp7V2DlP
	 AJo9P3fqlBOLgQTFMi5uQihqFQ8s3jcsr3HoQKFYnjn0VXPFXBkYz4w8Bf5Lj8ObXr
	 YDpm0qEdm50bsec9wmdY1GEvayAgtAw6RfZkyXmh2WI/j492FwthIqLhf39UnZyQKB
	 BZLJ1nSP1hTNTS9oXsRjqPxC58StRk/FOJjYb6xtDS+TRKJP7d6CLUI3HF3UU2akDl
	 1VbjIHDmezFVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E44CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939019358.12981.15457880941974442200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aafff483d6f7baa6fe6999f3dd23b23d965375dc5936440c2e664b54436bb10
Date: Thu, 02 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759390193
