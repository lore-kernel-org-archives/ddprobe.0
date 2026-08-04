Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE693C108F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785816634; cv=none; b=d1zFYLfwp9N70HIiVE3RB5GuxC7+tpGtKY1EQNUj/vkHMFcdc2Gg0VOBsfl8YCjgRwHzf6lBVhrx+bsI+04KKjG08Wb8AVdsfqYdZn7FIF4etZAq7blb57smTX+4mTtzHpqkjEEICxS59AnJXsnGhWhXd5HtWFEzkc1vUMAjoxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785816634; c=relaxed/simple;
	bh=SuWv67w4/RPBoKztziZ3V51J/zd5064IxtZDCla/BnM=;
	h=To:Subject:From:Message-Id:Date; b=NRfmyvqCQom09LDKO0060osjl54gvPNvrsethDFFj5qGxHdTYDvGeSiSMufRtJWpqaa6jTXHzh4JSvteoTXybz+DQAd5Xi/S63+j7gYmMiq/Y+b5SD7lbopJMPQy0XnHfetUF8kl+9UsRx9wGMZmy0jmNh7BMfEAUS9JO+fu25I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haWoLqJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haWoLqJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66BEC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785816633;
	bh=SuWv67w4/RPBoKztziZ3V51J/zd5064IxtZDCla/BnM=;
	h=To:Subject:From:Date:From;
	b=haWoLqJoBHQjp+NmIaIpJ56nBb7k3LaeCuA58Cld3OSlvb3IuoxRwbCPFnab/svrM
	 v3OCJa0fqmBX1WEjMZZ6SNNNJYrdizghtgHoxXtJBfXFBuhX4PKFC60cAoZVd+sVci
	 j9EHXhIHS3cHo+HVSTsyQLhRSSubtIxn0Cx97B12G6xsXcxhx5sb99+tbYvhKR2Iq5
	 y69oWYtggF2hhWvXLb2OL9GBlYDZEwQuJF3Hc2XZKlE6exfH1seZAqoVB9U5uqgHNa
	 AMc/lrLtvw7aoLnfoLAeGtb6MBCyNL0LW1lCl/MQTfe0kGIsVvCNNdEzfqHd2YzYPE
	 0aj1J23jQwcDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE3BC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581663369.32206.15549200203410104977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab743d16e3d40b69dc42695b111531bbd89effcedda26eac81bfdf6ea375ce86
Date: Tue, 04 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785816633
