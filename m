Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A561F09AD
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763747514; cv=none; b=GfFCb9OYBTJ2ro87/tTpUIYvwgDbPxRL5Z//ertv3KeDX402VYAvpV2Lw0wJsXfjb4sz49BPDycaxEZTUHAyEDqD6beXnLZU7QFe95GIZES4wCA4cp67Mws89eotamlzyH5ZOYTzdfbaJvSwuFG1wPrXCoRpDMeYFsRLv5si930=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763747514; c=relaxed/simple;
	bh=5Pjfmd/z5ueP8FrO9SbVl8MsdsDcUNavkOmVLfmBaN8=;
	h=To:Subject:From:Message-Id:Date; b=GBQw/IEZR0pTn094v5cxaZVlIftLsiwsKX5anGuRVktJ/FFiSj7SIQz8SpotEvdUss7JRRGibVW/h7J+JPnchEXbjoEFwBfUZNiC3srH0bplUdxaHmmmWOb0uS1pQozy+7KVHe0xMyeWiq4kXaC3hnTC6ZKETy4jkORycf2g6iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFtN385h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFtN385h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7771C116C6
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763747513;
	bh=5Pjfmd/z5ueP8FrO9SbVl8MsdsDcUNavkOmVLfmBaN8=;
	h=To:Subject:From:Date:From;
	b=UFtN385hYWdVwej3DxDfSkhr+KUvl0KCG/61YLMJefndXrYAz8PuZnk+7v35ZtWPE
	 cr12TD86959wOFPdp1HI2Ou/0VEoYZPNiXo/mDCHialsc9kOE0ifBAeUgq1C5nHwV4
	 cZaT9gH9VPnNBG3IFyfXpN9u67B/437fe9sjIGXhy2xImG/UnX7Xb3gWGyE0z3tJ+q
	 tPdOCFi39RMBzaueEHBDw+ElK80NyCQx7XuOTXIllY7suX2CERs2OsVd+EgkFtFyxp
	 vYlE9lHFDnjojk6FQaBFvj3pyKtDjYO34uuqUV1Z4Qxr53nMiJ9dJRdFImKUif9vHm
	 +koXz33gdk9Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9296FCFC296
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 17:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374751359.15341.12576504926028438766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7486df14740c40cea04b1d45fe6eefb37647134c6680018962b6dbd3655bb8da
Date: Fri, 21 Nov 2025 17:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763747513
