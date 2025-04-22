Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3466D1F09B1
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745362194; cv=none; b=ckS73PeHt4Fo/pRwL2svHHQsJ+lmE7q3a7xVnxTjL2cBbfSexmnzOoX9yTxdx6CWk5dNO1Xb+oePwiej2Ep9e6nP/qUODPRTHD1wFQJIr2kevxQdnF4BVgTeMP+VfPGzE1nteXtKwdDzYqockvDtMiAiI2ZZ4Rk6NcgIVB+1CTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745362194; c=relaxed/simple;
	bh=SlciLBzIAe7QvMGonVdFuIo4SOMyFo9ovSpwNY+GTfA=;
	h=To:Subject:From:Message-Id:Date; b=mk8QEHZd99vx5DlD7oC+cLZ2m8qudM3pUQ4FzYASIJ0tc39JivU5DP/h1bY0I2tKEprACjhaRVQYMdxLHny4k9kzVHrdA3FJxAM3MdCw+/OzNrLcpfY32Eo85HxD1+TLRpgjl4saLXME5Gg6sL3oTkiebemGQIYjlruGE7rYe5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPZUvoyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPZUvoyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A646CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745362193;
	bh=SlciLBzIAe7QvMGonVdFuIo4SOMyFo9ovSpwNY+GTfA=;
	h=To:Subject:From:Date:From;
	b=IPZUvoyd+93UaccRCDDHyDBJbxbsAf4xJU2qjOShaAceAeL/5sIDVOqOKtQXdEa9m
	 J9bVefXPDFOQoifEeCa8rXEK6yQeI8YzHCG9dxGmCEU0Lq7isgQpevkU0+zXdBgqsy
	 1YqTVCrnXQHPwzgvdQMyUY1ehtqJaAZHH4INC+xvFMn+i1BEjKE4YMAHOCp8P7DPz7
	 nU6IhJDI1RTtjG/IedDGGvlbtZEoX3F5n3+VqG+tUpfHSJCf2AbhaAZjsrTb/ujKOS
	 oBNYS2eovPTGV6cCUdetRZESo/eO4Cui6kRIHgPjUdFFaEsfFpRaaHIFNZNC3kb74G
	 fdHi6JVzg6YEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9308DC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536219359.18013.18052173826210289948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7968ee573fe02c4420acd1748c431b77f9942ceb0dd68ace3db43ba8fe0165f
Date: Tue, 22 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745362193
