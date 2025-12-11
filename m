Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051435661
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765459974; cv=none; b=iXlqGRL7M4xcwk4U1lVIGpkYNsu/jPvyqNLNfSASkyrNzmxZCILh2xrTBkkP67ssuEHjnA6iAO04VuWFopXx6nOx/ir5P6ASk6kQ3v8n3E4u8xoo2iN5BbSwEBlny0KQe8SbQUFDcXhGtxA9IMC082nkWmG230RNY0E7n0xrSK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765459974; c=relaxed/simple;
	bh=03oBFkjWbfCfN3Du5gyR+hPAIWPhlxcjHVGLEVFxlWI=;
	h=To:Subject:From:Message-Id:Date; b=azJQLVGWgnnBUZaTVGs4AF1yBmqlLJTfmAHgNU9prbpdpvFtLVbsJ1shXt/n4Zqv46sJIV0XXEAEMKQf8TzHLyMOyZneLiVjG+yA6IVJhVBzVpcvc0AGZgC3YiT48aecQT+4yIhS4KjD2DsKlcKDDMWHPji0teHJqFwDNumxhjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3y+4P/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3y+4P/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A90C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765459973;
	bh=03oBFkjWbfCfN3Du5gyR+hPAIWPhlxcjHVGLEVFxlWI=;
	h=To:Subject:From:Date:From;
	b=U3y+4P/bOKq2Ta8eYxMLy7IBS3swIcw0Vq6CQ3dLVO9P79+SQ2i97/PPvN202dYMc
	 xDQ7rlcqRwz42soU8HphDAni9Ro/c/3HUgJF5CbuzW5BcfqvTwCRudANHvS80EgjJq
	 rqCdF23ECyJ4iV3hpTyI1JUTVp2BemgLOyhvVCpCUxBDPXMIx1PzIPdET17NZ7NZCZ
	 3BAaKFi7QPJd2U0L2h+ZQcLmnrGQ0IGMbcnPFZpdEn5LLya4h0Td8D9guQsxPoZROF
	 jg/X2Cq4iw7AEcLY0UZARBY4x3y/ZfnlBtMlr3N0gfvDBnqBIfFjzsQdYJagvx6j3V
	 sPbSoP/d/0Dnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B77D41C36
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545997358.1193.5084087160394798195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb5a2d39ae5990509eb23b26e73c7fcb2dc1aaf84a65c3fd75b38751a8c7932
Date: Thu, 11 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765459973
