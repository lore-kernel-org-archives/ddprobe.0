Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4393B776A
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787214034; cv=none; b=VcTqOWOcmv5nLzxAuHtTFAvNaz9zkDG1/MB+jssbo4q9WXN7OG+Tmj1BYtQreZw2o+abNEbcHEBmgR7bvIJczTZF9LVrnSdjommXpayPub84MYaul6h6cyf1gdJWErsOdAA1/yHP3ZbO3mpm9ZOpy94WWYelxgikyju9Bh+CHn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787214034; c=relaxed/simple;
	bh=faaMW8bFliDIQZ/nT9BvWm4Svh0Gc9QGw4JzsCzyPdc=;
	h=To:Subject:From:Message-Id:Date; b=EInjogi7vbzw+npYFsMI+1ZyAkqaVFKsuLXx46BhOku8X25pWx1xK0P7uiqeJ65stmEmsaO6njxnD2RCP2fLcsX5OsJ3wi6HXWcE6P5j5mVLOvS8tkRWVm/OphOQQrG4ClH8hgPgb9RWvOSxdMjuTA7lyBIeTDdoghvx3P1E1NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/WfA1GH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/WfA1GH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA89C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787214033;
	bh=faaMW8bFliDIQZ/nT9BvWm4Svh0Gc9QGw4JzsCzyPdc=;
	h=To:Subject:From:Date:From;
	b=j/WfA1GHW14WVhDrjTaaLWc3t7FHm9qHzkfbPrV+bTAxch8reyxIhmehaxz4y1Fft
	 nP/OviDl3A/2gJbzULH3To6aBH9JudYer8EhBbM2cRMJVk0xq6DeHTlRP9ZBCN8uCg
	 7rvWGj5why+LVp8OkOYsykeanEa9HT1KvYJWiZI0JViKW22fZjGRQFVOoXL1LK6qGj
	 ktvMCucQzZE5YvZAauR6Vc5fP0Zrksk578yOmkz15c9QZbD+zwCRJeF43F62OrlOAa
	 G7JWyMtIgnlV8epRzpSN3VWfqci7CCRoGBfq6yq/Rc3UlmKaUl5Fb6t5RlvpuhTChO
	 VxyYPy/JozL+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA1AC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721403368.2610.3860523501913938517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27209431d717e7687e76a345ba18e4a8dc231c6f01ea08dbad366ff40eef6c7
Date: Thu, 20 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787214033
