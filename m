Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A18EF9E8
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753022394; cv=none; b=ZWy81f51BzUgYuFstxynODDgtvkuJ145R3oshlLAtciYWsPDs/oJgVDvGK/yiDbxE1pqEDN1velhTBlJzC+IgObImUad0evPWi1SlCgiU9KhrLbWc5vnsi598pvDeE4tW7lmZri18qBdGI06IgjrpkyvuAAqdAdBQs464bC/G6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753022394; c=relaxed/simple;
	bh=1NruEHsRTAjonu6CzjSYb3D+mFTMaD+E90EWP7aT8Es=;
	h=To:Subject:From:Message-Id:Date; b=ij6jmQ84tPmCoweA33fJGNzSHJoo6ML9ck78h9xIv9D2rL8oosYSjOvmOrufkB8OCoO67c5YS48b4kfSzWLJIYUTpkLggoS0cbQlwphOkLBI/kX/F/Y+kHtBhhg7osiUx8pRyJzsWfwh+srwwgjI8bSZUeMcTgDX35UlOPg/s2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sElquojg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sElquojg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3682C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753022393;
	bh=1NruEHsRTAjonu6CzjSYb3D+mFTMaD+E90EWP7aT8Es=;
	h=To:Subject:From:Date:From;
	b=sElquojgiy7IZBjdy/PBZ82L1GUn/X9SSbPPzTFO9RZxXxEClx+QfRzfM34zmMLdk
	 Oe7iY8ITby9WK6K/KU0aAcBfqEqWDfQUlJmrPM/nxWg2HICOokd1QvMhVnoO2BF1HC
	 iCnjougcRhTrBK2tVqnbZMZS/ylBvGCk+k+cz3xrwE/8IolgK17qXWNoQBYp7hZd59
	 bORjBlc38fRixkmwmA77wr6LPcKz4T5fdCdIXmMkkGs9WhrSjYwiQfE/pG+xTRy80H
	 Hyi2JiHVapGn/QyndeaxP3APPxoQBldSl/NCwHVkiYXARlWUdrG/sq5avDED/maQDy
	 Vp/xlwS9bUxfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FFC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302239358.9007.1360368621832156850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9123d37c484919496bedc68a255bf2d81e1598229da18eb1a678f3e75f6fb8
Date: Sun, 20 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753022393
