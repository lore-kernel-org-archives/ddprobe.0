Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307A1134AB
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742768994; cv=none; b=hbhz2BjUTN0rIqQHAepOqmzWDyeGCLbr1BVD2/v/9ZedObcnHx8Ewfjd2CTbgAeqpoLIOT7IaTuriSGiwYrgHy2IxqaH3q6y1hLitrgGv2SStJAFck+SrhMDb/JZXa9dpPJxD1qVlHGsAQPIwpIT3az9rQQf6jjIZKGg3YvuO7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742768994; c=relaxed/simple;
	bh=Mv7CLB4oDn9FxnJ3vWBA2MjRg1WdBTYQ3lvL6EO1G4s=;
	h=To:Subject:From:Message-Id:Date; b=fS315kMNmfRVTSuh/tXPHX41rfu6ID4lz6R7HOofYDN4RKcxecLxArD3qzN4aVGB33GERxqTTBzlpDqi/tVNtYxAMljq/amNPDCMAcXB4fKIZeaUlatOGO8Svlu9g5ca0D5DppwIbMZCJTjuWscOsh3HNu+hqoAMntIy/BFDqmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWDs0XYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWDs0XYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE41DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742768993;
	bh=Mv7CLB4oDn9FxnJ3vWBA2MjRg1WdBTYQ3lvL6EO1G4s=;
	h=To:Subject:From:Date:From;
	b=dWDs0XYS1MzeQg3iCeNiIOU0YwmHrI9OBpzwFaTgUCU06UupKufKYZ7BCnUjzxZXy
	 E7KhV2aGuBKWjy1/n4mbUB0GWO7e0WWajNCPTmoAnYOJYI9B/vmh4bsMnH73hKl3aQ
	 yMKiK+4jE9zO5gbf0Xc4/KB5u++59tktHmCXbkWzjFYiL0k4eSiEeKwYyfSownfgfS
	 9mlRTOgZSQqwAaZLY+MOzfkOWQXEmFeupLuI7PE87AenNRsHi30arm3xzNUpawZ12G
	 PsCwdEHs+iGIY1U1QLakVHXVe56BkcANzcKtNRpF34mQXm8SY8UC17MT2zKgrPUuvB
	 umDvdlHiMdSjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F99C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276899358.8638.12255418970854230418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935372c9ed5dc608b62c9544f286e0384cb270d662ad198840b4fcae3fdbbeb4
Date: Sun, 23 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742768993
