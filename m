Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C16261B9E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757632794; cv=none; b=J1mz4SkjjuuPCffZcCxKdHUSNzF3hhAtI9+aN5OqBnaNwpHUdirzfHSoqMlH62Y0IfGdv0PgRFzKlVQ3Hq1eEUj2oaJpJU9rKFDS+nLivgAvi9jTb9KZT4zQsZnQnSQNK+TUhrm6OD3WJm8gXIndoQQmzGhsjgvWCwZ6jNnTb84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757632794; c=relaxed/simple;
	bh=AvY/1y0uvRqPSNB3o+HuhrWcDYzl9OMXfD7gBZmp3sA=;
	h=To:Subject:From:Message-Id:Date; b=EphkqTKppDGjqmtCpwVKmjrivUQXJZEQojGe8c+70HrWvHHAGNV06D8iRAp3V2YxhLNjpR6DAyQsi06I1UnHON/s8SE8NUiGvg3kw7yU4lfZKx52kdkxhEek7QIBkTZEx03angSJAJN+eexcCOT9k3QhMN3hSIDAWWB012CnG7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+DqX1oQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+DqX1oQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5667C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757632793;
	bh=AvY/1y0uvRqPSNB3o+HuhrWcDYzl9OMXfD7gBZmp3sA=;
	h=To:Subject:From:Date:From;
	b=N+DqX1oQ35YrycAE0ULlmKv5QMaNqi/zNCNvCjb/2wrSs0u1FVg5eu4HTzSKnfaGS
	 2vBWl6j8/w3KCmoTCT1wUyxAOMuHnNAElQyao6F3Jgj42wUW9uHE47sSwRSFvRPxUh
	 2axTJrHGtcUXxnz74b9fTOTkpofZP2LySgG2KsANiXrCr1DT68i3SfkEC4K9JGnux9
	 9paDdYfP+HAgP4WMXjhOMVOkoKSZeFdqQ20S+aP7PTadbolWfojEc9AerdIoKkIoUV
	 CrFkOP8Q5a+yXGhuLt1OqFGTBA9ZUGfyCvedVlrRJ8yvzS4UxbawkqdRx4Kf8jSSJC
	 1EwJ8TGy0xaZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9414ACAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763279357.32074.13938497417148700058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0faa14b6fe3503b23bd45155e9bc5b71df575791d3263f545cf3d47a3e991b9
Date: Thu, 11 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757632793
