Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFAB256C87
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757405994; cv=none; b=MC/d107Woiblv4GONLsPi03UHo3hbiXNm5yY0NUqUJF5A76xYLtQIMsc1rCNslsnQTsx5jb2nqqjkTkb6vMaYjlogFwMdkT8Q19GjMLY02YJTdfGTur5pAd+88RMtgSyLSz8yNimILMNYYcfg0sCONu1o/pc+uGAfqzK/K382sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757405994; c=relaxed/simple;
	bh=orfP5sZOhn5HAqwTGDTD4hBvtOc6xEw1cwRe7Ph/jHY=;
	h=To:Subject:From:Message-Id:Date; b=PupPWCA1wyhyZNRHM8YJb9Y2aeQBBFBoJAo1Qsz0nR0Z/ml9MhJkyiFPiKQuI8ul8qXSWQQbAuuxgTX5YYUpFGM8oH7GMapyuttDWAPolmDc1GM5RTEUsHE6EAgf3M7stOpWvMU3JX7Ur0JlIMof1lfnpmOpPOA2YrKgp6HFtdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4BDoL8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4BDoL8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F002C4CEFA
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757405993;
	bh=orfP5sZOhn5HAqwTGDTD4hBvtOc6xEw1cwRe7Ph/jHY=;
	h=To:Subject:From:Date:From;
	b=p4BDoL8JyJRrAiuA7bKYgFQknYYjdNoN2Sy9rVClQEejtZYtdZaohO4LDYf5pUEIQ
	 LSh4JjTXBdgoaqvGExN1z3Z/WujhKPaSQXx9cSDshQo4/SCZuzZjHWHGbXUnv0TgUF
	 FdaqkQ47sU3nMK2VjL7vvoPztpsIEZLRe0zW0ukgEWSTJJrsAHKkZuxbXGcOTKhENk
	 V36Yj8gvF/+qHT0EwNx2N6kfk/Bd8gNzCzXlNYcLHqbqhkpidK2EwSoFv3TyY7XdNR
	 x6EpBa9HXtzVfZHCdkkozfByt322oDLbHAReDPDgbiqUkrpfqOPnRBWgV13cPySdgr
	 ENhJUnqs/lwGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D8CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740599358.27999.334965706050293317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5e213a2c625699f72e54a8fce22b17ce15d721b8341e9f4b4059be2218ed9d
Date: Tue, 09 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757405993
