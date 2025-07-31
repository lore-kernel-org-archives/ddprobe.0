Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D761E50E
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753997394; cv=none; b=YK3DNJCfrcU+7IfDR97iTmNmcrXL3CMqCkd2vdf1XdaQ5en6g9Q9zHzQqjd7YrriheXymMJUTc8f9HTzQW6OhgDGnvQYbHQGj7c3D6ZV63nIHTU3wTn14uz/xTLqZ4PGQfxqzjHU1F89sLk6qGogQ5wOaEThZF/llw/hJf88iIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753997394; c=relaxed/simple;
	bh=321+PPCf0hbWZZbQdIGCSneJIV8LdEJytJEVGJ/dRVk=;
	h=To:Subject:From:Message-Id:Date; b=ignIOHqptER+kDdpsLQYuLgY/zVy2ip0LA+PvwfqVYD83kbZRMegkwtqfLN8ZNw5emsBNWsDKjOhzo+yvU/eyD9FUKU282ijOzc6p2LCZk56KvILIqj5q0ys6lQC5Vok9yx1/ubX3GMU+m0dfEXtRqOg0sM1ri/A1zpxLs5WuAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0x/LUJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0x/LUJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6F7C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753997393;
	bh=321+PPCf0hbWZZbQdIGCSneJIV8LdEJytJEVGJ/dRVk=;
	h=To:Subject:From:Date:From;
	b=l0x/LUJYc2sHVyWhHmvQos684I53w1+9Agk+VUQIhbcCtTdie2M0z0pAGSJEdhxPo
	 C3MQBVdUsNG+DrwkXZV0QkAel4Qqou5f8/e82dX3Lmqgja3WZP0ssLIyqXVSGPKY2u
	 TbmlDhjDmC8mR8uvteOLJxIn3W+oj0jM0kbg4Vwt2OvTPug5GTG8/ODCEK5sKjvHjy
	 Eg1QnFpRuDndaQyUS8gBOZX8JBZraGAtBST3sfEodV318QZhCZp6+bWhedbpqZHFbr
	 +qrjzinq3QCC+N5mAcCCC0xTsvKRGh+1AOhyhlKykbjKoMjkfmhOHe/r2F7vkfED5j
	 qNqqjWrBmdtCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99478C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399739361.8956.3887452118560881334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8934cb48b1a4c29259be7c1a0e5b1f18da74403ea6126347dec6290dfb70c2de
Date: Thu, 31 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753997393
