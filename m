Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45402DC34B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768318433; cv=none; b=Fcf5EevX6offsc82K15GbEt8oLyj30cxVVF3iUaxNNoboq01q/Bs1WkAq2bl2jrHfCWVwd2phF5JBEkRrxFEB/3gCDIz5lRwy7GoJ64cdMI2648OIFDZ/xR+KRXyFbNT7i4BLsXHAK3/38LsR4p0OHu2Rudc/yCDhjeqIwEbh0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768318433; c=relaxed/simple;
	bh=FR5YNSDaGVTab0P29OQi49C+hpKwSW41h7+50Xu+n0o=;
	h=To:Subject:From:Message-Id:Date; b=WqYYkieuBlbbMihTOwlu76y2pZ/1DLiLzn7cmGi6KnlBS3E4NYYLztZX16XU6HPEUAr5EM9GrmYDm9BjRu+zr8lg9N/2iNO6sjmNu5j4+yIFeMWUE1svBa7xdynM0BmwZlytyf5GNlAvQgQMXCaBvQvU7+AiSN7aFCt/ZDjBQPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZczP8mEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZczP8mEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8DEC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768318433;
	bh=FR5YNSDaGVTab0P29OQi49C+hpKwSW41h7+50Xu+n0o=;
	h=To:Subject:From:Date:From;
	b=ZczP8mEXFsdC8iSc6ntm7pvj3ck5hqjEYVuBj+cnnNk4XZ9/F0/ytG0xJMHlrCBlT
	 pT2vwsyO0fr+zEBk8u0gMlbrVrSo/oAlVO4dxdNzBLMcv13ZSqwcpQkZEwvB5At/tQ
	 hAgnsXyCwjyGbfncH1ISmdS+y+ec8KNkFm11yLQb9KFanZbDV3CfN4MDRlyT3Emc1x
	 urcI+nR5k5bC0chRt7MyyFiiqyPvk1wf8oJuilUZmz/CrnW3wPS4ORjbzMIs78GUNx
	 C+tHAEzlsJFz7bZmbNIQQPg8aFiRhkD3xrHazp4JUDOlLFbHNC1BOhdY/OwMXNcUpJ
	 UBDf00uWd0Rmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC5D2F326
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831843357.13587.11970285185660529741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdf624833beb90370b59828aea54740c9d36f8b179cc897893cea3ba0485bfc
Date: Tue, 13 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768318433
