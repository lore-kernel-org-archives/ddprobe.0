Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BED63148CF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776076654; cv=none; b=QTYrYRPYxTM4r2J3fddTtCZzpeBeTI1zeDVNBihYBq2gsuykiGtQq4sP1Cf6jhH249uSFhdJh5eSCkX2voSf5xqmz8YTOULxQuiGHzImFbhL1gQTNAiC0pN+wZSSHUPECOmmO0NZCdOeTqa3SA49M3AhvswUzxaUn7EO6wTPeEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776076654; c=relaxed/simple;
	bh=TLyN0/6P6IkNhK0hEeHTa0+t87p1I/0Mko0WeQcbwHY=;
	h=To:Subject:From:Message-Id:Date; b=CTr8AmcCR/CdTaG6y1ny5oaMV+6bvorcgr9EYLh1qFbub8myC5OH2lGAy4F3sWhJc5ySoJ7pujnC61Rnr8P5y/RLoV8VrUlwLTBArlPnah6dHb1dxHNeJyCXJmgFduVJcb4GbwH6lTrdLIBORyhPmIa3W+BY1YO5eMOMlnIBUT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aC3CuK6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aC3CuK6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA2EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776076653;
	bh=TLyN0/6P6IkNhK0hEeHTa0+t87p1I/0Mko0WeQcbwHY=;
	h=To:Subject:From:Date:From;
	b=aC3CuK6Hyv5Y1mq7YwyW+//wM+dUW9E+PzPiwS70epVPzJ2dogc+i42ql44uRC8m7
	 MsmvCQ9s8e1hTa7fuHV9J09E28PieF4ILAhIBzPMX1tWxZAGtr0adINDrjIZl+pa01
	 bFN/fXWx76P2ORtdH/QsjWQQPw2qLxEYeaLin4Qe2ZNAHCOrmZTaZgh2g/o6H/Aa6s
	 sKFjqaCLD50mO/rQZIccsu9Ktj35vm6o8gxCsD8eoAqD6yfYOmAgPtS5IpekH+zWgc
	 jhGb9MhEbSVeAiRaoGVdhlEXhUKtFVYFJZz2NIhiXCoErwevaXzTQSTI2Ze0LOyJun
	 jQ0i9iv/ySB0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EA0EBFD30
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607665368.16840.2818624671188415438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d447bdca1830ca0060e46c58e65830a60358cd882ecae2461541e19f44cf831
Date: Mon, 13 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776076653
