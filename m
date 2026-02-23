Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202954F881
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771880094; cv=none; b=YoGdr2KhrFVnnu5YWrplk5atQAkbkIg4QwT1OimxRmqs8YsU7gjiPb6ikwqNvWKgnL8Eel0RV5OwNaF7qRryBEBXUSxOVCI9Op3XCD27yx/w4BLkQ6r3y055yipRemHD6jfPElwECZh/aF9SR08DtOQqGPblTIIp1N5TCgqi4Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771880094; c=relaxed/simple;
	bh=c8luR9L2qZTHqVOntMjpOXhOFqH9TI5FIXf34WkJdk8=;
	h=To:Subject:From:Message-Id:Date; b=giWDo09CUXDFm52Orldk89QBBB74P71P3syZz7Bcasb9CfUzjIf7wk+QqVqBuYcsjhBdAcj7l+wSc6M0/RUdEnNZXFt9p8CJ+/mhm7XcHSAQkqXFo+23J2VVPmUyMlnLO9fhMo3xK1Ltu7fx2tOoT/fbneKNxDR6c9s7Y1NCq40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bfn3Ws4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bfn3Ws4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE4CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771880093;
	bh=c8luR9L2qZTHqVOntMjpOXhOFqH9TI5FIXf34WkJdk8=;
	h=To:Subject:From:Date:From;
	b=Bfn3Ws4Er8a/xUX8/KnEZS2nhzxyXfelJc9zjfydReZzMGxaMIkBZlWQk5ZTyXJEl
	 vqxTcrvj5AiPVoO4FZhfRhiPFi1D0siZk5P1NpUUmxpywOd8RZkuaJVzgP6ou4//vD
	 60C92iWALkvy9ka02hgoznLZLqXTcAF5ntE27hidZAWPB9nnUuZemkUZeGAtYjBBVC
	 sOwlF9u9HerBDnT232+dQOP8Oyq0uhO3dTS0F+B9NKbJaJjr3ZxAEGHHxvxYezxkgs
	 siN5mmYmwUjsv/qv11T6GcNlO2OsNKVV8yEtSv8w97BixgFDd3E/3UuEy7b94O6vww
	 fgtJIqxPJnqQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90080EC1136
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188009358.24592.8262282853187268208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee763622b4653eb8ff29741be9a2ef1e631711cd194974a6173985115ad048b
Date: Mon, 23 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771880093
