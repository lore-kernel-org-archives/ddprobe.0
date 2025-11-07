Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752132FFDCB
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762553394; cv=none; b=sCN7+eVe+avwP721xSh9Gh4YNnpE3IIKARPtN/8OeIRXHIqtbobO6PNjU2f7F61lVqHqCJD5QwG0pBwWaSWDxkMboysS5T4DQo00DO0J6KYFTEZWDl8WPsSXVVYjzfiMdSxi8TCYAme4LctV1M7Ik1hRMVxUIMvnz7SH8Kdkxm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762553394; c=relaxed/simple;
	bh=1Vufa47TbAjvsMapEDBSBh55HESZ3hJxPnp+bT2+r5M=;
	h=To:Subject:From:Message-Id:Date; b=FTxvNiB71MJVQt9ca009xN3KjNpnkDJ6TTq28D02ygaIVUdt+cC9ef5xqFVhuX/R4IZpfvvO/Z4gBWw3jm6QDtWTtKwZRSIxC9DvjLTBt8O+FOeLINg/9PDjzvo4S7xQoNRx+DQ56GNjKXT1EcHmW0NnN0iPjq4uYdHTDYzbeks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtdWZt7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtdWZt7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19FBC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762553393;
	bh=1Vufa47TbAjvsMapEDBSBh55HESZ3hJxPnp+bT2+r5M=;
	h=To:Subject:From:Date:From;
	b=PtdWZt7dZAE7gvFmRbCJeFl28tjTGHKSmvkpwQU8sip5JUewWswHHSzbXSCcxLXIG
	 PkqadIXv+I8bDg3b93wuouw+L0SytbEDsxY6+gVMWPMQP+Jj3XtNzHkATgnNAo/Sg5
	 CgHPLilmf14e/UoUAwdv2FMmjZxn5Ot1t3Yvb0nJT2hIiU00KUGw1+KmnxBRIY2x+A
	 aE1KTDdpC2q6nG9uyXEoBc8Gst7Pr+tEqQ/nAxEYFCwlW+BzZW7KgpUP31i+w/kOe6
	 ooLfebr8EtjAClPF/91fCqCuSDH6OTSTReR1lvr2ksyZGCYtHJVl3qym95cagzCIq5
	 OSV/QGWix/n7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA3CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255339358.6220.18364434645573674929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54fb752d99669ee005b2b611ac50baf8cacf7381cf17d1db7fe3343c61fdb18
Date: Fri, 07 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762553393
