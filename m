Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702041366
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719866723; cv=none; b=nZ3iM8MtYiKSJ+U8Ks6NuOvCNCaWxmPT0LiaUg+XdYYQbSTHfityXYEBJThPeZ+G+qsKCb7lXSrdkWl/POBo19qSo4rUhzJieHeUweG9q5soTExKBynPIAngspPat8OoTeCRKssphL+YY8qT+suLbTVTZa7i1q4h9Wq6rL1Bu84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719866723; c=relaxed/simple;
	bh=uw8VlRNOqJtueQ28U61C2+gHQ66ViLx92UYmY/ggPOo=;
	h=To:Subject:From:Message-Id:Date; b=IvmhPPPjCI+hr6aiEYSb1asj6qZNQwW/KMJh5R8OBYQaFyN9ANBtimfAVUDm9Vmpsn8t7pQ448rMAxRg7jah7l4Z6sbn7tm/hlT8eCcYwhP9yqVGUprVdnQl6Fw8Xsro+rqJEoAn7JGSMwu9ZBc9ROT4aGOkZrSYOrFkYcyq6JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mH4UuNj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mH4UuNj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C49C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719866722;
	bh=uw8VlRNOqJtueQ28U61C2+gHQ66ViLx92UYmY/ggPOo=;
	h=To:Subject:From:Date:From;
	b=mH4UuNj6225Z6ZvgvJ/3UlFowkxMnTBmOIg3j+uvGZ2QhiX25xsD3mnTBlwxnwu8d
	 fKACPnM12+rXhUyQS7EmLuQgjL83xTBx+ci8mpsD4gcAiOhI5vTEZKM9XunflPpHhD
	 Q5LDp4/eMBmZfohekDfDdTQaNwRW+e8pYMBSw7yYewTCxpxFv9/mbYBOpw9sasitlU
	 mgV5Xow+7gNfA5aC5aP71DHjk3TRTXyhlHaMH1uDqqgSM4/rqErlx67jx5zpoRqzo9
	 jVcBRbS9tsDGdDgMQnCPye/EHOIupcVJwdgn2//C/rREi9rv92vOe2Xyhi/kkgYiue
	 bDVZnXiq1rDBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3F2C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 20:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986672276.4957.1918668881341397024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d8c36384655c983d1be5a5a12073eb35dd1c760c7c85d9333bf2e8903ce36d
Date: Mon, 01 Jul 2024 20:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719866722
