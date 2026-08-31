Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3E3352022
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788148834; cv=none; b=lAwFq+IUIHas63jZyqwsd5jWy+at+XpmYBuqIvWuTgR285DqBmHFwA/S3xghXKa66TlxSrkB3NP7Z0ysm48Pw/L1DYoBU5nMyMB50PPX/7fZ+RP7t3MYUD+138ZPy186FlYHsgilHb2hdCDdbk98uN7JiosTMoMnMim3DFe7KuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788148834; c=relaxed/simple;
	bh=nd/QVoy/3uWk59uivKdFr4ayiR9PrLhDB+51PgSVw0c=;
	h=To:Subject:From:Message-Id:Date; b=WEVklW1HT14cxMjXTwWTysZt7VoDkrjK//Idx1XjN/mJxmy5fJ6z67Kz1sJTFvUBWAIxYl1FOZ5a7O0BsBsikuvnj+FUNjFgpgLcvJEDJpBOZBF7R9wVRuRsooo03W8V1HJysCTha06qT3bvdq5nTvOqXFV7ARVY+81wij9rEQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0zWGycS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0zWGycS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26D6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788148833;
	bh=nd/QVoy/3uWk59uivKdFr4ayiR9PrLhDB+51PgSVw0c=;
	h=To:Subject:From:Date:From;
	b=i0zWGycSpny2yKTincYGFfIqfrnDEJhy3adn/p3hJZLHwphBtQLjWY18oVMhxMva/
	 /r2SVfJzwdudpW/O1wSl003zFlohNA7mQd130i9QxnUjhJ7vMJeg6chaaeOIKIQwia
	 2WGzCe2wGPUeXnkH/cbEzsG24NwzR2Own2mK1N2Ew3GlqaV9bdocWObl5y0DySxCng
	 PH22Qp7SjbGEtjtW4y4S6fNVfjMU9beaiK3RdziW92IpkscapMpFsKd3Xfe0I2MhTI
	 E0diwIEJvP4X0FFXdZ0oMBfCJ/j9Gt0WSJ3Egx6P0FrW/XODBYuKsl4Qq/TKSIsXcy
	 3ggk5NpMBzyKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9AFC61DF0
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814883368.6383.11586079403150454268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c27138ceae49d51533aeb74192131eb88e5901223bfc1c9d88b2162f4e10e1
Date: Mon, 31 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788148833
