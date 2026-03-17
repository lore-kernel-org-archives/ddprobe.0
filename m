Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F371A9F93
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773707694; cv=none; b=d3p65v4+myEgyeaS8i7WdsLtulRv3cB5nqYreCjhECFrcxZhVBXNpdMlCwe0sIJj+yQXf4rLxkb24iJw4eXBxRImuv+D+5q97spO8S/9f2RlZ577NsKVQMJyti1lp9Iew64RWEaMxLGmLq1ZTf3Ay3NmcFNTv68Oi7T5TgqpdTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773707694; c=relaxed/simple;
	bh=JKb4tbNc6XAM/ykeUoiGKFtOvKnB9btkMbielfhnDwk=;
	h=To:Subject:From:Message-Id:Date; b=X0JMa/UHfn7AB38KolmeydcDGCZoYFnPqI+dFRLpt57DCihB4GgTa7vTe4ooZTVfCARdH67vQ5DrKZ21Su0Tsh2BciwepHfJWDKjYgsUBOnf23NS3gBlcFxWB3cjBUSAVnylZ1n/GGnBqcdoURdPrFRh4yPC73ETIGeIoBvSsgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pD1WiTi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pD1WiTi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01EFC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773707693;
	bh=JKb4tbNc6XAM/ykeUoiGKFtOvKnB9btkMbielfhnDwk=;
	h=To:Subject:From:Date:From;
	b=pD1WiTi5VUIpCT0f1Pi+prZaFaFYlnLrRD0mxXYOD7pImmUqEf8UUjFDiBjDVn2L6
	 9xj3HkqTNH+RE+3uc09W89GjAlYxeCJZY2H4n1BqyUqTETjYY838IBAKxsOAACYZOs
	 YI/uw1snBEEmAYLztHwQ3Wt/1BbtC+/wPZq1o1YCtB3HQ680sRWY9WrLtfKWLWjHXl
	 UIt8I/Ybm3RQxCDxhrhtg/1HhMQNrailr0UGPS/Ya1NBtOu4Y1BEqOrNyf+V4Upm5L
	 AupIdgbKHNLyrrA3+TejWxg/X3mvbCZxw2RaWydczdFNsB7pcci+XooyagOU5PWKch
	 RLiaz7+CCWZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E2AFB5E90
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370769358.17760.10322542190100203443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b155400b6b2a5cd7e3134047c68f95661fefed48c28e47d4aacc90045b28c3
Date: Tue, 17 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773707693
