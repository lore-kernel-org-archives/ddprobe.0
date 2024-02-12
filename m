Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F1E18046
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707757097; cv=none; b=B7491klnVaKBBRvyzrH/E1Fift9hUY2a5u2MVtOmMNbS9PDEU7KweIxNk8QJ/x9nOqbhQCaahDdJPNqraBW+9MGxFdWiEwI+9AXVnZNqbRkZff5hEdiz+HXmTl0BLPDn2L8F7rHbj8O3IPYpHx6D2D6R8AmKQpBqa9UwstdueD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707757097; c=relaxed/simple;
	bh=Uy9NOL1SPiwHX/O25ISOROfGO9bl4fCkxNcpLqhfPeM=;
	h=To:Subject:From:Message-Id:Date; b=tHZcADjQB4jV/5H85jbYGOZj368EEuZd9lAJyUc55LwJv3esBVm00Tvsg3IZFyf7HXtUio87lqp1mhuj9oGPxxxxweQXpKnbXnn2HlRXmbMdoteXqalXzpgJJrIbhQjcPHqCtlt8c0NPQumjctMs/pCnUdI6LWuVK+j1mV7GMWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaU896/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaU896/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86DD5C433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707757096;
	bh=Uy9NOL1SPiwHX/O25ISOROfGO9bl4fCkxNcpLqhfPeM=;
	h=To:Subject:From:Date:From;
	b=KaU896/xU1KuIaL1ldUfh7uoupn/htYlOqBee8UUIXauTYffVHrp+IN2vHcr7x0X2
	 AkSQ+MKSBSSmjTaq8O5LbN3S7QsRyK8/yzwJPY8a6u5IlyDgMhABD1vGe7tGI2/+ap
	 7VH7XSb7qRzz1CD0vp6g09F744kq8kKPP9/fpwOawFLy95b0OVBZVGoIcKf7JDh8Rl
	 ZVkKasUeVGS/2hwqCivM0IQ7/RKLjK+WLb1SH7oQul/c0RpyuH59MHpd2OPNyVa9F5
	 /3qX8V7//CxPK4zgOqWA9yy4rP6AR5Bi+/34ziNVoesHMWwd8tlHIqjkKmmokoBXPN
	 C9otWk4EVqPBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67394C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170775709641.28143.5779396946368237662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f39a882a75418962df646a37776fc47745749b75bf8227342d1f3b069a69486
Date: Mon, 12 Feb 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707757096
