Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64ACA3E63A2
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791290434; cv=none; b=lqKrLyflVmkHIjPgG/jeDpJGLVH8TVJDZ8cA6Ovh+65a1zM/WhBJHtKIx0CV7imLL2yfM3RsEHr8+EFC8FgAfUIoFYvInSBY7e4mSPLthAwgbkoi6iL70fp+ssqVcMB5FsVkSFVoIlyB0Da2l0A2q1sOiZYNmQ5gwXAcEITNmvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791290434; c=relaxed/simple;
	bh=ph2pCYv4lpHK9wk9JNXeP7fZc7oCPHdqhOS86FmmggE=;
	h=To:Subject:From:Message-Id:Date; b=C6i+Y7DXKcUGLRnjTHt7Z3+YigCRceMXkOI7/q6F1VtHRXxfSMmyVvSsYYn5vI9x2Q2mADLtf4lezoEpdLastxiFEtr7rNbe01BRqTHO1jMCU+LoNe1OSFWxNvmswFSRhNIQm8vyLB+kH0DntaPyzAwAS3ojXHPAvU4KPnvZiAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGJffC2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGJffC2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF075C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791290433;
	bh=ph2pCYv4lpHK9wk9JNXeP7fZc7oCPHdqhOS86FmmggE=;
	h=To:Subject:From:Date:From;
	b=kGJffC2bZq5nMHEllslULe+EM6XnmXwWRmmpJWTYyHIXHZzMTpyNRh7RvA2doYSxu
	 NKDseAYMo+ImaGnP/XWgow1wRfzK/ezcMahYBwXCo2JUAYZK32/yIXmIQOTkbtI5Vm
	 7EwUKSdKlHxW52cAkSrsZn+PBWUx2PgT1vK4DHtLwothsOoZ9zKAxHjJr7eo7vAMyP
	 6hreDj15zVUHLV2R7lw8oB7qx34NNrqth7dJ+tvMDHm2nVMsjLJiB0Z7YQfHohAIVW
	 tKQsGhjEN8/Mg2Oznen3nO8r2iUq2cZHfaGntKm5z7QYbvCuld1coi7efeLjovhnC6
	 V/skp36cJq7RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5EECA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129043369.18402.11722985177612279524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5266109aba170c607e5823e983d7faee2f4cfcd43c67484e422c824d87bcaeae
Date: Tue, 06 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791290433
