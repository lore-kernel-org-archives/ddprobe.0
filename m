Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098502E541E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774511694; cv=none; b=tfDX0UGmpvceJr7cpWlrVbpxzbFHEmsIhsb/D6lZafCa38GL5SyryYl52YxJvAuvbdTkEylhxyP7pXbYh+S3/0pBN/9J2CNruiUXUdeMPYoLVCAZEP6O7TRXRufQ+gk/A0wp2oohyD1/NwDTozMS3L+U/BnPWocAaQhzfuqZNd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774511694; c=relaxed/simple;
	bh=u3epg7DCB2NjvC8i4y6vYbALML5cFuagQ2E6JvUiQsE=;
	h=To:Subject:From:Message-Id:Date; b=LduPb8OwE6ztz63D6DPrGLqMm1pAqM422Rs47CPuifuJPJQPoQvWMXpY3v+vDIokHRdKt6PUDF4WmpEwjaL7olU4ylCpetouRWYZT1dhyvM20ajf/2F8dOIB4P+esPh4r7Ami/kZv9VLwQJ8FGilwS+3WcSmkn0Xm/3b/mBy/0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUSWHCLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUSWHCLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F3C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774511693;
	bh=u3epg7DCB2NjvC8i4y6vYbALML5cFuagQ2E6JvUiQsE=;
	h=To:Subject:From:Date:From;
	b=hUSWHCLkt7XvL8I3BS7eXegGXYNn003rJZlJJfNRmLHrgRMuR7ghVkjDpDigNa7IK
	 BZkfbN2WKmZYnv9uu9sFapphd+cm3P2nfqCo9QSYF+8MkDoICCpJzOEJmru8Ju7KyS
	 lsxRSStCzup3BxvH7vuJS0BmAs3ddpILqIS35sXg5Lxs7NcE9uD2pxBvsMRFURvNVE
	 uvYI6U3bEJ2bR4YW8JohBXKlGsk9xf4jJe6EU8ryoPz0ZXPen7CBstwotqg0D4lMH3
	 rPvnD8maREVbud9uSlVuS4ruMV74SylVW0ql8OTi5Us94GPuQgDm+LSHQ5XuBAJV6y
	 a1QX8soq2jP7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD3106F2E8
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451169358.7833.9063319594334125610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8b3f88f6618193f57debcb736675bbfe58aa41c95f78047b9f45f2fe2359f5
Date: Thu, 26 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774511693
