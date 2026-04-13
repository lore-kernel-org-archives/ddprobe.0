Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301E740DFD5
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776061054; cv=none; b=EGqwlB2jYepDN6rDQlKSUIyjlMUIBbDPN0LzbChNkg1Tc2YkPGx1mkKal3+qb5hQ3rMTbxb6jeEL9aHhJ/4eZbKFvV3J6xA9XOlrRfTgL2iIDttJYyjIPGCNPPEfOOjG3Ai/8/sE/+X3AZ7CzRC9fhsXCEVqTqch05qNweQkAlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776061054; c=relaxed/simple;
	bh=rQhpaGR3hat+eiO29xo745OBiszPFXEwKYKqgv/cOBU=;
	h=To:Subject:From:Message-Id:Date; b=ocYInFHko8LhgeDoRfILOuNNg3SIAz1aytOZiaxD36q7bwBZXjHkY3ZkXJcYTgj32pM5p2chgWcTnjg8n9H0L1GGarvvVqjuLcHKF/sce4XkxV9aUXnti2v7xl/uHOe28q8qyiWkRa4d+IKWNJnRM3nUcjwaufU7eWYzcfnxPpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IT/EDDqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IT/EDDqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6BAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776061053;
	bh=rQhpaGR3hat+eiO29xo745OBiszPFXEwKYKqgv/cOBU=;
	h=To:Subject:From:Date:From;
	b=IT/EDDqJH8yDH1K44A/7UMiiaZcYEvYdZ6PtYws7WdDLBv1TPXUzUGZx/2zuQOcjA
	 752s23TUQKy5VKU4QkiGKRjyC1roMucWcfCEEDE/D7CFawhyBmytIcIXvFMvJ8eose
	 PLv5fLrqnBA1sdZdOhIv2HNmuqCipByYcBY87b0CYtumLlaLwIo0UEZGGgYqMhkaJF
	 3Jk2CpO4lc4IK6b8AGJ1KYWSONPjX7Q+QDUySQogxXxkT0HWTUzYGcmgyxRGjtIMfl
	 TTtOZnZdMCj1SDMEiB+JMgszoYJzf5mKdNzFpGbsIG1OZWGDwyO6xb+XFP1+Xs4sOF
	 LuPP6k3qkvzsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3E6E64007
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177606105368.25574.2863250650605585957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dfe60a2f06b6520a21cf4bd6aae7161a3382cc61a38bedc210244c9edf5223c
Date: Mon, 13 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776061053
