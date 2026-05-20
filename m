Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FAC2BCF46
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779283834; cv=none; b=ZzoGQ1POJe/z4HaPuS2k3Ltzs3k/mxnU4gkDoJTFPPxRmo3r+UQQPK99qMeCzPA776JhAENyLqMBZNrCzqIGoF7SXmLcNwAagMyHJk8sYIwB8zwOo9b1vpOdwbZRPvt1H4CNgm1zIrBJLI20pB8bXTk2UVlDSYIfmTtlOsDldTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779283834; c=relaxed/simple;
	bh=8IbN+oJXvL/VxCSae+Zgumit3V81A5pZ1blz35v3Q2I=;
	h=To:Subject:From:Message-Id:Date; b=nA32uNuiuQsoDq+fVbsd69Zke01v7JSGgeINJuizXmumVqhRS9leW/27lhqfnIcq2SguLIUkinf69TMLRhAUtxo4uM350qAT9cczHuVJlTDHd2V0v7r+h/NMCONXYUlbTii20A3RSrU64DUUAuUmCZNqCLNesF2rd5kzm56Qpsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z89ARCL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z89ARCL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1441C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779283833;
	bh=8IbN+oJXvL/VxCSae+Zgumit3V81A5pZ1blz35v3Q2I=;
	h=To:Subject:From:Date:From;
	b=Z89ARCL4X52VxXnPPz0L6LDSf9Esj6LYgs6UKR6o9zJuKVEeGvTzqQLsX6SkgGJlf
	 6AZ7rVGmfGV1MVpWBNuF7NV8VrT04g+7mU/gdxC98z3K9oLBg7A2jVYkd2sPXsJDME
	 fTkBfZ65VKzN1IK/utnn6IBP32/LqZVMILyJcPRvctixUOLNX5UV6Y22Th/JSbMeaT
	 sM8Dl+Y7ZPgnxYRKIz93XHwSCHpCpvBUIth48XMatyvRdO8I8WXBZiFyffoGMo4Tqr
	 zusleMq8Y6KIIid4RR+jX89Nf//RP0rFHfAJ59PGCM/MwU06Y3mViTeWGkHSomZnxm
	 mD1mJP2UOwqwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD96BCD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928383369.11754.13414957786928098360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5255d11b7ff2ba0633b3096f170b045864004fbb4a7c195de27de9514733b324
Date: Wed, 20 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779283833
