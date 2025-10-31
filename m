Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A20329367
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761901194; cv=none; b=OkGrjBmWdy52wdZ/Nb3Hk4reHQ+kzdg4VZfizDLMBHEQfRXuFVtHOBdMe+QSSPrebY1Qh6f+GnTJFeDZ8IPSRvFTojTjs0xqG/WBhex9zJ7CaliArkxeplqYEIUUAw5STNpSQBq0tV1ARLuR/nUowl0TZsD9E6qa8u+Shovptx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761901194; c=relaxed/simple;
	bh=KQgJPDjrLqsll65yA1TBi/YaHRvfD0Z6m+7Ys9V6n2A=;
	h=To:Subject:From:Message-Id:Date; b=XUyePTuibmvIdg1lm0vIcxnu1UadYUkUsa2a+FxwHiuidfeAc9Xbkjb0FHNOpU7fHjA36as/2wEmOMvIqjumdzsl0XTITGcDiRgpp3HD4R7hGXhwH9c4144Rz5D2ym3Gu6MgIOEbLMhdcRG3ENSKthQWRo36ADdppM+Myl4kRjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0MoPkoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0MoPkoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761901193;
	bh=KQgJPDjrLqsll65yA1TBi/YaHRvfD0Z6m+7Ys9V6n2A=;
	h=To:Subject:From:Date:From;
	b=U0MoPkoTCFpvdpY3vPKQam3czuldU4e9rhbyBS7QjWQzEMcTZcyAl6W0QSUcCX45P
	 GaIZw8K4vDH/UgBcstYNX2mEqFa9u27nPn7sHI9MmQpIVRKgnBw3Ye+IuQtRcvKBAm
	 d5weGwzI50bzXqn3MT1Brhp3oWr91qJHwrZzJuT3j32l5RyJBASrrPVSTQ+hPzDYw5
	 TjqTVW9mhNSO5u7Ap4scQi1SVAM4ASHT4DcwKmchsfTC2y03muI8w9tp42osBq1PIB
	 DnPfhFirHP5uI12rMaoN5DDaCo/+P8o35ltig1qs5IEfHpUnmRS5Q+RskAb6H4QEAu
	 t/TzErfOAro3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94749CCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190119359.10884.16705219971904144213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3f5acdf6328c40361d4bc472e061e215e7962e677bc3118791c24ba59ad5db
Date: Fri, 31 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761901193
