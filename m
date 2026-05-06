Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A2F36E47A
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778099254; cv=none; b=VgokTJb6A4yFrqT3WCUQOk2Ru81d2vu5cEBL9fMsQd41oM4Auu6D8f3HMV+fpQGDwl5045BQe+GplghLRw71fZZI6K+mEDEhHxGtVaGJqVot8aKl8RszICzh2uNuo4LQku+JFmDrOCSWTjUW0xjQz+VvbHtII9hTX6j7oSvlcZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778099254; c=relaxed/simple;
	bh=3YycLloHDZ7CCtOWs0E4d2vxz6/rgZcx85UZLz3SOSI=;
	h=To:Subject:From:Message-Id:Date; b=fJNvXT5Tl9x9WcltzN4p3Lr9vXGBZFPdsU/jc7aUK3zecOmVmUcVHp6GnsE7lbTBBKP13cCaM+IQIGHWHJZ5GDH36wwZcub3+RitOTWLK/tE+3mPnGWN11fWUOYx2RyDp2emPTZtCE1fULz/E80t+ZJvvI8USnJfAZNHw7sO9/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TibKrF5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TibKrF5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04E2C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778099253;
	bh=3YycLloHDZ7CCtOWs0E4d2vxz6/rgZcx85UZLz3SOSI=;
	h=To:Subject:From:Date:From;
	b=TibKrF5FrcP/i01LHl6rO0C3Xrroh1BCPZKfa53HrgFTdb+bTyRB6hgsQ1howoruT
	 fxwr46WfXv1LiF7OI6N7l3iDvDdEzFBXkTBsHMq5t1vDxMsL3nMUnQM4YbAdDbXLky
	 XKosmkljht1S3WJdpFwy8RF1N/mbKOuhLUusMIlo4ITv3lSxJTAQ96qu8UNoVPlmIZ
	 1IAf2IK/su+fBfeKVfsMBpENrw0PsirK08N/0lJBXKb7qN06FfVtzojF6fOOnzzyTb
	 8gLqKFnVCpkC8lp1bOIldtcPaD7lAoF3zVB8Ihm88FdLW2AndPYVNQYx+DVIo0+1oy
	 adivVOBPTAKPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD93CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809925369.10908.13844974830870696086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efe81c6590cd4a0916f2b6a61a77e8720c1353cb8763df3d846c0e68c0d4c17
Date: Wed, 06 May 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778099253
