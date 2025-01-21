Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E481537D4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737488154; cv=none; b=agEMOqXEuodf4tEiqqCQriTPNiaxGgCmge5eenfcsZXpLI4XstlUNyxjFQQCMQWPTrSGgxDxtM8o2aLzEwYdYNiZcDY6g8//g8Nbe/ayAciUprvhmEefHkXbTjMktXko+0NEMM6vpizgEGNZzk5yWjWVQ6lGMDy3pTdvyAoazEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737488154; c=relaxed/simple;
	bh=672DvYXFYr5N4HDJQm/ApuHtz6KbbG0BgWAinKON/9M=;
	h=To:Subject:From:Message-Id:Date; b=It7C5LfSuJfXabbCqESU4mHjxF0Axc9jTdj/IYb5Gj38A1mdW6/doOHGf3Aonl5dXcOOINGwyhC3VCcDf/RiI6HvFf/rMaTjIT88AFDdghn48URK1tTAHjdChLg1AvzoJUCfIRVds282fQWJ4X26QcrsO5ulsVtIf+u2c5OukT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxJHJPyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxJHJPyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B24C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737488153;
	bh=672DvYXFYr5N4HDJQm/ApuHtz6KbbG0BgWAinKON/9M=;
	h=To:Subject:From:Date:From;
	b=BxJHJPyU2euKMtkaQbNBGSBvZZrPPotbCsEC+AP7h7AeZ0ApK0ZilI/5kU7L9VnHx
	 v/1EKbusvnq0ntJY/mc9jRbi370G0s3qUSTOt/3y21gkdi+oqxZl+ODn7Na13m2rEN
	 KCXZQaPEiOX4czvNCMwQQ4SwKFPMxP/4mQFkz5r4P4xNTsQ6nh9JVQccw57pijKVoJ
	 73NQkjFDHPFnGzTGgCqdOhByw98eL6UcCThd2bVZppRIToDJEK6z+m2wQ0sGBwzGNC
	 8wtciqVp4wRRTvHEurd+zRmMjBF9uqgA7z8Cr58Ezo5fSa9p22jEXNGjptulkSiFKl
	 /sZAuWQhCEcfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2A5C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748815363.19725.7669143170948621561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d99dd33c6e4b3cfc1958b33db842b6435a229f4a5c326c56ad4907a5603951
Date: Tue, 21 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737488153
