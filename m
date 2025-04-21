Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2167FBA2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745249994; cv=none; b=K17BDGyF4Tbi63iQ5vXoctGAEhx2G+d3q40mn12jL8VEizfG8yNAiW2bvp8bfNAalRTOtvYkIUk1XeoV2K6mTyH4cOqdMcyEYeY2Y68tTUOzZvUlgr9L4S42XlNrqSrdD6DN8q/bl8YVGHp2L06cgE9wHHGLwfcJ+rAsCmgI6wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745249994; c=relaxed/simple;
	bh=8MHFH+bs4J7WpLw2xkw56r/WwMRvagNm7mCbCayYRlc=;
	h=To:Subject:From:Message-Id:Date; b=Cp4BeI0fLXn+XiN6TKuC+b9z0zPxbCsZszoeesRPNsw1iEvPD4njN3XhzEXRipraZRoge7NNbSAnF9eICuIiyuWT8f8D92ikPaUJZLO3uy0e1WpiwN0cQ7MKIKF2w0UC+Bupir74E92bjiUDkjeBLKwonX//MIsBb8Shcnn/pK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+NoVSeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+NoVSeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80B7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745249993;
	bh=8MHFH+bs4J7WpLw2xkw56r/WwMRvagNm7mCbCayYRlc=;
	h=To:Subject:From:Date:From;
	b=s+NoVSeg6s+L/h10k4YtcTaY6YVEJAJHa5QwA/aW6fcPOODcXSGjXf7RG3OLj9K7q
	 m2Iunl1ofQqudn4bVsYwau3Kxmf20/HKjE6PX7K2UkUqmjm2Rr5+7QpF7Ssp5nDJ4X
	 mOXM7HIIncNMRux2Dbyr630rVEv6MgAX1nVQKCRxp1tPk9EFt6YkKghXnMokww4qmE
	 kmKPnFvMGce81IBJ/WhyGfyhoeq6T1vCoZzJSSaHfv7ml/riruuIGkAX/Ca1niatod
	 fAxp+xoGAfmj+FdlIdZC60wt8YUXMlKgtHyculrr7cMbxcIv4/WbjVmqAw68ERVQvJ
	 ZPcD50WJUZh6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BF8C369D2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174524999358.29271.10243636112230115329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b52243175af7dad2c6b782b1c452c966c9f3211e8425dc0798c3ff00e6866ee6
Date: Mon, 21 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745249993
