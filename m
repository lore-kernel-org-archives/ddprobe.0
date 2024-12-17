Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BB21EE031
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734436554; cv=none; b=sy/tHAvolcDNv9hntYD8/d/dKXPGxc0lWkUyKd6F+ywEr1KFa+5IHPeR5i9nvgFniSWsEW4Vjt7SZ0NFjiTELyGaljDjQ9MaMeW8T7clZCtkPeSFTQXOgeB+XdV0euIRghyfWabH21Ya06/oXDl62zgfaswzrY88qfllC5lKStg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734436554; c=relaxed/simple;
	bh=C5HG5GzxIYj4yR2Z0ObJcQ/Y8F3K/DFpGvhwsjKTIkw=;
	h=To:Subject:From:Message-Id:Date; b=CbSiqvvF+P7n3+4wresx9p4KyT/diTIHuEeKcbqUKs9EzibOz6BgAOPJucTord707WiqXOuAV85doOdR9TQa0T/GqEb+D8alc55jZT5OltdLCKl0TdwqsjpA96NkCcdi2OCBmknhnfY/zopNFKS9I0RbwgaM1yjqNbvjPBE5PUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7pdDIht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7pdDIht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CBDC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734436553;
	bh=C5HG5GzxIYj4yR2Z0ObJcQ/Y8F3K/DFpGvhwsjKTIkw=;
	h=To:Subject:From:Date:From;
	b=X7pdDIhtIR71qHUjTDWKYisfInN/y6lUDqW02fw5OQtdzacEszovDtYTmjpXRyc19
	 XGHratXjZKekMZNJZ87oeZcpec1xuf76q+OCBovAPjSYLMOT0hDVxeKvEvsy4V6BN6
	 rVYohOaj5usYJnOylXwrhETbkPKslncBzaAE0tr0V1Crhltb3ys3V6YViM49Q5jUgw
	 ZtofF8WGg5oAnNXxlSLP110uYYw9OAYIB4C+F7LTTE5RI+VE7f7f/lsWtg/jGtJj1Z
	 4nDSnJKTNL5AqYuJ72Rv5KGWeSMtiBmZ5f/dkMe3GZcZ97CqhoVnKZgQFiXSN00BXQ
	 PJzuSROXsIVFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9609AE77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173443655360.26668.319667877161008723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6be59bea4f880fd1038c398ba809eb526cb6c0c83bea0da67ed18c3e75883d
Date: Tue, 17 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734436553
