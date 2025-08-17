Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D582367
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755389395; cv=none; b=iRT0fQUiSyak0pTM89k4f+whwzlf3voEmTWnagyzknhFOeXGd/cATnMk3tiXwuFEq78WgeDY/vRRUpzBdBDga/XYZqebq3E59G2L7Ip56PZcQTnL9sdpPNCxA+aY6te5PmEXOC1V4+ZwLNdEVBV94J5MEWErSxaz1qp0GNFlFDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755389395; c=relaxed/simple;
	bh=fEHsD5okt02TFffVS0vRBRCKyCORg1w1hu5F1kPgQVU=;
	h=To:Subject:From:Message-Id:Date; b=ml/ScuXoLGkA3ZlmiF2RIFd2+bcp+qUkAax7KPvVyiQnEfHO9h3SMRUTLIled3YVdFl51aCS9JAzBMS7T7xUoLTKi8/wkuoFn4yfiKkLEzKD08g/cBWNZ+CFW4XxuiPtzSbvsnM87LmZAoumQ6+vZ4Csf+2xycbX98HE0jrI6NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUlWSfsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUlWSfsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA39EC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755389393;
	bh=fEHsD5okt02TFffVS0vRBRCKyCORg1w1hu5F1kPgQVU=;
	h=To:Subject:From:Date:From;
	b=JUlWSfsNccMj1EqcCI5pgctoNqTSnmXat74YF7ZfReOwnOrHcLPHeYEmRDnQKnBXR
	 xrrVA6c1bDhg+4bhmv19UBROL4FzoooWsmmaEGlmGVn7o0rX1+AnYjDSghtZicGeyR
	 5wLBk9Kv5UuFalhxQcJhTWk51gl8xVZ1hgAU6oGCLKuCNMirclX2wlgRRksFQyVTDM
	 I+5ZioV3yfMOkj9DLjaslOYHbxtPM/AaAQuM6xLKdEuzK7t0Bbnw7M8TXC2LGOC99v
	 uay+eNhP1Qx8nqdTFkzy3x1HHOb6f4yq0eGPo/Rl2+wU0eGrjTqk9E41l2nrpBw7Oh
	 QYZF7sFPBJMXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93894CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538939358.12795.2877142386159610473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fffaaf455e257a8fd6e3643bc2055d77fba703a396c74cf11eead7bdc4dc480
Date: Sun, 17 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755389393
