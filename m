Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823973CC9EA
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790676034; cv=none; b=uhAZqKBh7tm6+Uky8R6Q2uvY57FXV/ZJBVmSizASgbMoVK6nPgdV8Bou5/YTGEaTMCF/L9NydnROaClTXIKCV4opNBciai0AE+jlfVHiubE7MzGexx8TkY0fH/otEh7U+pB2VwZBLXoCeCxDoiMy4F3afG4cUJrfNX5roLGNjoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790676034; c=relaxed/simple;
	bh=MhhuG4YWLdZGyzvhVMBEdkaO4kaWGEScibCAjYf9gY8=;
	h=To:Subject:From:Message-Id:Date; b=bLo53ADU5Hk6BfQO7Z5m+zIYZMy57YpQQhJQQxR+o3sJlgtQVch07pFSBi+QAi0ciM53t0Z7lG2tAFyEd+61Tj7sKbcr0+7RLtYVsJQRIqroHw8n1MYoUmEdp9HTEi2YUuAOGCElAC3VkteJzaLxk9+nuV5SA0fnidqr660xvWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noNHQgv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noNHQgv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AA3C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790676033;
	bh=MhhuG4YWLdZGyzvhVMBEdkaO4kaWGEScibCAjYf9gY8=;
	h=To:Subject:From:Date:From;
	b=noNHQgv1O1uoeVZl2i//2+oPt2YxgkhNb09n6ZZBLWUB80MQg9UqomM+qcEs7LkRU
	 xv622OyW2qmGoM+q6+WpWZa9X3ZtnJEYKwJa7ZkxWzQDnYs/wPs//+/Nmy7cX1jeZB
	 MA/U19BgyG9vOBsSjXpwrt5K9DnzJ+eTR3tvtZAOVX2c4y2HsMpigsaL0moZfQcx8k
	 WGc3qlYtbl57k1PciD6svoeloUssa+NBV1keI/MLmSdIggbpkSzV9oWBvgycjRpV4C
	 Z6ZvpS80GBh7VvHr8zYw96Iu3jFSzRCZacjZa10yL2fCwWOtki6RTkawAPpE7sz3CG
	 HwKdZW5IQM/2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE70CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067603370.24436.2112490712203658553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746e02dc750b78f28edd0f1537172e4ef6f8bdd86bd95ede7209c58c2857ea98
Date: Tue, 29 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790676033
