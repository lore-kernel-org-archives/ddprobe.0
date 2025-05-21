Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CED517BD3
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747813794; cv=none; b=VEUfdHZYpw+0lZ/8QU24HNzqn/ev6GivdxUwz+WwAooEkVyp0ErJQUZLyeaOFM2EnQkwSwL+MfGxfLCdzlCypkPzUn0Fp6LdIMXaoz1T152ilJJubqDv5ckMnbS/11HeJtfV5DF323Lb4T6hztSdyeXg81wZvfdzj8lPV62oZfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747813794; c=relaxed/simple;
	bh=dsssW2OqElU1fESQqGDTNIairWA+NfFpQqnPPMDEYBs=;
	h=To:Subject:From:Message-Id:Date; b=UgHzBbNtP/R4YskgHtW5JTI2V3zub2z3oFZ2mkA6DSG4B5LvbOMBNPHW41R3ZPfYJG1Ndudu5DEgpltXaQuDKBgnK5lLYF//yRtwAR51tfVaemP96J1JtlQ55r6ORAeon6DtGw+L8YznsxMO2ahviOlS3gJJSFhafrCgqRYrs94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSMKLQfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSMKLQfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A996EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747813793;
	bh=dsssW2OqElU1fESQqGDTNIairWA+NfFpQqnPPMDEYBs=;
	h=To:Subject:From:Date:From;
	b=rSMKLQfKjnJWzFaQ4D+skXvcQa1SdZ+J/dCA/5ZGyqxqTrLe693MTF+WiBzeqkJ6O
	 HH1vfJuZGxeATbTQiUyejdkX9aP0tlIcM5/qZaXX90zA4UIRf82OM5CMf1sSlzROt8
	 1K4DVG5FcoHafx2MWXmr1xMmnAp6SiVM/LrodT5nzAvct52oeveZFaNoJsXz9j1Hjc
	 ys+5UkNoMY8Fm5Q59u/3Vc+vq4Ui3ZrWwySL3f9wH0hUr1E0ZaIYIO/23xCHSy3L9f
	 T5xLN69YayZTwYCpFjtG7/9tMXnkA3/WAqnkwtw1UL1ZLC1rFNPZKcBstCJSr8wMOZ
	 ZijmRV5ScMQjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A6C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781379358.6523.1764388958827295937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5535032e50174377b8c87c78ab578db99a283281278dd4816ccaf23789a6634e
Date: Wed, 21 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747813793
