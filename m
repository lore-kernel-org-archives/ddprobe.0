Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A66343179
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732950354; cv=none; b=fb87WJkuim0bsNvitN1hUQxPL2MzAoKrcI6rgIVG8f1vKkQHF4yXi7BP2V19HveekVcb2aUMYCE5mfPXfN/zuHHw7CgYJY2SbBVTq+gnA+z1Vvov0tGNuYCjO8ynZ9PKPE32rsWtbivi/nRQZZnGrktamlAGXJP43MvJI6NV+IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732950354; c=relaxed/simple;
	bh=yW1hZ3syAxwCjWYsZ1UZSHTE+OVBAlQWBJ2YTfM07NI=;
	h=To:Subject:From:Message-Id:Date; b=AuHc8ajdlgaf0Qfp1BL5CNiLC4GILLWbqKGnUpvcswBxM5mNxNkapx0e/hauNNe1JQQ9kxP7MZ8e6FUaoKr0+ZzVQUiwUMsKKclpsTf0LKkaFoaGEK4hneSEQURGl+y2vCryzKlq6pC/E4msX/J3BaeZ4SRmUq1I8e7xO+PQdQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqTtaDO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqTtaDO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EEAC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732950353;
	bh=yW1hZ3syAxwCjWYsZ1UZSHTE+OVBAlQWBJ2YTfM07NI=;
	h=To:Subject:From:Date:From;
	b=fqTtaDO/bi9eFcBfEcgS3w8OBRsD+VnaLg4USHJQaEUoW7sCtPHnhfqLOsY71f/qS
	 yaCn7QwqQBbaJlHFLEuwR2Ur6W0XgwNu228Dee427LyYDnR9yeX+KpBgfhWVvcJkub
	 PYrli6veiv6DvK6mYTYrbSYiUrD/wddhU9Es/uGJ31rzH2FjM3Om8/56do1dmVAGuO
	 ntIr0XD5apC9t9eqDKKZeOqGlladeOP2IaESttmRp3VloUce7xuOgaokPc5UqddAUb
	 bHQRjSSh+HvsMoXCXHwerosd+Op2hYI0whKVovz7h8iFcDcLzkaXCk1erP6qSlUbmL
	 Idz+i3ZKZuDWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991DBD735F3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173295035359.5042.5208685722898014229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db3e874911036befa768a50e6b42f725868a93ac1d25fa649002fb77012e2fb
Date: Sat, 30 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732950353
