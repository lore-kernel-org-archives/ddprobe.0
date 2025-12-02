Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286462DAFA4
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764697974; cv=none; b=ZapIbyqbSba4NKvCO9HHYBRRfH6MvS8hnIkV/4UrqFZJnIRbA1XRDoqqKLeA384PtCieJQtkJUuCi7hFTIWYhq8mWnkuUZ9uWBm1nNvcJoBhzfT/EKn2m7oUw8rwdsbhU8zuMpRyDcW4XkViI9KymF8tVz+tVklIZXExb6VIJF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764697974; c=relaxed/simple;
	bh=j47+7WXMWgHR+3RI8DYpWgL6KVAHTnnrYNxLgLpg3A8=;
	h=To:Subject:From:Message-Id:Date; b=RJ4LExd/sp8gSgQ9prhEMqA/aG072XCFQpw6rthXayRu0tWQAjPY7Vq9J132CtGbI7iq2waju96ibOukVQzrquijPxAM0QZ8URBcibIvwWAn47p92cA7ip/q53Jufs6A6axhqTu32vJTuNa+dmBmAtDUEbdK+8MuHp1VRcXCyr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjedA/zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjedA/zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCADC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764697973;
	bh=j47+7WXMWgHR+3RI8DYpWgL6KVAHTnnrYNxLgLpg3A8=;
	h=To:Subject:From:Date:From;
	b=JjedA/zkX2fU1SVPwofg4l+Z6ekd5W9bUhnnYQwdaCMoAUCC0Su8lBYrNhzmTqC20
	 TnCb1GziJgsyTdXAPS8D/xwyfiJ32pPBmUW3TDsl7Os0//nLFvhcddo4ZRfqh+Fv3L
	 FvUNUU9PsYTHTd/aIQhjgR8F77qnI2fBjtPjsPnVMMZ2/4ONoYpStbVdCGXsolUPhE
	 4KzgmKMv15UtTMfXEYF3UtnEXKbO2VirAFF5ZRCItp9yB2X61yOxFk+Uan0vSGKKRs
	 6H8QCPudNVbyMx2n3IXlglv+LgpX9qRdwTe34cgTHD8OtfaLP494njtxBVgSk8hCOc
	 uCmgysb66vesA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9975FD12663
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469797360.15813.16031406686553067081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62463f9870e2bbeb853ff966aa39e7604d238dd7d59c9acd3dc6fbf865aab67
Date: Tue, 02 Dec 2025 17:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764697973
