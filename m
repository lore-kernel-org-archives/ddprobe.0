Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538875158AE
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789738834; cv=none; b=kFQ6Fvnuwz/11wgUI26Vl5nxW8GwOUOoCjlUnzsrxqFJTLak7KDy1OOry4rlSX/gJdQwJonRXyWLrMFYqywr5sGcRO9ZG3NbNyC6/zjPPvQWkPXovA5+hFb7TUyK2bA10ar8nvMuYPrytPWrTjbCz0wcheyLnAHygqjMJ/nA2dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789738834; c=relaxed/simple;
	bh=XHTLmOe5eZmsrPNS3Xvgo20edrZqBA6wiEpM+FZ5s0E=;
	h=To:Subject:From:Message-Id:Date; b=s9tL4VLQ76ibw87lDIMxdTJ0Q8+5P7+hcCODERY5Mu9G3R1xolDB07FN+Ug2SQaD0L29wdVRQ7GFIB4NgRgI5DsB3tbtPcgwmgehN4NTHWJsI7JKrr9Pky+VgQ58AqjZ+e65W3RQYv1/Hbzi/bXKprnDvDnXtXJZ9u/Ad0iKfbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IX7zkgpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IX7zkgpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5A3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789738833;
	bh=XHTLmOe5eZmsrPNS3Xvgo20edrZqBA6wiEpM+FZ5s0E=;
	h=To:Subject:From:Date:From;
	b=IX7zkgpl26NkwSY609hk7FRTtVRnCypdFd3oNAvkYhbY8ADlTBMYD6Vd4t6xo3YV7
	 /9KkiabPA9r+Sk1gneURmlEmD8Zq5q5Lfd8u1QxsyJU1NbhWFfvHMbVf/e9vRCCMfT
	 v5ck6grwBkY/UBWcYwjt+GvszUYoLZtyiK8nLPlCdFe11OSzR9cic7q6TZhTt83l4o
	 yKKSIauZM38n7dilZqqDn+aJrB/xB+qq/fd0z4ksmXqwPE9zM8YR97jcjr2hNk8bVm
	 z9JIbLdojwRassjw4LEde8YMZiU7Tj1Yma4Mm89VzYaheeSx/lzOVOD/nrMYNtUevS
	 5AcWrJebaZLaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CADC982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973883374.21483.3204896230551678564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22db432ffb217922f754410d1c52d798b411f0576dbd42c8b779294d3d4a625a
Date: Fri, 18 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789738833
