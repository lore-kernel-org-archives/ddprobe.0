Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4AD35F61E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789357234; cv=none; b=aok103cQ52PwN3GSsChQmHuPzIixsxyOPW6kFTg0wJ8PMvE7oPbA3Z8/zL2csjnv3K4Aj+jdQjQE+RrPGhNfdYbZ4tprUr/QFgbM87FimhPNVvNGXvSMhW4DIQNSB527Kw2q9NCjAU7YE5dLB8vZiSWo9psBVeh9YAoQFeyvlyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789357234; c=relaxed/simple;
	bh=zc0QFOBe3oW3XChpMb/1fWjLX0CGOVcC5I7DjE+vE4U=;
	h=To:Subject:From:Message-Id:Date; b=sY8p7vgsLBuLszmgwefb9pkyZxRDMGwO/CurgdzdPgy+L2vVuaHV9zX8XDkg2Lcejgja2OTFqXho5saaTNh4qqDcvS6QTTF4U5fexD0qY7a3A/crsYQzYnTwQqfTiIGoXnaFGFjhoVOQCSwwJeshFLOqD92a7f400JC8yLqnPE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYqwy+zT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYqwy+zT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF29C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789357233;
	bh=zc0QFOBe3oW3XChpMb/1fWjLX0CGOVcC5I7DjE+vE4U=;
	h=To:Subject:From:Date:From;
	b=IYqwy+zTa4QcuRtbcrtxZz473TzJEYHnDiqH3AczZpykVc35HSpcPP1fCTy7g5qcd
	 uxfXtUYJEdf2hx/LX7TkediEayjcwqhGB8RChOYtlybDndeRzxY+TSB+w6jt7alBzP
	 GeBH87IXZRTsNf1sBYoiLi3MQH3Q8wpDilr93fS5TvH192WyxKyq0uOBAJLzAxF5BS
	 Iyta3ZEH3JGphJFVZnr0nlSbv1XtAFXnyD4FaF/8qUaoQ8yy0jw8+Ncgqdakgl1wPC
	 fDBLD8Lmsl7UR18FMtCLW349mn7Nd5SaLN1TW7jAhGXhDHnDe9paNyH7ETQKPBcJbG
	 PwyXtsRBJWJag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99AFC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935723368.27255.15448404383212523571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdcde8561673f7bc9f93917939e0dfc4e52f95a6a35a51886abd27db61d2973e
Date: Mon, 14 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789357233
