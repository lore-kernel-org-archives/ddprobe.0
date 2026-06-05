Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6DC43E488
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780688074; cv=none; b=AaLVICfBcXsraLFhgSGfdxKdDwLh+X7K90gZXetBmHZ7UuXF3NsmrVobwZotFbfss5mFMYNHs9JPb08KmV3IAjxAfIVto10bsAct2huvZhuXF1ICVh5dS+xiuH/YiB3jJ7ee0dZ+EHcqlTAeeoOhPzELaPCcpUgqhBcx8iWsjLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780688074; c=relaxed/simple;
	bh=XkXNgJlL4ok6qG02cjAU3YaBqmsIvIjZhHlHQdgZpYE=;
	h=To:Subject:From:Message-Id:Date; b=AbsoFxc02SGhwkz6W8hZyOGG93P/oNtW826EIaQu4MC4QtlIgF3NZ9+as4jLbwgmTpBIhO2A9O5s7EJ0zffQSf7rurEkqSMhyfjBe+MqwAPqaXD7J17ttRmFlp2MGxwlYCMucJuPEdll7/YD11tMdx8mdk2dr6DjB1XL5G0hdjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdNKl/4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdNKl/4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4374C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780688073;
	bh=XkXNgJlL4ok6qG02cjAU3YaBqmsIvIjZhHlHQdgZpYE=;
	h=To:Subject:From:Date:From;
	b=UdNKl/4fD/fN2OXHDY8j7BMHywvBVEvoG73HecVGm2yQDkkifEzZJ42SqVw/9zK34
	 lrjUoiu0XgNHMx+Wg4hXUpwOPBFCa4FtPjAzPglyra24KFK/nONHcdXxdubCArzke/
	 vmNRic8T3S7bDqUBDe59YzzhFtnoN6fmArNyP4BpurVepBb1woFZTnqHdPdkMM+FeF
	 6G+/tjhhwU0wlKBsbxAUOK252Nlp8ye1BG+MJN/8WyGFbsnPqxVKeNc03LVCm6DeUT
	 Xk38Vvb1MdHRuRt5QVG5WKDCfCo3+0sa0krhvTr7EqgmYf3M8JERDfOmEJ9rmCIpAW
	 LIXUcBIAK0ZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B886FCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068807374.28206.11916272485189228072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ffe1190d0d2170e3c32995a731c94c0f6324a0293af96b4e46719aaac91392
Date: Fri, 05 Jun 2026 19:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780688073
