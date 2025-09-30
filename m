Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3708B296BDC
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759214394; cv=none; b=KV9oGJmQlFUocS+Fau9LMzra8wULTrVy4DMS4acNJ8XeRK04qLvIsUZofqC7vmjH4u1ZG0zY7FSq1OCacRq/o/fAWXaNA+nEA4VHJK0E/h/OlyBkJkRTSXpxJMz0vymrD8r+YLSTFVxaiGRoci2qR8j2ttKeveJlMwdcVJ07gFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759214394; c=relaxed/simple;
	bh=iEf6As/4B43Qp3DL6yBudvOIjXLodCo/Ht0wLGw6kog=;
	h=To:Subject:From:Message-Id:Date; b=dFB89+VtpM48CdCmON13Icw8pP1dKykbeBzJPG4VPJVtZpZ1iUY5Du5X/JK6qsfXm8SD5vBSj7OFD5hqCHZMFYhoVQssLW5nm4XGrk5CT5uQNK7PSQLDBdmGZwwFtHOhtypopxW714HBCVkrGLKgfQVSA/rk/1Cd1v9aDphGDyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/3IzjpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/3IzjpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2320C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759214393;
	bh=iEf6As/4B43Qp3DL6yBudvOIjXLodCo/Ht0wLGw6kog=;
	h=To:Subject:From:Date:From;
	b=S/3IzjpHsxFRtzwwmAPjJifPoxn2U1ZHgthAlIf4PSHcqjOjW8l2iJlzfC4GmywHx
	 4AtPumc2ascFV/tDwXQw1gcVphkBPIPxBGk6VzEbNDv489wneyjgWNV2KY8lSDLm1n
	 c7wcE6QZliAEZRDeQq/dWk4MwvtxZJFmwfY6fo5VIBHiwukNC/hG5DwU7tyNXV5lAn
	 wnivWPcAPb/zKmIJN05eJt/tc6urUV8/aUvnDqLFjfPYvOzB78+YNwvQSdFm2yk3Gl
	 jVq07mrvp8LqsWB2j4qLLLoL5Y1kZmoXT8fihf5NKg9IFdNs6dP1ZcvL0FXzoRtQDa
	 pIxEJ6c0/FMrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B17CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921439360.18758.7241892446298635642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94c4f26046d491e15a599ee8a2f32df5243731f9a6d047dbd540e4c0b03bf26
Date: Tue, 30 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759214393
