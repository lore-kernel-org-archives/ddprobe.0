Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335B42BF00B
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770031434; cv=none; b=IhkzFlU+mgXYkewAuUCoVHH9n7RL06E8TG0OlmiDuoilZc6f70PCiLW8lljp3X/S18kpmWeMlI9rRU/I7WQdnjsvgn0uONGqJI3ScmrW34quTJdYji/xHjDpa8yTU7aVNx00vV+a9sLM37j9gKln7sTlQhH58/7MsMHzb/OHyDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770031434; c=relaxed/simple;
	bh=+/PCrlDqv8MW00Dn1ZwFlHMID/S6BZy5ae+oLDJSDYg=;
	h=To:Subject:From:Message-Id:Date; b=SGKxkAfqPHElZFtgBARYehSc8yIlFAktLFCXJe4KRn2lVPajgFNcseQcb/Yw9jYyAbkKaODgj3QlOh4QiE4sBzVAqgujBPVcfzYlEgqhpt1njPvcyrvgXS9fStGcgdgswbdv9laDdrefjFPMKfMyLudBD5oY7hmMzaP6t1PGsY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxi0usf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxi0usf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF2BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770031433;
	bh=+/PCrlDqv8MW00Dn1ZwFlHMID/S6BZy5ae+oLDJSDYg=;
	h=To:Subject:From:Date:From;
	b=lxi0usf5H4dGGwGvzZkHWH6MRmnmhBS2t+Uxhb8yv529gkw5yOeXZZSgDpIEmVm6t
	 BlclB2QPB+E5nXaVnOsx5ZagC9R2qEnsd7UVW3qMp1XGEF5NclR9HTQzfrwTO5sIyy
	 M7Lw1/9ua8QWg1+FHTUkGjoa74Ef99pioUXeT/8tWxzMwjxSUVFXsOoDdCrwNHapsu
	 1xs3qqYSeoCp4aOkAzJUkxPZS2V4ObZfYYf1H2O7tTLv5F47tqVXbxqC2TORfvSc45
	 031bv6RPibZuGitQAX1n1Qh1SWMQZE3WH67gpmu9aN8k1gU9rUyCNg8KfTCr+HQAof
	 CEylE1B5raZbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FBDE73156
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003143360.23187.604315727274091889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbbb75dba85967a89f44f037dcc2688d08f313dd7f72192397dd7326ccf6db8
Date: Mon, 02 Feb 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770031433
