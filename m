Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232F21C84A0
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765677774; cv=none; b=KWCi4DjqTHopmtD39wuUObMMyJs01/dTDmLXZSZ1osezokWD7I5Rr/J8qnTT0JSDnQbXN4U4DW+DPpjSQDzItAGDl2sAsA2SzwpMG9Lhi96dwwILBTS3knLlQ3iAn9fvgEFIB7khHdzz5NNhEFTQ6BWlXPQuDmdliYQcUsEmnJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765677774; c=relaxed/simple;
	bh=ZarAr7sH3i0xiqvfPRsQDLW64QzrqI4HrfvsGMUSgp8=;
	h=To:Subject:From:Message-Id:Date; b=YBw9kfLLPtJIcA9qtf1P4c/A3B7AcbEZte/2as7xAEdenjs0t7IztudC+aVvSV+776n2fu51qW3KTuEkotNdqs8vKz9fwVzalFxrivAiS8zieL/uofBV7p0SRt3zGXNxNINvqOQHE4rGjWwGoZ/GfT1jeEYPNvIN5xk3bUD2CB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+IL7fpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+IL7fpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA295C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765677773;
	bh=ZarAr7sH3i0xiqvfPRsQDLW64QzrqI4HrfvsGMUSgp8=;
	h=To:Subject:From:Date:From;
	b=e+IL7fpSJTTUIMPN8aGx69CGJLjchnCvuaLFHWyvQIMwaqjgJ4pIHX+LHnnWBSsTF
	 NzUFyvZbxImkNE3LD8X0bi+Ri4TIFxH4kTr50p86VLXG49GfW9V//SXy9S6KG6oJO0
	 7ejFl3auG88c3+G5eQrTr1TN12VKwnQWD+bfIm/8h+9ymJTQ1hihO/viMFQQAL28Qo
	 uldkYNQvaEVoOmiKVMgdb9cHWqFhAu9PAp5f3o4pECNPIsTSXPoymIT0IOqcW2zmeq
	 etdmS7hQDVEKz+wW7b6q/bHN7OrG+qXiVcKvSFKXKuCpUEHrbocd8JQAIqkaR7dW3S
	 KPyvFANkPEH5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E02D5B161
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567777360.24398.17861516134018438861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2de2e805b8dca965075f430b76d0f918b3196b33f1e16978cd294484aca6669
Date: Sun, 14 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765677773
