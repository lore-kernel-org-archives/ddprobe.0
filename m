Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20982868B5
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760279393; cv=none; b=bV727VpEXEYvf4RwOeOsQIdfuHN51qsOOEdw32swSxOeraiCKQsOYmD43fN1EIIh9CIEIvXQj2hwSdt29s+Rw5Znr3/9mY8Lgr0b3ZBEPMKo4bv7r0LX2YlM15bFitvwin1ATIhlhwqdhCKWahOfQn9dnYHtDkCBQ6JfiQ4kYEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760279393; c=relaxed/simple;
	bh=u/gZwWf0b9V/3xNpJ+FaiNHUW0HBxNEL+uvvU0Op5Nc=;
	h=To:Subject:From:Message-Id:Date; b=M+EfIqNzBoHTVFaFdVTxRSJQZrChkroiZuYZH6fVn/owjIACKy0vo6WZBmvwaGguPX/PKXa60kEpSXoq5MIgRTkiqUQNYjz3pLvWuj93Okf4UewQEyQEeQlisj0HJ7AcFSEWSv0MGILsi9U9mGyw8bi6+tlx971EZIYrs8L66Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4Uq3Dwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4Uq3Dwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760279393;
	bh=u/gZwWf0b9V/3xNpJ+FaiNHUW0HBxNEL+uvvU0Op5Nc=;
	h=To:Subject:From:Date:From;
	b=P4Uq3DwikHNbt5mZjBUEW64gqT+wBZHlH9xCthrppdB9OH53Tzb5LLhM/8HDTZV9L
	 hOt9bcOaJflXuCLP7tF9oNkthaBARNr7dsE10pbwi19ZELDul8DIwbjgutrFUOiv5K
	 4Sqx9G6sUvyb8MU3VWoovlb2HdKSBkJdKMvZ7FBEOBQFCSrOsUtDW6hqSb5Gw2cmTn
	 mJLKXclnEIQs2HYg/l7h6JqSD5ReZPMcRNpbbgaYI5nCcBpGyJGYnPY70p3KvgieNx
	 q3nHfZrwrOqnO6D4RHZD4IYC7J8uoDMh7It/OxObEhhM+WNgIGJOGg9UwUqpiReyH8
	 xg9NTOQNdfHpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923ECCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027939358.16723.16385420696494771632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a60029e399b4a44bf7474d83d28ac6d6cb20f7e32ac9b14ea34b7bd3f74d55c
Date: Sun, 12 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760279393
