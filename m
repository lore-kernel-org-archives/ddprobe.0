Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C51406261
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792107634; cv=none; b=g/Xb6mLa43Dy9P3nuzzxO6DVI+TweNu1vCuscyJnHyRm7YH4Kb1/4L2NGFx195E193nvzuAbPsnnE2hDro04MZih/xtUTqTyct77zkCsKU7aTdiVmiGX26FSDoOy7wovlu+jWoUcTyNjYsZAnMSpn1PtESnh0r4QSLIM4hr8SjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792107634; c=relaxed/simple;
	bh=0tbCJZ7nH46jY1w/2eGrJ3ZnwW6Rt9zXhLm896mL4ug=;
	h=To:Subject:From:Message-Id:Date; b=d8GiyTfzCIjqoaMyI6OpbufgSai3+lw95dNUPLq4c3QqSb6Xry0IlYjqHTrWMD+Jurhryfk0QpAlhjI9MxmA+Hr8CcAU6667bR20ntaANPkiM/BfRGIH/CTV+TkndwahSfK6WlTGAi4rWZoGP/gJOfWTj+gWEy/4RQdHbkLxbwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDEFC9bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDEFC9bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB34FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792107633;
	bh=0tbCJZ7nH46jY1w/2eGrJ3ZnwW6Rt9zXhLm896mL4ug=;
	h=To:Subject:From:Date:From;
	b=JDEFC9bjxM/1M4UFhPUQEHMZJe5/Eog0e47spMOSnjIvq5OpV3tErHAPyT7yJrm5b
	 +rSOh1vFvQYTgxddou1C01CgIe2XFqiT8K4vipJOerp+DIcEnaRrEQQJUMKd8dvjg5
	 w0cRlk9/6KPB2Qrs+8zpoWslBiG7LqKVFdT5Sh2dA1BUb1cgymeSFyeQQR0nFlG8IE
	 j38j1Hx9BvrSyrMrbdOLFUB5dJdj4i4r/evKNtfmgWOfL1eQRuEWbuAiZd+2iak05E
	 qEWtR35ZuChHYnYHuMi9y+MsT+gAGgNq7k6z5O925Kzi0YrshZzG8dd9JCVOZp8rvl
	 6jEcVVq6eyERw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A969FCCA462
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210763368.6512.6120471355464983242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c7538c02acdb3586d0f3ce097c3b17d2f1ac2d61ee17f16927361f1c235f06
Date: Thu, 15 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792107633
