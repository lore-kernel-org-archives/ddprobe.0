Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA86134BD
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745246994; cv=none; b=HK3JCkMlfQGINtgdqy8FRO+ggZmi2JnoCJaAsYVmxHFe/aT5VOt40cJb97/AfmXvMWipHzl2EflPL7SSOrxUy1qONrgzgHiDspmw/bgLs8CqsJ6udfE7yZecog6Gpx3zvi2AGVd1iIeX5S19933HSw8+EqJDYuRcwdWBjAVBQlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745246994; c=relaxed/simple;
	bh=K8BKrk9qA3QL4D+RWmEAaJCClrYYTyd3FDwxPJlyDQU=;
	h=To:Subject:From:Message-Id:Date; b=SK5Hzw6Z6kEZ5gi79k4LFhITjYh6KSd65+faJYmd83V2C13gnilHcAADAYfxd/Px7KfaHaV1fi70YtJViDgqAVWMEbZxi/zf9XCceX+lGMxqx6/vRjfAtKPND0wNm9E8vcvG7s12GSPB9ROOwpqXjB5yBCYOY7fdzJYR+gB1ZQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3PjPZNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3PjPZNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BA1C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745246993;
	bh=K8BKrk9qA3QL4D+RWmEAaJCClrYYTyd3FDwxPJlyDQU=;
	h=To:Subject:From:Date:From;
	b=W3PjPZNT5Iby3cS+W5PZQiYLSGFdArGPdjNB9/jkBtXzFMrwnbzxSeAV9gIOqlY0h
	 uu/1xNrIkZ2d01Vz8SMM0nEa8lbtHvb9crFD8G1bWp8Z3vGY2DjnMQ+77BDXqOkhhw
	 xEE4zbDyVrbOcktFQaW4A0iiS2SPBKC3FQBxt5SkqVzIkzItq0fNL4Fcbwc4liBek4
	 RFx+wSbD4ibznBQl5o0tCObUCidsUH+1rlMwG2T8Xb+W/1O5AFalWXiLBo9NBdgelQ
	 OxBzcSr09NMECWjQE0Mg9gQvAVSAykLoB4XU1PsdgxyRfKx2eCvzXIWoNua5Ijw1FT
	 8mCw5d4oeVtuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D2FC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524699364.13640.12453309216562618892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339d6d816df1a9d1bf56d715f85614a4a4ec85ff52ff36353631df5bdb99788b
Date: Mon, 21 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745246993
