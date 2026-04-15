Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153DD2F069D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776289654; cv=none; b=et89SHzGJwdsknQRir6+2d80CBpQA76arI2Va6szjfXyEjMdJXU+DBODSm0EcPCvgVkDcoqSBwUrspfVHY+r5w9y+hi/BIYSnvD+Ii2iF41kXInlOM5ou3aXWwK/WmZz2tz4Y8kymWoPIxCkP7crq2yfuGVglcApI4c6yVzBv+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776289654; c=relaxed/simple;
	bh=Hg07OMMAL65tq3zczWlLlwACpz6UvJr0a6ClDwVy5M0=;
	h=To:Subject:From:Message-Id:Date; b=SLPgnA/jyp0WylTwcY1Srnp1NCKwqf+aqVZ1raVCWzx8YrvClrAUW19uGQAdztDbEYxbj1Z9sebZlAk9rymp8gduoG/FDK7NVI8fxEgHltZVU2bX7D3cJmt2lA9tcqG/E3nVrDdTwBUAz9nvyzXOiaOdSS8ByEmq1xy2nY1l34Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8tXKX+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8tXKX+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF621C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776289653;
	bh=Hg07OMMAL65tq3zczWlLlwACpz6UvJr0a6ClDwVy5M0=;
	h=To:Subject:From:Date:From;
	b=a8tXKX+/34JLplY5Cr3iBjrOPBSytGvhaEm2xAtawz5oFBcKRkYhCZ7IoHIja3xbj
	 eclxHFx9BQ67erj4pV4CrkCuAFrJDTFkUAhDR5sfQSQZZpYnkXzjkvlZes9VOLrRBZ
	 ZTm93MoCe+Isvb9ScPj96Ab6B5UgXyyB1QTroHJfQVwMX0oZLsNbrdVG3Pk+c5g0jD
	 s2T4hC6wLpl9gOviZT0GziacddE98rYdDPjGT1PnHuaGve8jHqYaGgJ2g16rwZJMpr
	 LRKx4Do1fwDQ6w3xIbncwEk1QJ124UBflnZ/K3Tp6p9PIDh1X32B+UAib5W70JZ8WB
	 5Oscdip3U4Q9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6DFF433C6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628965368.20180.934560172917737163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ba6529a029cf7d15a28659df2bab06ade3ab2b8d871462441c527e84810675
Date: Wed, 15 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776289653
