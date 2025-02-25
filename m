Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370761FE465
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740476334; cv=none; b=iqO8Ls71VtNFe5bzr2VivFQk0nJ4YXviKCR44nu51RSQg5z5Cjl5xmO1fQeGgTbZic8lxMjucSaTZIa7BtSVP4Lt6o6/AqJXvh0DwE0bZWCK093SdKq26nWOQxGhN+qSQgH6zXoLCV4xn+OkeINL8zQV9JUNM6ggiaX+yk7JSRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740476334; c=relaxed/simple;
	bh=txcFoDWGDnc01fii7ZDenEKZIedA7DZDx4+ov5Oay+Q=;
	h=To:Subject:From:Message-Id:Date; b=HyaRue4gQ0MPaX3bhjdstYXxIXOdjoKW925GlsO6PSxK81NAfetzXwV149U+omsAuPEFV+aRrdzubRODWDXowwBz59u9lZzv52H5xO0Uqet1t1BMQkHsiWfhJwhdDiyTO8p6YzFkzDL/8MRpIV1KgQi9VOaP5/MYykdWxTYlYu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1cFpWjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1cFpWjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBE8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740476333;
	bh=txcFoDWGDnc01fii7ZDenEKZIedA7DZDx4+ov5Oay+Q=;
	h=To:Subject:From:Date:From;
	b=W1cFpWjftRRVROR5KKYJSUdb8pnjTx38GO8uXSaYcTESwiLFyJpyMC3j3knWvd/5w
	 VMMIPvj+ATnfZRTEQFoudGVUVqEy4H8GzwAWozpkcF0waGi32ZbWMv263TtzHVvub4
	 A55nX/q6ihFumyLcKtXR0YYY99ZmVLJn6vsyf+/h2q0cWOJbLWbDSKtSj6LLQ3gIt6
	 n0IPIiL2lh/09m3Ubw4YInIfSZsrxOz2Mi0+tEYB/WD5iPJEatCYB1l2kcSEC0O6DZ
	 zsXEPXU3MJq+rBKWQeUDKwrTrAdat6sIo2S84GWSw30JenKJva6/sV5dAVm3yxRG2U
	 0Oo0RUZW7H6hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981B2C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174047633361.7147.17821782079051060292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77844e4ff0c2a9e16854ab5173e9c925e4fc678e0f49141defd28b6a455e379e
Date: Tue, 25 Feb 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740476333
