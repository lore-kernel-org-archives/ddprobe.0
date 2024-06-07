Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828CD1C6A1
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717801643; cv=none; b=bJZ741FKO/kEH5o7EIdeVkO6KFE3ppoQe7Rw/KccAb49TefW1hk3Ap+5rvhyh8LWU1bQrcjusVJWK9WEvQRConLf+PQFEKiH40ljMNuSrdo2hQqsYpjkZHUieEqyqcjsdOVxDgLg69is3f4SKWqpfu6FPDLIxIxvx1g6omYVfew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717801643; c=relaxed/simple;
	bh=tzVJunB5oRXXR+r3d97iVxYDDFp8Y6VFan1xJ+r5lyE=;
	h=To:Subject:From:Message-Id:Date; b=BYa4dTaMah7QWNsf5zJq3k7zNzxrbdQ2EvvhXoiESEcRA8smMp97COnJ2A9nmjklPxuvrmmSQStLhJaSUlsLCvKIQKGR0AI5OvSAjruLx7YvJXPLXRrpglgiNb/w1QCkuu0qJ6IZ3NnFyhEfzu52nkScqg5xo2EllMb4gIhn9fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XneiXDxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XneiXDxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11EE1C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717801643;
	bh=tzVJunB5oRXXR+r3d97iVxYDDFp8Y6VFan1xJ+r5lyE=;
	h=To:Subject:From:Date:From;
	b=XneiXDxtRWbBTdlZYXJpFU0Ej90EpsaKzTBBExEV3HcbEYRXWUot9idhMPEovysuj
	 51C9gTLOMuk/gBfwz4bJkWj185/H4Boz6dUw3ADJStSkEv9HDGNv26rW8G1ngTxm9Q
	 FihGbVPCT4A1Yn/dZmz2iiYUztGeBtdBdlaZl5R1Gl+QJKoaE1vjmR2dZJXZKfRf1Q
	 2QI8lZVr/RELe/OH6PwIlI14p4O42OhxEhVbH85MlUqvzu9FrtvEZG4Yua0IVYRym/
	 yDFuc9W3x6c54HGSMkdW9UNZ1TlkXYsOhoEFtqhxBaBpLWFZEY2uHke1OIM5bzUXfY
	 mTx06L+wGMHHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2C17C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780164288.14640.12126177838269489790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9195d31eda8dd30ef45d62a7a7ed223e480d087b718fa7f86bb816bc3374f313
Date: Fri, 07 Jun 2024 23:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717801642
