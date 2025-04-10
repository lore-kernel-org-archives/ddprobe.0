Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD6F26A0C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744279194; cv=none; b=ix5lEsl/McOcbLptw5ga90hvCkjFphI/eU+siw27YK3DbphvjZwW5JvuuDyVIk1Gieum6sQ4e4wmv85m+vq4emWOuu/ldj4Wcj6CpID05UIT2tAh2KTkFzG5G6LhJVJjWZSAJ3tw//PfY7KVY4tyHmF1nsm0hQoLnOtI0xrmzfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744279194; c=relaxed/simple;
	bh=Y03Vr8UWjKKAfrapISI9vGxI01rdNqXhXt/uxYQaPDI=;
	h=To:Subject:From:Message-Id:Date; b=YZIzLz0smTQY8sIhxDiDDTS0JnIvHg4T7ITkJ8Xcyl9fTc5FQafnhkBwbFYckNnUttuqtc9g+SCpr3/hULo65JvUpXRAL5/R1hOoSDcGCHtFmVZkhg6KxKysERvNClmgX1Fx5Kyr9MdMblIHtzI4ghaR1HkY44xt3lv0A96SQNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O39eScCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O39eScCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0C4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744279193;
	bh=Y03Vr8UWjKKAfrapISI9vGxI01rdNqXhXt/uxYQaPDI=;
	h=To:Subject:From:Date:From;
	b=O39eScCmt5DM3Tr7tGLhUOFghCfmCDqmaZH1E4LXRWsgxtb3RtiUI7UG4EmuED1HT
	 liI/kNmDKQzgXkqpRGYS2iyOT5rkUsQwFxDIbxa4LQaCogrwjKKruqdpxAmmmNss6m
	 0kB2Zx7xNNoYB9Oa7xvCXUbeYMV2ogDExvRJqXEX5lmzpp+vvIet89y8sT7lWvl4D4
	 mRX7j0xCipXfmfDjBFKto30mxPaYqG/An60D59c8e+bwu3QaB6y6/topJPY7ND1m9F
	 qE11yznfSV3IbzFBgg8NTaBYB/x5gMl6nlaIuzxffYhUQkshNsH6nl9U80b7wzB3iQ
	 nCR4xm9koHigA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979C0C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427919360.4413.12209407898568297810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477dafdf04b0d72b4f7ef31708e3d6017ced093522a0519d2ff3fa73bf45dfa9
Date: Thu, 10 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744279193
