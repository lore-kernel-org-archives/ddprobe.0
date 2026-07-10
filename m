Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28751370AE3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783705114; cv=none; b=tdBs0N7pxLLBz35opdTa8mFxPMNxz2KEk+RJl2r2x/uYOJ7neFuYFZpt5PNNBXRTF3oCvGNHFovljWVVG687d0iWrsytJw6m+hGEIRm6jiBctbAi4mzVn6pQiTrGorj1LUiLSyHQ0h/6MmwaL6Iv20npu/gM6wgErWPQgw0q1yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783705114; c=relaxed/simple;
	bh=TE/Zz2StBKNxUOu4jToeKjJPRnUp7YWwc8J9NtlwEug=;
	h=To:Subject:From:Message-Id:Date; b=KTT3tMrpqrPH1++7qp3+G12sPcibD2V3JKxwjpr0EnH6d+DW+I5tGBU0nidQUMMhA55PN5vMgF3OYfAEzA48lZG+CL+sz4ERSZcjHA/tyLAlc4GCHPYQHClux1JTE6yzBOblGOmQMBlF4TUfMZAA9rlTBv8lfPU5jmISV0onUSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f20LX4CH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f20LX4CH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2C9C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783705113;
	bh=TE/Zz2StBKNxUOu4jToeKjJPRnUp7YWwc8J9NtlwEug=;
	h=To:Subject:From:Date:From;
	b=f20LX4CHuGmdADhfLGlWONnMwYa4aP2d4CHBuRzrogFEXx0mVSSUPA738D4VsvQ9b
	 zz1cof00wKs3oz07/Kf4lRhADr3C4ZOizMOJ5HbpjFrdhRAPV9t85tYryPt9K2qoJ7
	 U2fxxxbW8/N4m54G/qtmhmdXMcFvKieNu31eWuCCfRO+t99IGYyGqYoC3ZCHI73v/d
	 /LCh7njvx7wsAViZMxyP/GsdNjp7bw6c4Hty/gZkF0CyfP6N2hIkUF8tasy7wf7h5j
	 Qx/ff924aGh1DSj+LkaVzVtPcPLd1pWlKcJkb9vYPXqF9c6hNeGuG2r7ygd5ByF2iW
	 7x1nZRpo0EQFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D20C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370511368.30969.4532840672053597707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd9aec57889bd1e152159fb2fe15b871878f64571a4a27af33d624bf384c059
Date: Fri, 10 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783705113
