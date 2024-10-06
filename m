Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E38156997
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728203754; cv=none; b=Qmr4IdnlMWir/699zm0S7ZFVb3DoeFqiDU81IcOIhMoFVd7xe9Jnbbl8CCvm6BSjxl2d3khkS47T7aCwJTKdnEjCiNrH+/Eu8+uyOqd/blws/Yvh/eENbDK3FWAyR7k9QY/Mi7i9ijrTor4HeZpMNJYNNSZD4xV0uG8G094Ry5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728203754; c=relaxed/simple;
	bh=me2+CsodMqMHJ1kwR/zn8RGYnChIDq8XzzK5Cu2kKjc=;
	h=To:Subject:From:Message-Id:Date; b=VHEmmisa4nGHj0X4ETccb+/A1PoCBbH75huTkmHscALKfk17avUpsCw2QA6+DdNwJyuMAISUh7sp3sulm1RuHplqvBFMX17VFmGfzGUJtHY2S9MpEdwyjoGnmt8iIZYZS4yp764Mx3addivsj1RwyRcKytFyHmMX33zVNy03vrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7xDQZBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7xDQZBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BE5C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728203753;
	bh=me2+CsodMqMHJ1kwR/zn8RGYnChIDq8XzzK5Cu2kKjc=;
	h=To:Subject:From:Date:From;
	b=W7xDQZBRi5tJLX9Axxp5e6486pLg0lo3Lyh3GKKSOmc65DJUNixDbqulQY1P+BRjQ
	 Q5OG+q5tKc7IDr5sx/8XcY73n0giMkibnLnodZAtGJrzHb5vC53mCL5648XjczsgWf
	 wamt4murmWxkIDYZpFb+6z1QPTHDDC7gnoY2MSjFbfvnP04QQ90xrsIJW+y9TsJw/B
	 rKJWe/hRZqH6s8FMMJ+syrXQE3zQ+3JEh+UKYAAJ+A2rfE85v5/fofCjIu3yiljNQg
	 EiymU1w5iiPazRauos400aKXliA80656sOnm2nS6J2t6H0IYc5fbLCHBjYM7aWGyyS
	 Ebk6MR/T8xlgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C678CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820375360.8569.6644213511043098613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a7d891084661ca7bfbdf51b831d6cc1b1a4bcd99a9a5cb473d88fcbd7bae5f
Date: Sun, 06 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728203753
