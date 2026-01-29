Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA80219A7A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769681034; cv=none; b=I8vp1Scekdcu0dRmR+D28INtYiE3a7cfNVL0yGCr/hEak0CICCv+2MwIV/kinTyPNRBeMz5utRHFRiBvVZxhckyjfs5Q6d2Jn0BDSJLuIN4/oS1t3/QP1JTSEeKdhZ9+WIdimbvELMjZczJmhAKugs8xo7s/rdFhVW0st+4hN98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769681034; c=relaxed/simple;
	bh=XsI2aH2Qp6oO6XuqJt567yRYYMmS6Z/7izbOzDoPWpo=;
	h=To:Subject:From:Message-Id:Date; b=b3zR5HvVqDhNklLk7TeHgBo/O0cfcbzI1KtuT+ye5q+I/dEFj++Jq1EvxrVKzfgckomGref0z1XAyXfRHK1LJhC+ZcWlfsR6KLMa3ikaAxvCgt1iS7svr0GrfsmwPcFTBFZ8nrOscrI2Ig5BJ6kBMBqt2wsyau4+3wTI3MlcbRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leZ8FkhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leZ8FkhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC5C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769681033;
	bh=XsI2aH2Qp6oO6XuqJt567yRYYMmS6Z/7izbOzDoPWpo=;
	h=To:Subject:From:Date:From;
	b=leZ8FkhAdUsNqfX35eZIjxz3GXCc29IJzaQk85w07BCH5/Rydzf4Br739aPCSxZ2I
	 MIQakWk4fo2NiMlhn4Jzx6rjsY7YgnBrsnmLdBfQLT4DNdUF18FcuZq/UTFdny+gix
	 kbxQpZ1xqA/fGyV+mkW1G+VfmVWLUCKais0ejJc2a4nGpm7F1pRU5Egh5e7A7bm37v
	 /CjRHD28ynkouXaGGOPPKqo9hg2xqUmYIVbFNa8E5lI4TSryZWZ7lfK7Lw+35h319p
	 kEBhK500HkljK7bPkV0DOUpuhPNp72f16d1DOUnQBQQY0ZSN0r5mZz7wPkRjt0r+ja
	 gUMf5qLq3PQhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E8D358EE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968103360.29485.5544993706320317811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81cac6a6fdd1b4224def5d2538104d048159d6145525877a55d295b3cb92d96
Date: Thu, 29 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769681033
