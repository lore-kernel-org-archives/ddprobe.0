Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C871DD55B
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729540554; cv=none; b=nB3KkEgNj1Dn2XEWSAM3ygcHRt2Ke1mVupO8xYziKXO+nY2J51mJs6NRK3gkR6UEDuqKTCs/b6f/9qE1tukhUEhgFnlXjfwVZAafAIjX5ygOej+/ypJrNdOA7aHBy3la7S/HPUIwUwZgjH10eaSLiZoiE6hAuwPbtlcCEeC99ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729540554; c=relaxed/simple;
	bh=LcjrgLfNqdWeoz3kY3POFpEoCHvAS2T8CsYk6F6dORk=;
	h=To:Subject:From:Message-Id:Date; b=Tovmj0lITaR2jhEWKjdNEYLc/WD9l1sgSDnQ5EDyZ0T1nEmYpjlAgf8bpPx3pnhhYlVerUaww2SkqJFxxYI2hVG1ZHIuCrDaBo3Wf0CqqQX6YJcXGMj7ey7529klULZBfh0AgycJqI7xRtp6oYg8RJX23vPcgnwW1KW5MbbHv6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iR+Y3Y7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iR+Y3Y7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4E1C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729540553;
	bh=LcjrgLfNqdWeoz3kY3POFpEoCHvAS2T8CsYk6F6dORk=;
	h=To:Subject:From:Date:From;
	b=iR+Y3Y7ZOyErni6vvcamUbfTGXtlNu+wlowhzEu7eJX8JbxV3Kopsmpo7Zp64Uc0F
	 PFN3bmmM23ow8MCQudBAkV2qN7tZn1sS29rSwSdmCX2J44o0JBSXv8g16ZySMnttIv
	 x593+J3bjNbwYmzKIHYSnb2ETucb4nPANA/MK/EwdQQy8Ib3LPRfetXwaKxpx4bQJi
	 T2lFTQ4h+CKN/XqO3ACRnfOq6CxwRwoCtAjve+otDFz7/yIaqhiXf9riM8SmxNIfNG
	 e14ExmTkqmkcs6ifrUPlf/KiwtM2sLbgOZif+ptFMqYgiNaff6VB3JOrRAOVfCecM4
	 sn1YOlyy+k8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D45FD1712C
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172954055361.15369.11820866057174048667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4e2881133d56ef01ba3861320de6dc2af43e8619e032bf7fbbca6db671273a
Date: Mon, 21 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729540553
