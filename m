Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4793C3C1F
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779844354; cv=none; b=QxCfZFMec8w2Oavd3TOkKYcaLw30s7fykXHhiYeEMrifEYsAydUCLRIPfZqP/xpIlBF8bpUjXIVkpOxpSB8bcn4MfLno2dSOOm5WVzDn9Usm3B2c0PLIes0gSwMJHnDq+asS3y17SJp+B+2JnFgkVi1XdKBq42ELodQbTnJbpMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779844354; c=relaxed/simple;
	bh=5HrIeDDvV6seGORovzYwePB6PnxaLyRqj4FMsRhIBxE=;
	h=To:Subject:From:Message-Id:Date; b=uXWok+SDaiAMh+Ko0sYpf9r3BtCLST7gw57LY//+fdnDUIyBls1uDyg4M0eh//ED7RDXwjQklPzIm4ZYnI3YIGJRLzyngWKFle7TUfWUczEY/4Kzh0FiXDuJuE3B6V/xkN2+uieze4HrbCnppb8vkgPzeGIMWw5H5+mpyEnIJXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owuUpw14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owuUpw14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0CFC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779844353;
	bh=5HrIeDDvV6seGORovzYwePB6PnxaLyRqj4FMsRhIBxE=;
	h=To:Subject:From:Date:From;
	b=owuUpw14BN+ynHJC7yu3XBeab7rnYRTkGqHFE71gGOgqGTZSO/Bqmum8EdtGrC8P8
	 M+GpY9eCfbUuJIMxNztO53RXB+5Z4cXR/LOqbVizdSylnoT2w8q1FE/F3tOVc9TP1K
	 I2f/jFg/Hx01V6hDb81FQCAds7Qw4Og/1BPHBBP7My9gePlMVbPHsbFs+ZYXYCW93W
	 L69MPa/6DckNnU8ZWhj4+vIUuw1rZvvCGUwfVECwMhAnG30XAX72o3Hg4ssqObbyXZ
	 j3VWJox5jR+sNRLp3KD0NwsbUVhmMwJZPKQH7TEvfAt4Nv+qVZEKtyYAannXcbZDpw
	 E+R8V7omUrjMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45A2CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 01:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984435370.18501.9991204893192508405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67d369f6f8de8f4a41d380ee83ce93dcc03d091cff293666a1b554371c4cfbe
Date: Wed, 27 May 2026 01:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779844353
