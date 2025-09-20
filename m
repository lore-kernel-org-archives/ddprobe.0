Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1840D34BA41
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758349194; cv=none; b=GC4+s3TgrjwXjFrV4I1gdfZkIxunqrWMRFPXyhukxc+Gfs/DgTMeKhXmSj6WQnZtOi2zA2tAykFXkWc9UTz+yx9b9bR3sOUQ/AmIWFulAR+DyqY7Q0mEsQS9/6cYQqBmlAzqPoJKnsdlyjbsbtJtucKBPgvjzb4liEyUX6syK+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758349194; c=relaxed/simple;
	bh=WGpJ38mzG8CVqTSuviK7/4y1QqkUjyozKcK47SuylVM=;
	h=To:Subject:From:Message-Id:Date; b=Yd0rUBaln9O8iBpT+TC66HDo+Q+lECz5w+FtbUYbzPutPLnlXrFxypNBNVnsATzQtlWjkPAqvMiBhPEkKNKCdAypfH6Wu+FUG2ZkWpPWllf/96Ce7y7DSojSJ84CIsE1A+DtRhhdpGFhW4viYXcrkwLmI7GRI7g7v92/Rd5/pvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8qspXuN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8qspXuN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1E2C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758349193;
	bh=WGpJ38mzG8CVqTSuviK7/4y1QqkUjyozKcK47SuylVM=;
	h=To:Subject:From:Date:From;
	b=c8qspXuN9oU5NAWOJRoqoqlw/YUH8Ma4e10AoG0rIdlozUJWxR9Y4DVon5HVoJOMk
	 OWM94ykMUwSVS9ao+XMhN8Ma0yExjESmIEUDrN8ZZ9f56l9FmQktK/yEzZHSWgdQp7
	 XiNCQz75u+1FgtzrQgBXctLZQY76kpOIXrmSet+6kbNelzZ1TsUoXKRNJFHvKi6SL8
	 YayNYoCVUdh5YfE6VRQc/1Ub8TiZvBjFxzuGhHQuBVQ6eXhvFYZYDREAViHAswJ1LW
	 bVYw/lTvCjrPFeA69KOmVBgZarNs1fIZmNuVWUc6ezNX7rsSjlEuGS52Ts56mCcu00
	 mefBuxz0bYKkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F051CAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834919357.19138.1328700956889210927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a7516656449e907b1dbf774bcd3d18217a82f6764574865e8e2f44c178213e
Date: Sat, 20 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758349193
