Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A33625
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781396194; cv=none; b=TDx2Y32+07YHcN+hTdE1pcXore8qF6ZPt4EbWgUBnRXTByPwVtrEYX+rxoHZHs+1wkberPh+REh+ysN9D1dGk7Hm9cmfrJYU0arZ4N0mI0ZAHOG3U+Lg5VxzHGH9YTSsYckHyEa6YAKHLv11ZeI+4A1AjIyfXdMZ+i4l/mi6UGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781396194; c=relaxed/simple;
	bh=KTBwml3QbiBa84iilPM11zabtuy2SR7DxFteQpQ0LhQ=;
	h=To:Subject:From:Message-Id:Date; b=GUkpkuKTlQfgQapPRjPuJR3AmuIiXaAMPO7PT+v/7VrCY46GVXeDTQklsTyEaB37wmSFhSIhKWO+yqiQUAmckQfyrB7k88nd+W7SFeSSlR9AdxGMFt5/lONtWfYT/l9flS8AilwkH2vByGtlwgxvLjDEMabiN0cRGJnmZKdz9Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVVc8e9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVVc8e9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06F7C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781396193;
	bh=KTBwml3QbiBa84iilPM11zabtuy2SR7DxFteQpQ0LhQ=;
	h=To:Subject:From:Date:From;
	b=jVVc8e9FBTDMcKzTnc6O9YfbAtU56ypmNpv84tbDKMXYGFq2P+IvrbgjJYz1mesVZ
	 fnmirT/wkd7HmCm7ddM+5HdUQ/Q4dOjaQwupR+lwdW4DavHC0aOzZrJWco1OT2BSPb
	 m3knfz91/zhNej2NDBPAzT/hrlCvP4oGMsdN9JJnfZmG2SE6HILVs6hGPiE+MMkuet
	 El0UzMmAvaDsZHIusDj3ONALgNrdPPCu51jKpVVjkPQ+ZORHB2oQlL2trA8zpBK9Aa
	 dTRAi0ofWhA734iitG+TYArNkt7FpHLZ7t7OWCUHpH7DzpPma8qKirWaUsqwAteEtE
	 qzyK2AcPzajjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7753CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139619367.27310.15615361815964172349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffa2723fa38b83a6f5dab3d7cce8249df91397236be004d65f6258788b02604
Date: Sun, 14 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781396193
