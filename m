Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7C5B661
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759720794; cv=none; b=sZzKo8IE8TZXOMHnle8T6FEn7sYp/XGrVWjo+AiIHheRIHnfyfSivmm+dBcl3bqJzTjKk8oHv00qHMXKWaYwwNuwA9Py+fhyLE20Eymlu8xjgIfg8k2SCrb2gadIX4DO+o8TC5H+eaQ3sgrl0mbgJPqI7ZzjmUGBnltrzwKdONM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759720794; c=relaxed/simple;
	bh=3I03/3Vv04aQNX9AmsGQzXE1Sp9WeORDdCbhmVa7W30=;
	h=To:Subject:From:Message-Id:Date; b=hovIrlv4elaNgaZBPd585KrvoL98OgpK6Wq7NzHLUOWotSSKZgkCY/jWI7nl+CRWUYWkvDQJk+rI7kEScyHMQfaaTRCq5QjWjGQ2u33KaR9zB+UVG7PozvacMZeWSzoz2IKbdIHVp6Hx9DNhL0HH7RD5BMzfOZemze7T49ZBsvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ft6jkfoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ft6jkfoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEAFC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759720793;
	bh=3I03/3Vv04aQNX9AmsGQzXE1Sp9WeORDdCbhmVa7W30=;
	h=To:Subject:From:Date:From;
	b=ft6jkfoiGVj/Cl3as1/MQReSRyOt++nd2NbxLGKg/vNnQLFpqBK9cb8CpnrbBT9Ol
	 ATy3XAMlzjgWOcrF5ZlNxjJHXuIADC50d2zZFTHgTuJrRBL0YUZ0Oq9em9sf2gy7/r
	 /0SGefo0K/rrhLwVvFmdedjPH+hrOPjIBxuLSYtxsbBThuSz+tHEo2Z6WmysfjTdmd
	 e5K9gmVABJdoQtSK7hvFclbBcUtpYkHF44s8GXzjpfiHXew61QEj5Jo2F5Yb1PyG+l
	 u/ClkEQgBRX/Ln4KDZvWscKvTV2bDVQPxhMWcRXAXJ92iNvbZ7FbVdR83J5+KMXVO1
	 uTx3Rj8LRNqXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FCDCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972079359.23165.12181661863464706425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9755a79ded6068f149134dafcd023be8f24503ab31a5f5e3b73bd957cc000872
Date: Mon, 06 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759720793
