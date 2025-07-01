Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B42619AD8B
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751387394; cv=none; b=SD5eK9mL0XR7ICEs3VBXLuWIrir+4A8noNowkafzwCfvIakNMsjirpBHNl0gRjFuaMlvTFFm3R+2RBZjH4TazUX1LNO/4n5azLkLtf/em2XDL64n9ApciDQhjO5/UeCYtHt7KpCH3+aVsriJGadVHwHGFZGtzYGJADN1kf2N2ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751387394; c=relaxed/simple;
	bh=H7ng6RCwUh58H4q/xeSaCCApFb2bNj9q1+mdMK+iAog=;
	h=To:Subject:From:Message-Id:Date; b=R8lXYd0zCct2eWSxDenozSotOzNrzaqbmA/KOFtbIyF242VUOsehxZ29BIwCckStN5rocHW/JrbMkqVowQmX9zMPZCZx3bTxoZ11b8HRH0J2r3ZfxYFYWJrJhDPHeEBzTUhCh/eTztbQxjd1UvnPii9570o/gtoeTUExmcsw8dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4mBwXtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4mBwXtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1C2C4CEF2
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751387393;
	bh=H7ng6RCwUh58H4q/xeSaCCApFb2bNj9q1+mdMK+iAog=;
	h=To:Subject:From:Date:From;
	b=m4mBwXtD0c7IzVnbCLhfSxFnbgqpcSXpK885o7IYzQNMMG8jhDc8PmkJFvy54Grsp
	 Ovxy6jjPe4OcUvvoGjDKW8rU0mUU59QW6ULtCBhVo+h7WdBUczwW3NPuLH9OtIyU+z
	 j4A8gpf40E0bTr3SomAjqJIsP2SKKwoRFkbEM7J3J/bSf6mc9xhgKmonUkfBvl+fw4
	 vqNWWo8pv4xyT3gXKPIlZzrzgqcQ0u2QheSgY3t+EsC3cfXzOg91Z+k/yiAU6ZmfUe
	 06JuCOYu2DV5owFCDS0qmAer37Y55dkCkJCfdPGrL6aKMRBL3ozGQu9cl8QAtYWlyV
	 TvorCMcpPwRKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90BC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138739357.10165.10409548923349253806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b2a414669df4442ea9480d0d7946361779b024e12c0f175d55bd40acbd1d57
Date: Tue, 01 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751387393
