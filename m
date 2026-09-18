Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FDF42C4FA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789735834; cv=none; b=rXBi0X9LD3yOSzg/uv2Uo03rTo7nBmj8lmcdwBI7rZK9e+gQgIS94eXe2OJX3iPCxN6GjVW4l7pwYKMHPbVY7uxtWFoSl29jgFZUk+Q+/GQ8lfllQ9dNimiY6IDbNm0pau6Ns92xZV80cI9jPgNIlwPKJdVZTutT1rtwxemgD8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789735834; c=relaxed/simple;
	bh=dubsKMlmpLaTm6aOF2ppLm1S8YJSO+8lbf5APASlTPg=;
	h=To:Subject:From:Message-Id:Date; b=PLOFPbF1k/ZLwfgfJmd1HA7pwl92lo/5ABvnRMNsTOJOUsBs1uN6k5QIn69unXlXD5BmGB4DXuIHSvAVJiz4072RO6I8paOSvyU10TUJ0Vm1TcGlgwT9/RFG8bqLVs30xkqEpTomq/D4P2a7H/h0rVUHpvR8u8av18hdSHFi7Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/JVXfyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/JVXfyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23E2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789735833;
	bh=dubsKMlmpLaTm6aOF2ppLm1S8YJSO+8lbf5APASlTPg=;
	h=To:Subject:From:Date:From;
	b=t/JVXfyKt3h2azmKGFdpdULzmS/q+knK4OluCAcMJ5F8es7fzTaNw+irZlXCOmU4/
	 StpSWeHMqcxmHnH9e0PGycwF9En3lmTzG5AE904WtwdaP8L29j3xNUu+wfnzbE6uK4
	 l02pC6027njX+iPaxyUvfhuW3RgqMIaUfyVqX1D29wVhbmcjzBQ+xJbGoVfY19RqgI
	 04rWWNeGDrDTRhokfBekhYgEd2NIGCk6NZwG/s4N8dH/vPq/o/xtYFOmPcWUQ7BhX/
	 ItCjPQvq91VcVRsw3Uj9GnI+FBi8IuQ84HPeuhJUeVb/Dmd03ZScwrX7CtDjEIMTX6
	 Zgxd34nZ7Gskw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF627C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973583368.4422.582457073839466248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa884b80c3f46ef7a9ed7dc1fbc6aae68a3982f1cf92148df3e503aa596311d9
Date: Fri, 18 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789735833
