Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19AC62F6596
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776767254; cv=none; b=jzHzYSs90jhWUUmsu+ihZU+TZMEq/3KP6GT7nEd86ICoh8TH7vPAzrFKb3vHxenMsX0agZZXCy+nd1+mhdxeaoovdIt3Mtr848aSRA5rAkVBs3wqURinDEeyhRdii5phhwhrCn2cBcd07kgIF9LBbhnomSX3BwwbAqrTzkJrtaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776767254; c=relaxed/simple;
	bh=0zJF0AMZSvneuwzkgQVll1SzfJnzagLA7zafBhNKvpk=;
	h=To:Subject:From:Message-Id:Date; b=rO72wWh+Y5OcPHGs/N4oDVuEs5U6gKbhDmxz+MlsPpklqGtufFk86LIbPSWuaoE97OiAefLqmYilZ/MDheil+9X9s1IuKw++RnE6PUfgCsvV/mqBCEFi1AP4NJTCkrbmf35feN5kFak/eHJTG+iSWB02XO4nnT10w9/Bhynrqdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwrVTb6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwrVTb6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD716C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776767253;
	bh=0zJF0AMZSvneuwzkgQVll1SzfJnzagLA7zafBhNKvpk=;
	h=To:Subject:From:Date:From;
	b=iwrVTb6WrsUVFWjdH68AEg6YPKsl8LbqeIqnumSEQUNCxKaCwR5XI08CEPVRZiIxJ
	 aDHp4bqeNGDnR2mSXHEm6X3o/N8P58R5bbEUZWpj58efQSdxxe/uq6PYaxJg7PUyWF
	 i/8BRZxks9s+jxDb6wbomr6X3LNPqYOrIBvkF+5qo+Go5kS2jYapDjDhN/PRoz7r3c
	 xP2vepMEIQdskvZB3KVq+X297LlCf97WudY9ASrZqDe3BTilwwkSqgQCanBntEHddn
	 m0D/3k5voJY/rlv2Mnwbqenx3ZFqqToX2cPeHlyDi8tfKQgeFOdFV61H9fZoVSYXeR
	 QFMfaWEAmPP9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB8BF8924C
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676725369.6652.10999648614241994272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0f54396dbda3839ccf23af45dd47ad16f06017a872f851ee43dd24a2178ccc
Date: Tue, 21 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776767253
