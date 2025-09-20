Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269021A2392
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758401994; cv=none; b=C2pNgKUQymMzGAFmqc+RS9l7iACuUPAgK7HhmOJE0Z2jehYHCRyqWtGxmv98B6o67ildDLLGYJReGA2XdosIEf94NZsd9Pu2Q91mH9c5BTR2WhXQV8mgw6PGQNq9/0pzosJHk2hxWW9sW/fPIgOu9jzf6BYexw+ekE2fo4iPOvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758401994; c=relaxed/simple;
	bh=m+iev8g/MKZcQBBKUxkApR7jgSUwG4MPp5ang/ld05c=;
	h=To:Subject:From:Message-Id:Date; b=qCz6toFDjsP1UP8yfuHs5riKPUAwrlCU91EPAi2biOOU3a6Ob5bjnyWcfuPQonBhpmhn2yb+EsMIWr8EPxWsQ5ScPy3liWeaav/zXl2wj8swP0F+pKvlIKHDEz/fpD7uL9OXEhZ+XQEBUg60gZZElwrX1uCVFJS3WdviLZI+2Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lb50Hjpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lb50Hjpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04D1C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758401993;
	bh=m+iev8g/MKZcQBBKUxkApR7jgSUwG4MPp5ang/ld05c=;
	h=To:Subject:From:Date:From;
	b=lb50HjprAkKjLVfA5bsYsZDO1ynt8T5wRTeqoHqV/Rn3bb4NGAYJXzExm8hfCCIRw
	 Pvyd6jTCunEhscNj0b5uTZurtpEljCneZExqzDZogxbNgsl5EoglSs+PuD7UZ6Rbvx
	 D3jUn5WxXdIzNmgqz8gqvsQ65+wFTogq+alC5Y001PGzT5y7WVfcIA3rWvfnMwMCtX
	 Bg7iDthPhRqNoEKhmjtI1MkZiIGmFu4lo6pkk1+73kull362WfoaUsiFqy/dzs6P1u
	 pNmFQXufL0N4f1MEYke9wC50WOO+BzjCsGirc5DEV/AugRHHxnUPSEhWuGv9tZst/2
	 bCLpm0hX1WL/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECAFCAC5AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840199357.31880.7589100841406095170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf38a5589bae5fb61540dbbe6235c0b2e87dc1b880429f50198da3a99ecb63a
Date: Sat, 20 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758401993
