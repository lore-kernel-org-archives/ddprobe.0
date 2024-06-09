Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643EFA3F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717957043; cv=none; b=n+Da1/F7FA5PQna+TA1uItIbw96VFYccvCtmIFh5BYPBHQLKX2dvyl3qPYNP9DYSmVAcnqqiRgGtaZkgrR4WOspnVWFkN8vTchwaiC4QNO5+J0uIFMnmZKEf3Ov3V3syW0krTocRlEHxQ1Ujxbgb5lm3svmL5mShpywyIJwLook=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717957043; c=relaxed/simple;
	bh=x7jfw00T9aOAdFV3Zx8WPa+H18bllctr17lMqCdIUXA=;
	h=To:Subject:From:Message-Id:Date; b=jaE+K23Q/G3IL502mlni3ws7EelBO7EQOnor78GwpIK6sC+LvddI1/M4eIJ6bAJhnhUvyQL3YzUpsytlCJby48IfUyipd4puCtZlRmo/3qnRIn+uXl6/4emx8KC4HdItV2HgGDg1aCYzASTcJCTKbaq7YsoYk6hAnC2F/9LQylY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL2vqjvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL2vqjvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BBDC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717957042;
	bh=x7jfw00T9aOAdFV3Zx8WPa+H18bllctr17lMqCdIUXA=;
	h=To:Subject:From:Date:From;
	b=vL2vqjvRMj/v/KvdEuQMsoGX9nXPsAKHrP7TOdokn7PlIHJK1lKYPZ3Wj8JX+g46c
	 hlkgvizUzl370wqubTe5Mw5+U8bisanIEBARbuB8NjctbIk1VJpDS/GgzdPbqWfxeV
	 kUUo4kKb6S33HJoIJLng7o4PCcxidzZWH1zQ3NFiMPi3EVi7C+bshUUzJIgXjTyCYv
	 xjFzWpgqUYgjkgAPgr06g5DaqfxIvDF4ztwFTZbbe1aXtLziNIgRUzxx5U/lhuDXli
	 wnVQeha6vwES33BvEaW64pxFrh7Cj6Eb1eZwbT/t4+a43aVOJNVxayLII02PmwU58m
	 9EVkmXp8+HZZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC321C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 18:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171795704280.17119.13563611817909105999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d04f970f2d044fba7d38bed265ab64e9d44266fc9191a6990bcb878f17b426
Date: Sun, 09 Jun 2024 18:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717957042
