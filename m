Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A02425C71C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744190994; cv=none; b=GK804uLEIDym6BgSd7fQ875zJdkgU/578vnl5slT6Ii4fNE8/hyMrqoRoe1xfrzA/9+GexI4gaGgywOhr1DQWmh+wpUJyI81nU4zsBV0xCzznJOx6ox/OxWTn8baIqhux5ik31QPueAxUaQiB4rj+kJz6axEqLCFsPxRx2XeOtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744190994; c=relaxed/simple;
	bh=0bGqwWWZ46mrhmyPJXmzaUkP8fbob9eJFGxGLVRXv6s=;
	h=To:Subject:From:Message-Id:Date; b=abdnN9AdW4lkJtpY3DHHGmVHYs5Kh0Bk48Wqoha8FbAPHNAjtm1bfdF8CCvtRGdWgb5slyWfzGrzZEXcTtroftFYDSh440wa/zN6p8K1xQzXRpGFzu4SiIx2BLpEazOiaeC2WLueNPJsDnvW2MaA1WcR1RKwCrwKhc6X5VM/KXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtcDIkm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtcDIkm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B09C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744190993;
	bh=0bGqwWWZ46mrhmyPJXmzaUkP8fbob9eJFGxGLVRXv6s=;
	h=To:Subject:From:Date:From;
	b=HtcDIkm5w6zhmRb9CxhwBKoRfcl6mv8LRXZJ4t9rhzSd7SkKPn1fC8kkhJKpnlrA3
	 vqf1a6vpFgeZPxfdIOf0jZLGCxwR8LYiZi/CouHHXm8/rHRh1U1Wkn51OUcd2Jai4a
	 IGQDQXjsIQbPp8Na8HvllCk7rDgrBQdWbV9IpSDP0ysKjfhJjxTWbCwF4x2z1YkNRc
	 xUMYwzwUCYes/zg7T6JeQL54cohhmCRb63kU/uMIqG5c22ht6S+oUkgcxOMh7UurQQ
	 DNvsESKvAYg6kFwVhk6ZJ4QZrO03NNvJCSeqJVl6EZ46zUe7U0qi6EsbmVy8blyAvG
	 AnThSNmSgL3yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F101C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419099357.10539.5630479131189569573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a910fb5ea2624754f4b6b084665d565a9ea6c51f9b68c88b8c70ae0d7373ff2
Date: Wed, 09 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744190993
