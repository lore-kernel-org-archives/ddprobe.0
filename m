Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4227C1B6CE9
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775880454; cv=none; b=ug0C+l+uzEy2oRL69IbRKR4Jh9WIx682eihNcjy9guOY5sj1O8roSpVdCQo5BnE7HAuCkoJ+F86cC4iOUGQyOPXWCwYcf9DdWtnJePVAe/2dpSiKa1asDLgGHmLZdNb/I80G4AdjMONwxX3wRXlT6C49UHkvO4VM8XS+E8GfKBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775880454; c=relaxed/simple;
	bh=xAtbs3BS2fvrVsNPvU5Q75VHAXR2bOF0/HZUBkBeSkY=;
	h=To:Subject:From:Message-Id:Date; b=PzNdnuEHxRZ6xq5mxFGegiaUmo8DcrJZSQfwQulr7M+2j3B5kmH3KeUuQQxSJBxzd8lSIswmCzQ4jghVWJ3KTAtOJTJV7l8kpps1n8E9jsNE9R4K1YFSZmZy2iLs+oNDqRW0M0C3b9ReF6EyrLGPehcnsz15uvYvWpaTBIgYMD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir0KluyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir0KluyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFA2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775880453;
	bh=xAtbs3BS2fvrVsNPvU5Q75VHAXR2bOF0/HZUBkBeSkY=;
	h=To:Subject:From:Date:From;
	b=ir0KluyWqKD6mRDquPSTdgWW4poVsrzAHgyqIp+xAHf4mraI+7wUddzX4urCjPG9F
	 lIDgYmYbiMJ9I1PykDof9iViqLtb4k2l2uiYSIZDdvLaoq+YDvqvD6WvquA5hKTo97
	 DBis0bYgRmgVRd6AgEgefsbetrFuU2LxwYhHQ2We+DTRiU/IBujNVuUjwTyJA6LdBy
	 iZGghkqjEFXOmI2bcyoDcvRvdo1fMd5fzrsbJ9u9tXaULifwSFzAf6cBV9Jd5tRyb9
	 SZPG80yF0JbZtswhqO5puDDnU4ejheVT9e4PkJPlLqrYp0UMyXWnAa5woVEacFkF9r
	 Q4nblUD9dSk3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9358F45A1E
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588045368.23983.18431030938174134350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4339357a9c992badc00c089e4f5243ca705e9108dde211d92400156d044774
Date: Sat, 11 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775880453
