Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B2B6AB9
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712470697; cv=none; b=kkUcN1Dwhem8mVXLDeERRuH0qAps2v1lGy8VAgEB1mYm91tsGHY7xNSnUT7psaJn97u+uYerpV2kRrE3AMrmFixo0kLpngjF12swi8+oXDWasPfYSEoodMzqt2uy8uZgb2ZLJ1UPJTVe2FGedRguoUYc2qpDjsb1PO0P/bQLgl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712470697; c=relaxed/simple;
	bh=DatgQLuekgYRU01uiVuWupJjilxy9YyttGxT+ueUIcM=;
	h=To:Subject:From:Message-Id:Date; b=cUk1eUGAvaOTNYIw911HpXhqSX7KnWaPec1ezKtiPryMKpXhIQqgPI1BsxzuElk9kYe68ah5toeOqmPHBSlRxsR4kGye84BPlWGiaoPN9O0nmWdPyfuBecpv74PHhuVO/pm7e/s4sMy8t1O9xCWeJzV8JVHKNRbIWqQbrFSFOzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKBk3udh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKBk3udh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738D3C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712470696;
	bh=DatgQLuekgYRU01uiVuWupJjilxy9YyttGxT+ueUIcM=;
	h=To:Subject:From:Date:From;
	b=dKBk3udhWgDcV0hH9eoDtSd/owNBuwzRtQwGeY9UEQPm6O2bYszda5AOickHjzoOR
	 FyOBFU1gJQUMSMzDKEqw+6OD7FwgjSmShHthm4xsFNqXWMp/f5sw/EFxZ/ECuNUM2L
	 8WfvBqmYX6cqcDBorLLEFMaj4t1ax+83sUJNcErYYK5y9phtUdl5GNbWZ8Q58hej0c
	 Z6B3r7cI92iVufnb2NIXg4a7b8s/cVl3gdzvCQwn2RMAqTkXlyzZr7pOH+fOi3vUJE
	 GlH9kHmc+l05VYC718KVeBl1KkdXxp+bS2p+DHouuNYkBfhGDO7WaxXUFOTQ4Lk37Z
	 ucLS/7+xmqDTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E480CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171247069638.28362.15985478437894705400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228518bdccfae32e53467235969c8880f2a07f42a0c90ccafa86dea1e8633857
Date: Sun, 07 Apr 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712470696
