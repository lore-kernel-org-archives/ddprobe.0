Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFB434BA52
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758770395; cv=none; b=D5u1IavtcjvJUBvV/HVsqy6vWLrrFvOUTbtgN19d4iKyassFgs43cuHFCjxR5N6TAmOf+7OUVJYEZ4dPrfbV1LFwvQbQNqxD3fdkItCU76FPuYOK8jZjMhTW6EiM1XbTP2PFOraCEq0ZpYvpekpS7IE7wgBotF/adpBRmdX32JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758770395; c=relaxed/simple;
	bh=abkbGwL3TJgg+jg/RrVf3VwaZTsKorLxsSgT95u4g/w=;
	h=To:Subject:From:Message-Id:Date; b=J+5nERdjk4DcHuCazls2hpD92W/oRMcoTt4V8BE38z79FP/ioBZYMAB3NCcRq7C53dy/2M4CD4PgXpfCYwN3lIG+bXZFddAqg8PU0qz4kNSzJBGq5Om41occ0Q+e3VvOjHPQPLrWcCVtN4gjrWT/GwyG6NIcA9JoCopNaq9RT90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjSwWSjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjSwWSjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A804EC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758770393;
	bh=abkbGwL3TJgg+jg/RrVf3VwaZTsKorLxsSgT95u4g/w=;
	h=To:Subject:From:Date:From;
	b=cjSwWSjViJNeuyNluUu0V3L7FG1ZJ+x32BwboZpp1ihNK8S0y2QwIiuJpzCmqe4lX
	 /BgdvkVcKgGf0BB5Qccd4uUFrw6WxBlEO7BbxCKNxZE8FG8aBd6YZn/oSJIGjH3GIM
	 WF6S5gnaqSu6+ZLqm+446oIpgft15fhxmJjmMgk0Yh0aAlphF4d0gIFmtDXBbBfXHy
	 zvfeQDYY2p1vatWXIOLDhyjDOt6/BwwtsFXTW59ebE/7NJpIgU/dzPqHNxtS2cdOLe
	 n+10qHNqIhJjRqPjmHiwcD060si62Il+Y7Ez4cqNMxj6enyWFyT4Tj+1e8TdFsWudU
	 5Yk/0eEb3hP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC0CAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877039358.25874.17210920518881582847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a7217b9f911aa9e5ae7add2bc33fd1d17df5eb3f2d1832bcea692cc58478d5
Date: Thu, 25 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758770393
