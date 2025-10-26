Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1937826B0B3
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761511194; cv=none; b=Nxcvm8/CNsNFELnXduBLY0VRRIVVV/eyfdTF9u598crVAIYdogGhS+kmgp5K/G/qwVS4FtoheeqyJqK+v/aR4VyvZRQG5RjzEL715OQp3eO3pvT715jfbrC+vg/VF8tUpb+0X/Du1Vb+n3DWf6hw75F0pOrVqO50Ma3uMzz9QUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761511194; c=relaxed/simple;
	bh=AhL8bV+MP3IEL87v7NX52CtVcFse0r/LTM14HwWG1v0=;
	h=To:Subject:From:Message-Id:Date; b=XyMPMDdYqAFGpykYHfcYxIa1ekvDXpkFLIUFMKKbRU8WCLrobiJOkbKXmopnhdkaj0fZ4qho4ai0z+y5LavX/Z1AtHpFBtyyAeU87mDMVS1xZVeWxzE4Bu1KmUCJC8qKSw57JHeNzNKsQIKnWpfKJzsQY4GeI83mCWqfSrFE06E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epzu4SOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epzu4SOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5459C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761511193;
	bh=AhL8bV+MP3IEL87v7NX52CtVcFse0r/LTM14HwWG1v0=;
	h=To:Subject:From:Date:From;
	b=epzu4SOTx95AOKWoph2pK26PIl/jYgCpQNkakgVeD1nTBfDKKa7fUFbvbfPOAAD3d
	 tP9CWdbl7OVOsVDhrbIRKyKacdgvq1D2yiIXfjhCuwofkGhosNs9+TfFxN9y2MIhhC
	 56S3MfqLLyqm82bdCf1ZlbsPKWnrfDX2dYwjR8GmyzEeilUP1fHeqqrSGZ3wh0ClyO
	 +Scbg20QzImhC6ZVI0t/jt8u7Tqdj42bWJzzsAvCQ+DBxUN+9azFUKcVuyZUvHXIxm
	 RcUZvX4Ojl9wYZHpaVCUaUxeqA+d1oH05hojwpJdOlwhPkvt4d4yFEI/ZlVH4TKKre
	 ppEVsj0AfPyQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9173FCCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151119357.6849.11495294281441565343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e07d7550de25db7e30e6e803eb541482ff28761ddcf70d0bac2aef19256c49
Date: Sun, 26 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761511193
