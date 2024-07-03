Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F5253A7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720013723; cv=none; b=dUNJr+nX2UOOsC9HP1pZDIIxONdmLUEa/hWVSwqCTG7K0HWZ3AnGEWY6jTlaA1v1QfRkTalDwebv6yP/S2Cl7jz3ImUGE9dcXhAgb/0HDxfweKlNNbDyUNWYT/anZ1XGMCsYgjD+UPBr7dYKfnTz19y6sy4+QFiYbDlVoO4GWsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720013723; c=relaxed/simple;
	bh=VWBxhAwB1pdTq8qCfTQePHjqykpBaGzDsgCN7b/IrcU=;
	h=To:Subject:From:Message-Id:Date; b=XdkjnDCpx/j8x8V3zQ+AcQcnaTdsn9f4m7PLIPp+xZLiAvtWLsbjCiYtW/82F3qK3j1xNXvJGYnwfz4iAHAdzmFeC0rSD67tLfYGtiw8AU4n7vJfZ0cMEj5u5kP+icSciQZmmaqywslILSJhJBMeGP34AK9MTRgqzPNqVOtdElU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQJljJjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQJljJjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D05C32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720013722;
	bh=VWBxhAwB1pdTq8qCfTQePHjqykpBaGzDsgCN7b/IrcU=;
	h=To:Subject:From:Date:From;
	b=cQJljJjW57jNxoOQSu8VCqRaFM2ynKmbs/UJGtVSueJWZwdcWxP9ILBYg2+mqEXFz
	 IfSTMG/w2+oBAEWsfQ09idxCczk+K//zu8nlOzQCfcgts0C0AU5nCkhzNGauwaP+1h
	 QC6DUq694AtJJ9TwQah+llUqhEUV0/dgJ0oAMCZgstkFkxlfz58jdS8ty+OhXcPkYH
	 TL9lFeB8ufzh84dFOyYtJPq6CMMzTndYPdv5Nl4VwhwQbNvZihB20tg04gUZkcJHpJ
	 UuNEy+6olvNv8CSsoKg8NL3F++LhjwKP4yoTo5AljRWhdyiXTIVbcJmY10e8HUTbUY
	 pGzMhkdrDUxcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD8A1C31D97
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001372282.15769.14477260988113498463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f582d4db2a5d710b0ab289f830eb478103782ffe7b6ac5b162be92a3787d6311
Date: Wed, 03 Jul 2024 13:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720013722
