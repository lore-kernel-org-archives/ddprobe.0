Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF5D374C6
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 16:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716482603; cv=none; b=sG+zzMGrwOhkhocbbmXv/8NyGrA44p7xLHUd24nNxhNTDd1qdD07pvLXRPJsNgUO4nVeVIiMJfQWdIVr0SBVYMmWJ8JTFi6PFAHreGc6CGLbZ+UzSOwEidXFbOsqce3MELdZmzuIlU8zMdIsF9R2vqydtG2K1YKTzVQM/lNequY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716482603; c=relaxed/simple;
	bh=Q++HLZzckiFvCSiP+6QFHGT3bndhcH0J+XmKrpvGUpI=;
	h=To:Subject:From:Message-Id:Date; b=HgSQdAbddgGZ9Zg7PJJz0PMRzg4qGSXfkOO+NcYaOPnjv/4WG84JR/UUupTNMc9CV4b6jRhKDCRl/OqnesOqJhkUUyJtijFworbwU4g+FTDN9xY6MnALvt0r2aWckV//jMgrxDozicQB6isDWhNwtFTAnaf77pTAu6sIUmFRogw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7uRcsk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7uRcsk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F3DC3277B
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 16:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716482602;
	bh=Q++HLZzckiFvCSiP+6QFHGT3bndhcH0J+XmKrpvGUpI=;
	h=To:Subject:From:Date:From;
	b=R7uRcsk6WzS5QywnSndan3hzzDBTPTKrho5xQG9DHfZxGJOK5PGlYhASjXIkfBqk+
	 GN4HXW6BKpIcjX6DDHKHCqeqk9whQ8SJbpBXTlJpw8ie09Jc5UUf7vENfPLtnS0PRy
	 nEqqTucNvYS/c2SgmFyTV2mXwgzJ3A0MhmBUGJMh1EA0PRl/1YaWIFx36j/C8R+huc
	 94VqUHV0Ac8UhTBV0RObhRPL59cXd18MA97UrXWAOPjTn3nF4FufES31YZHMdoG+0u
	 SjY/IHdNWsCZSW4uIswPWEPP8tBBYFecLWh86LgU8vEwbsJgacxGVljoo58IUKPprw
	 DPWjSB6lnF/+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE00C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 16:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171648260277.31951.10176969281724039995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff83bf923ccb5597cd0db8a22697f493103de212a87c28c27589c2b530633698
Date: Thu, 23 May 2024 16:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716482602
