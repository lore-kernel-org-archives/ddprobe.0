Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09A523EAB8
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763759514; cv=none; b=DEykNcR9InNhNVghp8fUK+cRb2hih97rmU4N511cQSvGMWQpH7Md2nFnhsNHnCv//r+us+LorI2sMbJtPBzmeBYBDWNIcZgmBFHOny1QKgOcEBqZ3aNotZvAy2SI4pvAezfCEAwa0LxpDuRJX1QbKLiOGqYp0i37yT4Ec3MhygM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763759514; c=relaxed/simple;
	bh=FshaJTGQjf2L+7dcYl5fm7dtODZ/LJPBAVYzgeqxd2Y=;
	h=To:Subject:From:Message-Id:Date; b=jMgFcaEqMavzWK9mJ6jJo1Rz/TztaloU58pSl99gUOcAD7YyJdt4tPL5MecVU7X/Q7ndsunsept21/PB6lMOgpGYZMg0I91f6/GRxpSYrv8IS4M7NwZUfYRCoHocx/W5Tga2a0xvXuO3MltbYmZ3nCuSbQfSTYBf9hz1n7Ory7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W466ez6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W466ez6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07D9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763759513;
	bh=FshaJTGQjf2L+7dcYl5fm7dtODZ/LJPBAVYzgeqxd2Y=;
	h=To:Subject:From:Date:From;
	b=W466ez6cGPatxwnwHZ1e+GBLe8Iq/xpMy1DAgsyasl5RujYzrXSRs9SAyBMCSqExL
	 FCV+8A/ITAeKAHGSmpVNK2UlsUCTLtpalgP7LD54vxIgF9qikUfLlUR3qpKEX4aaUW
	 Q8xi/jUsFfqE1hkvs120AnLcSTwsr575L2CSJAPkim4rznwAyXjHQGXPG3tOFg9qcG
	 C8mjHLEGesE5OENCX/JFNmbyg51gUHJf6D8O3kz1bhJ4pTsNkWTcxb4h92QyVddC1n
	 zgiLzQVXegpy5BX5tZAhpiZMiojwDNA0FZznxZEbsiZWO5OsmvAIiI4nvnSAgrcJi5
	 BJGkp3ZlUR5Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA9CFC50A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375951358.12652.11255980489414842453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7f8c40b54333f50bbb51d240028a6f32c670277c9e4d607ef52c5a24d065d1
Date: Fri, 21 Nov 2025 21:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763759513
