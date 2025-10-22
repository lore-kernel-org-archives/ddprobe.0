Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130E032A3E5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761133194; cv=none; b=Cf7dZpZD+Y8MoDeVQSC1OQWEh/zgLhFV/Lq7FTEuYfgf9jp0ORIe5yoHNLV4/nBDMCkB6ByZpLmC0WXRPf/asiSe8EbyDNcRWEGX2F4iD4AdG+jVoyLqqFHbVZ+QBRzkHAO7GHmd0e7Pf2Ait8JGhWe9pAq8vlggmy422TqVHbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761133194; c=relaxed/simple;
	bh=6Xd+zSf1CVdU5PJwmf80rDSCv725TMPUXvus3A8wpyY=;
	h=To:Subject:From:Message-Id:Date; b=VvcNUDm7WiBhJJvRhdND8pET+wb15lT1YLvOw7Ci8tU3i2a5FLVcdeJzLSxGR9+bqDet4vrGjHS0MDf8kybv5YjHhE4zAkZ8H8vF4kPYtPVSPivhD6ikL70MNqWRVS4gilevzfZ6nGrbjvYpYntlJeZSeuHIAbt92JHJjrIQtBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZpcYZdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZpcYZdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43B0C4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761133193;
	bh=6Xd+zSf1CVdU5PJwmf80rDSCv725TMPUXvus3A8wpyY=;
	h=To:Subject:From:Date:From;
	b=iZpcYZdAGqENQEK0b6bzykyspICuA0P1qfKXlkxIrCdm/HNg2OGNo57P//nK0bm1F
	 GZLSzTgL5kMse6ysdIa4z5h86zeqXJz8OtGWTq6oUA17R6D7a8z9aS/LICyPpPbsAn
	 4TkMZKc0VtZcksOA5wBi7yB2e33kaLQz8YF5EhwS1isaPHn9UDihvUb3fUd1aNhEKD
	 8nB5ZnCgEqAs8qjEj0MgBZVVOkcaDxR2mx5M7CTz925YzPQXMgThEMQ9EnRDcu0BAo
	 0378S+4gHtQMqvQ6lhlbiF30RuizLgfpKb2MfzAlPMbVgh8UQzfEyQ3QJgE89NDJJ3
	 r2gOhRlLef+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91990CCF9E0
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113319358.5591.18034874006434189768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7526638855a98339cfe62221d41b350e65157c6173e0ff034642e7066efb4d
Date: Wed, 22 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761133193
