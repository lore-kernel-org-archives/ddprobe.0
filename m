Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D104413DDDF
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733478953; cv=none; b=NiJUSrdA1eUzxZCXXaxJBMvm2tRikucrDk8O/lNFV42Hu5WDJdFGYb2cVIHoWtlWeiGReSUad7JkxbG2MPc/fouC+ShJ7HvNvXTyNZtxAz3QHhLLhHeidBpoUQzVO8Ymj5gT6VG2EtDh5VkE6ERnyKAcPDYRDKO/k1HPHk0fWzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733478953; c=relaxed/simple;
	bh=hSOf9ivAZIm4vwXQ5Ae56UrVs0cLa4ORn6Y++KRpHXg=;
	h=To:Subject:From:Message-Id:Date; b=m8DkJcF+DGJWkXe2RN3y4TWx9ugiEcrY3f817OPy0Qlv2yILxCp6PZwv8PryLAyG8doy1VGeKut55RuypjGq6nS0r+Jw4+gQieeIoqOh3Xlzym/nnmBUQRS7i5NMxivapq0RxdDYXc+pMggPHhkTy+ztnJZXlH+/wPxfYGjgIPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPeCe7QB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPeCe7QB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F17C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733478953;
	bh=hSOf9ivAZIm4vwXQ5Ae56UrVs0cLa4ORn6Y++KRpHXg=;
	h=To:Subject:From:Date:From;
	b=nPeCe7QBf53G5iurUEToEF55tfEShf4T8MqFXDks4slFb4adyCD/A5IZqPJAmFoWV
	 H+J2m9mdEhJXfWTbQLFERexQUCMzI2qa7a7Li3760ytNlmYBK5puLlj4f9cooMZk+E
	 QvdNeFvPtdLOSHHuHBJjDytztGXG/yYYvgXwZSeV9MQsOdKfUzAIMt40xULPq+I+OW
	 p8Xui/g8Q+UatY80cCxZ3USqKhRNc7lD6RWzj6j5R1oGGmQDKdBTeTQjdDl/vq995O
	 cyalvEKTdij1+kRoaVhg/prj0U8lGiL4PyWEhPIT+21znvRVja64X5U1Q3drG/1Tfm
	 N9MwYbbqQvWJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4CE7717B
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347895358.874.13202678472699800985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70d9029c08de2ff2e619e4ab54ab259daf5b78c39d9fcfb0d2e44ab93ae2961
Date: Fri, 06 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733478953
