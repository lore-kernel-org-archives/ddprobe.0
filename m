Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C942264FBD
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775232934; cv=none; b=g9YTVVQ//kc+RcVjtafPczIYR9CTEAtfxQPFYxSxYVshjSD/kwCDSf1F4ZcnAla/UTQA7oRfzie0UsaTWVmkRNuRaREOd/zsFPLJLpvKMNZlRuk3q3Y9upzhJIKsZ2yElRUkhOH+sU19qZheRi5gnc8MX8HRWmCIwvpVPI86Ums=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775232934; c=relaxed/simple;
	bh=/RtGXZzKo3OWdDjcC6MtWVM2eBxMw78hF4ymaxuEXpo=;
	h=To:Subject:From:Message-Id:Date; b=t3fb3DuLN6Ldz2aMRqkuqDNrCD+JMNnHRQRnLciwjJas9gcIoWbBSqWmtL+epqvXyhTfVJBjNCH2tlDKbJ6eSBLCAixEh9SO/6yKLkfq5DendPlWLiPvhXbmPMk8AaH2OsQ4343/Pui2Vd297QJLOSg6zx2jCGg0j+Uqyd23ZVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8ONskOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8ONskOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE5BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775232933;
	bh=/RtGXZzKo3OWdDjcC6MtWVM2eBxMw78hF4ymaxuEXpo=;
	h=To:Subject:From:Date:From;
	b=A8ONskOEE0iYivOvZFEUrg9J5QfzftLt3eXoqRujaJk6p6O6sOZP49KIx9v6wg07u
	 KExNcVuKNWNoXi4jAijq2CcjcvCvzUQ3MsB14oq4XGkTjfpwYjk8rIRtx6+jR32gOZ
	 ihdQD5xpnUBz6BE0Ky+TgHg7kNNrvxcj70NtvZNpYwMBruCuHqL2NeKD2ynERljfn4
	 BrphJ8ZLtb7ljDL16fWQn5AxPzCmFedtcyqZyUgPFRbANx2f4BZCgSJkd9LpnBPtk6
	 4ocu5dRBUFL/O6yESZIZViu2eXFy6SYfui/5dHhdW9fn19W/GEcKnpSUhy6YUkTp4Y
	 jGVTbWdDlr2Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD35E85371
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523293368.20331.12179767174080309787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e6076b779060f8ad488afa0b32fb962d1cb7c7889bf605fe9f906f7070f252
Date: Fri, 03 Apr 2026 16:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775232933
