Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4388420E330
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748632194; cv=none; b=Ne/OuTvjk5/fYjkGeQUtmoiVpLfZz5+5EQHbrqAXsU1GcjaLn+EnRx6FGQoyJZfJr3dzFKRzczpEe4Fcs+vhRFxuNelORUA9h9E51OrkZmwQ+ERk77fwr4906ap3oPdfsO/wRd40xE+5/oFBHh/w0HOxm0ItjZzq7Arac1lRp8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748632194; c=relaxed/simple;
	bh=2RK54NpPEnwCuE258Y9OG3Cv04xRjuBPyaUQbj1938I=;
	h=To:Subject:From:Message-Id:Date; b=gN3mts0KVsnZlOeRckUaiv80nqavslnIl/3e9stOTF2bHz72tNGETWnVCUevch0EXxaA1vXOpBLYlBLGfDYYJDs1wwT0jzk+DOLtwmKkmJr9JY3708rngVI/Tc63A6nCJHxyioAc9z44imL4Ag/eObV0liptusC78I+Bawrr3+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0JAE/Sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0JAE/Sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5444C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748632193;
	bh=2RK54NpPEnwCuE258Y9OG3Cv04xRjuBPyaUQbj1938I=;
	h=To:Subject:From:Date:From;
	b=V0JAE/SnBE8A5VwsRVQ5TtDtxSxYu5DEfEIw9q0kTr2InyP7ke3b1USPIGd7K6nzP
	 xZ+nIoVKHMFlyhhQsnJOj9Q1ZDGq0bQgf1F8byuOfFaPaMXD22zLFozaAJZVGA1qmJ
	 LCJcvK69BYsbrFOXhcrLETQ2dKEOowlxfg43Bh3ZFwWbrJTZcgQgh/nJz8QCsii4Xs
	 LwNppTDlQHZCEh5BZv4hfMT+qanEphWbK0omqmXfJZFsmyCLioNSqMDvDgoedfNjge
	 U3jqVPERoKGMOpcwB8gtdpG7r4533vFhRZlZRpb8bpjjp6WLW683Tx8/AmGHjg+7Zz
	 cWmT+rCJ+izDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B11C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863219357.20848.17513399556890000415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4edc662661e9cf5dbb93e80d35d6735e5181485e18ee7b5e4e8474e06884e3d
Date: Fri, 30 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748632193
