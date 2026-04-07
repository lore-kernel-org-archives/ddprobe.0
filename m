Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295F1322A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775542534; cv=none; b=HHEFfpxsfrYOqNsOySeVcVKrrBsUJj3x1SA2AAQwJyJ6/5TxWjuyQLt2Of6kZePUT/KV6qBmDmldsvbhKBVZ12ZK+mFYQMcIVsWNX4cfUJsQ5aNoVDGeLb9r7K1m04K57RUPVP7/6iIWi7rJM4OGugJW61n9EfzdnYMVw8Y7ukw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775542534; c=relaxed/simple;
	bh=on51l4R5DMfzStKcoRi3pyKbsTQMeLxArVHfkcaBE70=;
	h=To:Subject:From:Message-Id:Date; b=fycG5vi3lrmO/TKT5io7pbfdRkAgS7fVYiFQvRAfnmDg/SMi2E0RlHaervhggDomYn9gWj2+T9S3k8/88vX7K+4pPKAdGgurlVZZ+HHkspcqgqQyqSQfTC6Qfpadl4WmbdG4QC/aTFp++xjeJL/DCtVz1ZjN6+w0tm0jEMYF35Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUuZOVYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUuZOVYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB631C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775542533;
	bh=on51l4R5DMfzStKcoRi3pyKbsTQMeLxArVHfkcaBE70=;
	h=To:Subject:From:Date:From;
	b=hUuZOVYjxRdY3he6zNctTJOSF0n5q5Np4xX1eMxsHf3MVkGH5cv4dtumFOcxoz5wo
	 I3BG3GLwufIYBhmtXCN+DtfJojaNavv4GVzM9ofbfZC3Ysw0ZoLhbT5O+FAX+TuxNC
	 gT/PmkIm8fPoRCOV+eQj0uOtmjfYMzYdDv0reZcXJfDHoPW9WLeviXRfme9fs63elM
	 V0HTizshUk3DqMNMcM+cc+cJ46BWtYOrEuYXbv80R6RP+L9+Y3xCzoPHILmZCRyMnw
	 Fvo4s0D46NsTrLkhJubSyG2PLB/uTr9BAZt2SYuVGJxuR2HtMABKFAtmzTDD4GrbPU
	 47skUa6CHkqJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BD8FB519C
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554253373.9579.7602594163243508673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bd6ef0c1082b1d3e4b519f98943db23c77bb7e247a8d006ef6b4831a6edaaa
Date: Tue, 07 Apr 2026 06:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775542533
