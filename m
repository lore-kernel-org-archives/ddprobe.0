Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192D223B632
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773126294; cv=none; b=RXJLvbIiSGzI1Xhy7IwqRU0Q71qt4/mfbnb4xsdvDmkPPkzHK5DGBNx8Olu1G9jSA4XlCTJbwF54GfF/kNKIc0b9XihobBRKS0d1GvUMciglWVaEjcnT6qOb6K9IeBHeEacCKsnKccRbpFt5fxVBo5FiwqSThV+qRttO1/Dpl2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773126294; c=relaxed/simple;
	bh=KcHtWfmJGKVJXUZYTgF8lMOFPdtJV10IaCTzgA+N8oM=;
	h=To:Subject:From:Message-Id:Date; b=CKUJpqlFVvVgbC9F6smvdE6BhBgJFIrxH7n2j/l4UFNbsZcbWV7G3sCtYbi+ZY6ctC4zBl4fxq/Yzi4bIXr+4w4yihE+cuJVPwnwI209kTWCpfcMK54AyhS05CoSIb/NnxDGSscDodhMZ7F3u8rRKEONgAMNJT/DC1ex6f/IWZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efpMKXyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efpMKXyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B12C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773126293;
	bh=KcHtWfmJGKVJXUZYTgF8lMOFPdtJV10IaCTzgA+N8oM=;
	h=To:Subject:From:Date:From;
	b=efpMKXyNVAHrUtLnzgPcte/UX3Rp9PWLqTHSFtcaoHHDi29zm1R2pd4NU2wJdtT0I
	 qPACeI8UyYhgLCaLRcZpoq/5cL/fCklhprkbObJnGVVU4MYa8aDryCJiMTfj2YXG26
	 gTgnbzJ0RLvDmSXCBPfC9WG8Y5vw+/yae8o3/PP9GsMaWJZw0GgAiT8GHJc/RAw0/j
	 vuXxJqi+cGBZy8Cn/NasL/kDRh+JxI+OvA+WwvsXcnJXeYajmHCbLYhfyzDpokdOvS
	 jI35xh58i3tWzPzSWmHbuoQZYGZF/QodpmAIVDNpGRPtiMr922ACQBwwdhiCTHTgxM
	 hnhYe8f8dsUMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDC0FCC9D1
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312629362.9259.17639101419507502041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641d3e4e0b0655b3622f8ad6673b7b6cb863eee07b951c23fadffc010cb27071
Date: Tue, 10 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773126293
