Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5053A1C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714226543; cv=none; b=FfRS7vr3ovb3Tq1goua4b3K8j1gmIGDEJvbMWxBffflnB1enVP/YwWEH0hje0UGTTS1jcrvebcWuWk6hpLbUs8a9rPmHsampe0BnWl1qFFiGSVVz04jCNCf/i4ID+0G7lOupOdhLlUARxSJcLblMhYLUV9hqoyw6NtFETaFaQ6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714226543; c=relaxed/simple;
	bh=RjoqOvkgfyjTn1OS6tSPQvUpzZH7/tj/NSuxzf3rfFo=;
	h=To:Subject:From:Message-Id:Date; b=t3XPs6hqVG2q7tJvcVAVdxqTGQu6dxCtUrS8BgP8dnCdQWQ4RLZT+Oh4OdfCvOR7+JDSickDJSdNwwKOxBnu1uv5hkBoKoTDlpbACIOrQMIWL1LCUFlKjYN1lrdnDA0QcazswNZ2n2TuRonIPbg/uxVkDbID5Csge6IieuuJSro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPW2hIUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPW2hIUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75DDC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714226542;
	bh=RjoqOvkgfyjTn1OS6tSPQvUpzZH7/tj/NSuxzf3rfFo=;
	h=To:Subject:From:Date:From;
	b=BPW2hIUDz4AWLkewN0kHcOA6KXSamj7KvGC8BK3YHW1mbDLAklc1ZN1Z97viiHISY
	 TKeMKXOEQxGlF8lJZeJmuhdptvFHNpgnpfXlYYzpm3OEFWfkeIvyIKg5L2B1shkFgY
	 7gD3NHi9CzG15/PSxoU0TVgGp9gXLM7FCcRmdtaNdgahff+JerrDkgPPJI57DNJREC
	 gwuN03FNUOchxHQoZTDYuH3ovwFDT7xUcZcicpIf6M/7ScpFYVCkotwjscjnHMR4w5
	 KZ5lB1mq4oPCixNsiqLq932FJGNTz4IwmqTZN+jzLmcCNROuxig0pmMOgcPjvcsFNe
	 UuHKwKzu5aXaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AF5C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422654275.547.4352297995573475855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28f12ac7602c064a05f22e1074c5c337245bef2983662a9a9eb4cc00373cee2
Date: Sat, 27 Apr 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714226542
