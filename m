Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAD424886E
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760807994; cv=none; b=s1IoLFZSmpagyOiMnVCZDza3rgF9DYbwY0uMJgCZdv17jlu4aZGgSaZ9e/B7X/CNVcJ0E49pxOuDyFwBJvAYPccztZVTA3zgQ/0RzlnrjXKACdKCklfqXPx58cq2jq9cllDFeM9Loc2qStxlA39Xid1xFnrQt+AkTcmqvz4BGqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760807994; c=relaxed/simple;
	bh=9QqYbqYZvLOKmbmpSgNoDOp7mR/oaQsxFkb6uWIZXlE=;
	h=To:Subject:From:Message-Id:Date; b=TJs4GxCEacpax1B84T3QCSk0g2MBj47+kXGhIUqmT0ITKkvtnVHWxxqSSi+JVmzmxAM+3RHTd38E8/mgIW2gfH02WMJP6LlySq8SLtVdQQmdaGXdoGaH3nfYvsEzOWvWZZfXIOtYGqyPlz/1sSCPyUoOa5/Pmf2vguK8spwfQE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SThoXxXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SThoXxXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE554C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760807993;
	bh=9QqYbqYZvLOKmbmpSgNoDOp7mR/oaQsxFkb6uWIZXlE=;
	h=To:Subject:From:Date:From;
	b=SThoXxXKtshTMBLRxNReRIlgviEfiomArxSwbE85mc/tZu+ss6C4hGMUwUCfZhgWA
	 HS2cWdE8mWcTFbXjgnh4dLS/dD/52vtvHCa+YMQdfecJK1jXb5UP/N/TZLnZjcfQ25
	 mggQxtsmaNBs3qQheQY4M9K78KdE3NP9eO+n1oNSF/L3ZYlxM/7k0vQBmgFngmwQTn
	 uWoff4Y2lfBDeUO52H+Tc0W0qwNRFrpRbgojtC3kJRdolUPBCo1RLSOA4eN4OrgPab
	 I8OhmnmKFSByRn0wOumDMkSUjGfzAqid3+wvo8b6YHAnto36UM8SVA1zMOA9EVjj7j
	 oW5qC1PtmDU0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90315CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080799358.9526.14592627392492605370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5caa3dfa3e78ffdace1997d29ffc4600d02743040f9eed5e68c6f5756eda7f
Date: Sat, 18 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760807993
