Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07966405F7
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766375634; cv=none; b=bmtWZNk/OkDs903gLsez3nLw8JOJ6tFOhR+JGWor4RbUFi+77DmFJK7snHOwcCtP0TnSYeOPrMp4cIDnfgAw4MVAt9YtXsVcqMvcej/WbCschJCK3ANJwfhgi/dBREvBed7YxWmjgPSkyMiSjOpGWXLHRr3ihlApwxCMwBvLRYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766375634; c=relaxed/simple;
	bh=owAVlkEWFk6bprqqLChtQcbFKdv4ODiKzl3zw95838I=;
	h=To:Subject:From:Message-Id:Date; b=qiIc82NuKEazDdkNWUC5zTKU+CNJCBt22jxW91xnEkPHKHekNmYm8qMAKxD/3Yes+4jFcC0vR6Jj3UessrbhkWGELEsvdJM/nIVzIw9sa9dXJweiinKvL9sXFqlIuxmI28FxRNf+U8EgqteHqIgL3BT4ubE8Xc9mcrczi+OdojQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2mxJXN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2mxJXN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F635C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766375633;
	bh=owAVlkEWFk6bprqqLChtQcbFKdv4ODiKzl3zw95838I=;
	h=To:Subject:From:Date:From;
	b=G2mxJXN3KPjcsd4n7p0q8m8s0TIhkVE/L/S+v59g828C3AFTmaMMBXnfUuoTRBAsQ
	 C54j0LnOB+g28iGsBSKRzX9bg1ZdR5lJpyiWhgpYc5HULCzELHpmHjuxFH6U5gs4lf
	 4kybe61iqtLqFSNEyhB23SRLwHVvl0tCKVJf1WYjfqoikXjBdOmZUKwOvNk6nIuV9k
	 VBZuTmzTnzg0jQU3H/Bi7DOlIDBeptNPb+fbTAC4hQQ81L2QNOic8ThLIK/PymBPe+
	 VKpfUUgB4/klVIFPJhDcpAJvnoLQpWtl2ow0AP4X5MAcyLmvNX2e62dEk6VHcHUKxg
	 R8OqBc3S7oRHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF6AD711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637563357.18428.8344085763784374420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf43511c7ba33aa674f7864185afeb805b1868fa9da4d8374014f08c4bd836c
Date: Mon, 22 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766375633
