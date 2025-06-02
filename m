Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC6417A303
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748848194; cv=none; b=a7Cq/x3E76IWQiGTyFe7q/nju8xciXttZQFENlOn0wPBV+7g5szjcQ3L/xI1YV4tWeMGidn5FZSjlyNWVKSdq5fI+OwarsjdK51eYbzG1qu8bSallCmvO7soyIkB+eej25zlUFIYfeHqMDCHP/pUiRCINYNq62iUMM+bhowowJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748848194; c=relaxed/simple;
	bh=zZTaXTMMptkpiR0Nezr9ymAKPRVI+TMR/TYkWJAWQQY=;
	h=To:Subject:From:Message-Id:Date; b=o/IzR/bNAQji4ucinZMAeMFY1EcCYvVqQ2hLluadi4ySZacU1kwg7oZX5W4DSo9+uZJoALnl1KTQK1qelefL0i5M2BQsQdHLPaRP6HRk+05SrMwI9XfgvVddEfuAKB1TvWpMuXQCgvtXH2BpFJ1tWRtpNCSI9lOn5557Hm7UuEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIcD7Zz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIcD7Zz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748848193;
	bh=zZTaXTMMptkpiR0Nezr9ymAKPRVI+TMR/TYkWJAWQQY=;
	h=To:Subject:From:Date:From;
	b=UIcD7Zz0ppVXt6J6JwA0VqjfQ6mTtGRXuYoKMryKb5MSvN/OP6HEshrBa6F/d/NcV
	 XGNcqvqKvfXIs0F2ps4TaW/2UASH8H8Nb+J/QOmbTBiKJcIkyk++WRMKCYT/6VgCgQ
	 ajVodBZP6mmqhxEGDm0UtNyYGYOYZL8SePgRTmR827EloEp3oK41mUs3Wbuo2c5wL3
	 +j207ITQcSFh7WU/+x5bX8gCPCSkMFc1bmFBRGQwXDIuEP1ObeU/iMJUeCPe/29JXO
	 wWLU9aY7K8W3UHj3Wkjfm1PGo4gLodHBOZB33axT2l0HYAG7y1s5Bn1+1rQjlwg+TG
	 eJo4YoM/UIvDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C4C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884819358.4407.3736779781832216839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac298a889cea56d483bd608a91c165eff38f2401b27daf435ac8d31fa8dfe97
Date: Mon, 02 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748848193
