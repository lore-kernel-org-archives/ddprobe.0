Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF66410D37
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772276094; cv=none; b=JKSKfTz9zEXs22Rilogmui5BGEFVsVNpP4TBNsOOtDGmzYzytXL4oigLUuRxMdJgYWsFD6NDJ3jZaZw2Ysxwfp7ApWQVYCHFlQHc4x0+iMhCTkt2HAjDZMta8WpeivzGrkda5BZb7GQmkdJe39rs08nNN4Rc2zRu0KmdDdt+N+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772276094; c=relaxed/simple;
	bh=X9X4js/gsZ/RSpXrmGUM6/QeXEJ9r851ZJrWiOpOBYw=;
	h=To:Subject:From:Message-Id:Date; b=fBbzJwnnP/AT0AtVI2Hd+kZLQUxUP/5+aM9ESPSZtf3sz8QJ1RWRKTwmOu8+QSCYagYA5hUijutTIQYUxyO5DnqgSDX/81MPQg1Nzi3p1ezJHFSRng6Ra7Aap4ie3hK1D8RZh2DFXhKyU3fs+vqp8J+KBoC2prphWIVYTLTN3Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDgvAdVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDgvAdVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A300BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772276093;
	bh=X9X4js/gsZ/RSpXrmGUM6/QeXEJ9r851ZJrWiOpOBYw=;
	h=To:Subject:From:Date:From;
	b=PDgvAdVUsnnzXVUgszIecBIjPk7ZwHyEklXVMdDzIhvMUmMuh3/ow8Srm/r8z3o0V
	 jF1qR8ri4CsZdjmwSTtsxdrWFQtN1rScXsyO52u/Q/yh7Hlld/2eMEmNpJJU7v08iS
	 FScoN3w8q0aFBlROv3/dVnh8hu/X7IkHzwMEw+DCIUFAaY+ZHNstwZyc7h6Gu0+pxL
	 3rVM48X3CYkvjxuY/eFELisFy9YNzcZBMQiOln8BNV5uMgEr62NlD2Kw95tus4WOOF
	 r2tUyYoTWVqy0+6/m3md1dHePvGMtlmWUCuFDm5rB9dDrsPZOZ0ahNEsKI65+hQTE5
	 Y5D6Ag8LFyasw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF3FEE4E9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227609358.2818.13443783699953556075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090f345939539b78863ae9b5b65242eb11626ea40a12ed0354f3955ad255ea25
Date: Sat, 28 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772276093
