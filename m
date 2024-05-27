Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6233610A01
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716779663; cv=none; b=ewd/UcQcGMhMJ9Y+nuH+HWQeYVUZauRetTC5G9j53CEKDCpc2VHrhgMIcvqlgR0mqpdC3alWRtQkkzzw1jPTzkXCWi7ED1MTJtZEwjPKUNs+3zobANXXBwNZE5hbfOStUtoa/4vZl0q+ZJ8twOq8LlSQJLI/vx0j+6s1ojuBYOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716779663; c=relaxed/simple;
	bh=FkQX4DIzbolyiyTEyGjk8G8Wn1QnAi4KOETbmRbpQW8=;
	h=To:Subject:From:Message-Id:Date; b=uzd1bgMGkI6+X5UFe3fVwVoH6CekOFKkPRbUvckU4/uJSKdo5/LDqw1xeHK8oKHfgVv43z1fK0syRzQbPnpFG7YII0Vtali706b9gCDZRTvp9L70ZJ+rLMrn1z4XiDAL2nYbOMefTYVVJuXJ86Ort+iMfdINkCLWqXseyUTvJB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dv37p/gZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dv37p/gZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4274C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716779662;
	bh=FkQX4DIzbolyiyTEyGjk8G8Wn1QnAi4KOETbmRbpQW8=;
	h=To:Subject:From:Date:From;
	b=Dv37p/gZXpM93NlN+KRHAn5rPhLFiwTkS5eNPiEXHaXYorK9cnuC9Gaydj+4d4lwK
	 r50yIZ2kvs0SNXThbwdUYsRVycNVLy9w5WDTXWTrlJchjTp7cF15laUEPDYn9E9zXU
	 XTOfoljIEpWSKRP1YQP6jgWxjM4ZVAR4J3hm8Mqi8IIeH90rfAYWDp/1Ch8EURqEgP
	 F9eWML8sJ0Klfp30vLXc2CiSG3K/NERrASjka6JLaF978YZBkae9vBYSMp38MTSfGJ
	 kHHO4v4AcPwK+u1VRC7FyBHIMfwpojrWqcNYPBHNmPzMJCiiglEatzGg3jOlsSthw9
	 HGZPXXqN6u6YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF543C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 03:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677966280.2694.7697669939781714139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ddbbb301fc3bd410262900e247340fce60fe8642cb78cccfa9b786c537d49f6
Date: Mon, 27 May 2024 03:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716779662
