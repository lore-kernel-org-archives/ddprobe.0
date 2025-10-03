Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2908422DA0B
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759478994; cv=none; b=LUWZ2J5dF5SmdZJNCFz4VUOgl3i5qa3ZT1aE4qfrw5HjeXeViw0VQpPF1gvDkBD5k0xlon+geG8wgj9lUPF2oOTq6Ng/wCat242FBQVzHHK6RvmPupOFSgLnyC4JJoPtHYm2Z2wYRneoQvDaRhN5M1ZG/0ttcixvT8al2eZjN+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759478994; c=relaxed/simple;
	bh=b7GEVuo50z8Jl2toP9wFTOZdJYpivBG2kq5qfTNH7Fs=;
	h=To:Subject:From:Message-Id:Date; b=bmSg0hJN8wdSWtnfj1osLv43I55OrbXZn2epOconTEsKtDgJPDOy3giXKY4koqBCnidqr0lHno56kJY1e98/jVq45cFt8bl6ylvb+WFVXvnF9FZMUAYvaWCl9J5oyLurL7ATyaH05bRRS4UA/Bhc5FRMEgnbzsccuRcI05gi3Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGiwxTUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGiwxTUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2397C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759478993;
	bh=b7GEVuo50z8Jl2toP9wFTOZdJYpivBG2kq5qfTNH7Fs=;
	h=To:Subject:From:Date:From;
	b=KGiwxTUBKmE2D6q7nsaDQrZiw/G0BjDCbCel1Wf/zWUyIicUZjQd1wyE7OjcU9QVP
	 wGqOloBfPDogcuigY0bxQ/DZzVqQycmzBoFimQVpCWWbKc2DbUQFRg4r4h80KbXZWa
	 PJtg0Ks05lbvxDQPSJcfe2P0qd4vzTnVCdcLeButnR++M0S3JvbescLzQwj/ZtG8Ma
	 zz7HuEMuMa1siRmrT5jZdEIuIesxAJ8E7FhYIyzIuJlvPYll5jDKJ8LSjCxCIn83Wx
	 DU9VhIYbMWMD8/TE1wpFrma79WNksfBWuf1d+l9KZHfvDsPzILw+oyglhkGW0AL/hD
	 +GBRaCH5m3WOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA3CCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947899357.32330.2161842461438191595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e68a99b6a90363eb800f7a86ff41246dd3bd91c413d6df46c1ef923f048c500
Date: Fri, 03 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759478993
