Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C121EDA32
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775310934; cv=none; b=tG87RzEocTa+0uQOVu5Uk3b6reHH2tYc71bLOQNgQl4diqPBm1YB5JX2tG7fMnq63M8z+3pBjYMWYc/elZeJoa2SaIZ3kXcGAxAFPo2aFlvSC2qb6CwmN7YUhsxPch2SOm5hKyUJSl1IOioQDOJNJhK1gzN7nB+hnT+2imqkh68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775310934; c=relaxed/simple;
	bh=1RfgnkXyPq3kyNeglyuVRiRDUGfU7ku+OtCgNmlxLVk=;
	h=To:Subject:From:Message-Id:Date; b=lHDEwe7zPM3bM1I7TTJqUm189ulO6iFWhidZZxXndEaLOTAz868HEP5+OeuVUdG/WbN8lhL/Va6PnBVrMyYSBXJH1ldYV8wSTqKUNkMk9h2V6phLN23N9lvCZ7mEeXknj9s46O3JvEts/+eUBeix4W1L8Eb2x6/5FKbXRjNdu14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUo5NwD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUo5NwD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF21BC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775310933;
	bh=1RfgnkXyPq3kyNeglyuVRiRDUGfU7ku+OtCgNmlxLVk=;
	h=To:Subject:From:Date:From;
	b=QUo5NwD2PIsw+DN9XE1mxyfuh8IC82WtsiUBy3vnaL0BGUHXTc7ekcdozhkHVd7el
	 9IGNSfi6RdoTmC/gGACzbZT0rAmUW443uBejkwdOeC2QmnmVd4BXIjbL/A8J7Ivn0+
	 qy9WxtrqUx8/NjX9ZPXqlMRVqxeZ7tJNOPmjaqVG8GBGBgdOKE7ZZD0JbmPLOiZkmz
	 6zQZEnwtU6o9okJmkgbIZdlDrCnJ794b14lQX9oxyRtmV0kZaOydtKcl1XM8RQLRv0
	 VKuNhU4dvxzVUcvmhS7dIpNgM2rIaMHpoKJWczwx3JIgDkHcT6SdKKVe7Oz4CQBH5n
	 OugsKpzSMXp6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B504EE88D9F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531093371.28992.16326866269605815200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167627682132a9da2b42b6ae3866f92d625b0f78d6cc783242fadc218963e7a5
Date: Sat, 04 Apr 2026 13:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775310933
