Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359771A2C04
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744054194; cv=none; b=SjCqEQZf6/7puSZ1v4fY99JzXPX9+CohKmHfwhZaT4yR+XTb4J8UnuAke3iAquE+izpsxLQ/QhgY3jYOdEVG+9/Upgh7gmqDtJQH2p3FJiV9697a8fH2JqQ8OMdKkA/xsEethzUBiPK+mIsbHi8ux/CDA8uxaUti9ECE2Af1RqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744054194; c=relaxed/simple;
	bh=U52jZbF+8J1m3y6XPfUHqiDTq3zzxmgPihkITtHZAGo=;
	h=To:Subject:From:Message-Id:Date; b=HCjSXZwESoqqaPqy8XG4mCYafHJJgEQMkgbmeeQ9rZoLVpWr5NrwzVQ27lBa/e1prS5wEplSunu9q9p1c7fb7HO33tkEZCqNFUI1sNoIdJRJgwvEMQ2mWUzDhDbE+QvJKD5UKvHXjJC5Ng3ShSqYELy7jXEdy0C/rItsdeZ2gfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRTfOWab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRTfOWab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF106C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744054193;
	bh=U52jZbF+8J1m3y6XPfUHqiDTq3zzxmgPihkITtHZAGo=;
	h=To:Subject:From:Date:From;
	b=VRTfOWabF2KlhBtMwGMcna4MZAxyPqypaAm3OVo2ihWwcTlRuwfAauvoxYlXvjG92
	 PW++6uk+FDpdZ2XosqCxFnKPuE+MyCf+XJdBxSC5W/xVnAXlFUcRWIarayrIM6Pgtl
	 TXIL3tJNdSI0ULj56GoGcBe0lgkNKqMFmWeNVM0qbPj7i59YIb5AmyyS+YlXpDc7F3
	 GZ5+bmbN8UGRUQiEDmbG+GWSW58rxW4OOyrfy+g1IzK2IjeT3p60IGk0cPXGI5cTmY
	 eJFdy/2o6TfrRxvu3vywh3kNAu+g2Bo89KV9Vpf1YrMbZSexC9QZiL4zQfiLvFE/wi
	 F5IIiWH6w03Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E24C36018
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405419360.30875.3271494310141992817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88f99d56091e507a1933247ce9ae2f125d4abeb4dc99d8fb60c829390a20bc1
Date: Mon, 07 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744054193
