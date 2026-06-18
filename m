Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EFA33A9DD
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781811394; cv=none; b=GaAL/bLkmTBz7q8vKUv+CjltxXyLgiQ7H8mMn3cfXNU3YoJFxFqtrjHB0rsrxcKS8AkCyxzZ5ATTcCrIgD5v1GIRHac+3EOJc3W4rDqZSpJ9wsyxpfIpVg8XTodHe9Nnd7LioKnqTALenkYeE6Bf5fXFq1/RODRo36ouUhP6rqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781811394; c=relaxed/simple;
	bh=NTAAjURwaen+Za5XZW+KksJD9MGwJ4kQ218OUUYcQA4=;
	h=To:Subject:From:Message-Id:Date; b=mx+5Zv+TFWj3FFukFP60QQDWzdV1UgqjqqehrgY4rBpai9aa2VrrHVM/9ZX7O1ACx80mwVpSkxqp/hluXtzB8++hMLuf9LVih95V65fHGm4L57VgFe2FV4osqCc3aYtMwWVfkokk/gAFXdUsWH2Vt0gX+qF9cuAumYHpmWxm1go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkPiKn1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkPiKn1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDDAC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781811393;
	bh=NTAAjURwaen+Za5XZW+KksJD9MGwJ4kQ218OUUYcQA4=;
	h=To:Subject:From:Date:From;
	b=QkPiKn1pKdA0gWcxcavfuAahf6qSuGyyZn5QUzFX+kjANafmXRYJyHCcQbgTD5PI/
	 EQBPqqb1hMyOZFoZ/dwhsVtxKrn3fU+9SC8crxwtBCbttchYgl560cAEl/IaDNfcu6
	 ND53jSV9du2E9ArxzCG4foxT9g1EBAwt3fuS8gNfsExPMnCGwS9WJbE5ijyAlwcRjw
	 7fiXrKi2udhmmzrsQ+BlTr1JRd3ynFhukr2q2qXDMkfiiW/9CPqjESu9b+F+8Pg4YR
	 jYXdxe9O2OW+jP2jEErb05FB6834RTLtAze1qwYUBfbu6vphpSXTOhCuAqZik3kxXi
	 QylTI6q9RNw5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8CECD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181139368.29226.1591018527293492807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9383bfc148cb3276cd4d7e1111cde288bb1c4b3aa72e983f6b9df14165e8994d
Date: Thu, 18 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781811393
