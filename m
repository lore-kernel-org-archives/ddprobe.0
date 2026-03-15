Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F136937AA70
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773602094; cv=none; b=mRBVddzbIQRtXBAjhdmNJPG28gUbNUTZeIa3C94p4kBuQsXuGh7m+GudrM6R3+vPpYdFL15DDxyiepQS76CZjyCbhZG+hjpTVjObMt8VKPy+Z2fFnP8mpnm0s5jsn8xSAJRtTkSGZXgRVpDasjmiFFRuwUzlwu/HOlljEQjlzy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773602094; c=relaxed/simple;
	bh=cWrTo+PAch78W54XW3H3CH2e5k5c7+5ikLXxHeYW76g=;
	h=To:Subject:From:Message-Id:Date; b=OnOga3z4aZzasQoC0aIIUHuekCrKp3WmPHRuwc8BIX8PtJEQCCuuU05kKOQVQkmKNX17Iw+h5Mb2HTgUE1BohoA3nIfh8MF7cocQd3priuH3rQaEoYMu9hlPCg60W5sI46Q9ewkVO65wGsMuOP/f6gT214U6GqDO0E6PB+4acrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbS1xQ9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbS1xQ9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF6CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773602093;
	bh=cWrTo+PAch78W54XW3H3CH2e5k5c7+5ikLXxHeYW76g=;
	h=To:Subject:From:Date:From;
	b=AbS1xQ9QHmAV2EsJQTYsba/RA/oZbLdlcGIFT1O4tGqhfJbQB0NYjKcl2kIq8EoO7
	 klnD2rxeCw8I4CGuPn70q6efffRiGcnwfcQwWJiiziE5W6msWQf5bgmRPMF6JsC+ka
	 LKX/M6rgo1HKRhLyWbp+UoDs/JyDbDYaAiOO0L8ozkkofnVYdzb2O8JTdgXODosUSB
	 kIECyTJ9M/XKUHyfMSVPv/84mQ/nXgL+qZsBU/CX8Lsvskd3Xuw/RDppz7WOC6zwZz
	 q7r0taaGe2smR6fApODlwxuOI3eHY63ZD48mD0yICsFpm4dAZJ+XZ21s9OgmteAsYT
	 FPV39YEqc4PwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD2F3026E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360209357.29202.15247629314127550502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af298a833bdc248cb6d5a5f6d6c5a611944bf7888cb42f76d4e67588a9346346
Date: Sun, 15 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773602093
