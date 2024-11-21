Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326B023098E
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732154754; cv=none; b=DvzXXiWa/oYqKSkNM5WXQebrM9aqXUwTcFiOBMWO7uQI6Q2hldU8kAqItTG37APN36haI1vs7wHk4ZgSdpUd0MeoTSOMExLlaoV8huXmQmZmXkCia7b45MJgqOV1kTG3qkIRZwNAjxo9KybwWFV6cuztocUfWnrzQgREpxzjZPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732154754; c=relaxed/simple;
	bh=DvjBB/DCtqmgpBSKvo96Q4EzmO8PSPSza6gmpnQknRk=;
	h=To:Subject:From:Message-Id:Date; b=BUJHmPiSiLjTHc55nGyq/dllX2jBYSE2LkynEfJ+ccI8vT0cuKOat84JMiH1hbyQCFnltHO6LAoWlllLD7Tb8Nd8AlZ+drAx10PjQsRDgr1vMbmh6AlP/vl7ECR6j/a5Qbr0IesjdtTU9KQWFeBsWUiPW2TK7NKLoPwFb8qwHt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTvGd3ai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTvGd3ai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8EFC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732154753;
	bh=DvjBB/DCtqmgpBSKvo96Q4EzmO8PSPSza6gmpnQknRk=;
	h=To:Subject:From:Date:From;
	b=mTvGd3aiCNEjOKqHXRMbIWAG27t6SGNK3PWRTK7ut0SyU1lD0q/uZaTLPFiPwPCX6
	 hwMLvkZ080OpRICV++e0RhUWRMCMRIdtNLvoFK2uvvEhNd9V/D/rmyLmK+DCezxv3s
	 XJwKIuao6wHAT4R3irScMj//BHo/QdbLFFhG7G97JnVExBRNP0PDwtZmPfLGGIhFNW
	 8hfGUCETiPRlXK6pDC13bqOarWTEz02XU7WtLyEMNp2HJxZxGuZcGwBmLWkeCBzmfa
	 FKazszKo/QZ4jqHc5Y9UIOr2mvYgN6NNsD0KnRrETHtGfM8s1QZnzBtpKTHSby4Y0Y
	 yteDAHDqm4dAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97117D743FD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173215475360.30892.13627896202161780326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8a7664e313ad61e27206e15d687912fe0ac85355eb2dbe6c7b9a4046eafcab
Date: Thu, 21 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732154753
