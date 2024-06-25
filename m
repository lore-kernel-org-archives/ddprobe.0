Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEBB4AEF6
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719349403; cv=none; b=V6eDSPlpyVwNRj8VCmvmyOY0M93na+QJg3AvPp19jgcJjXJSIuQJl+Jv0tosoo4ATwJoW0foRgeBPMqWpr0xSNowsxwiWFEnaA6UQfw33N+deN/ajjthCP9ICiUbpukfiZ13hzhRkhPXH8XJKfmmPZwNiyFHlOgsJIKPChA0DP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719349403; c=relaxed/simple;
	bh=vldIys/rAMWcHcQ8r+dd0XINuGIulfwZvv2Pfq1PB94=;
	h=To:Subject:From:Message-Id:Date; b=m2rn41UPie0UrohxDMz1cJUQkllBhpUEUIk687jRcWBU4EWwM3CeBRC7gyRLcOzJ9jvcomHvG4MzhvpJlp3ZocGU0zFXkhBlmZq+usOykCIW2TBW2rOnyG+Oz48jsdvKd+vh+NfRdPG6poyOaJuumU0tU3PihaCJgFj2cNy04Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmfiUHTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmfiUHTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B1AC4AF07
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719349402;
	bh=vldIys/rAMWcHcQ8r+dd0XINuGIulfwZvv2Pfq1PB94=;
	h=To:Subject:From:Date:From;
	b=LmfiUHTzBfFeyi9fiWaj2vjmoqguPwstluYQOyqtjKtD3mK85vcXacoLdDm/i6z46
	 zvrU7bG0RkKAP9yBGXzKR9GVhyQ1Fg0o6Lh3dvSD2ZfGuJ5rUh3Mar+Uf8Fyrd/aiu
	 rjjPRwI9mzbZ18MwbgnOWNWtjsRAQB4l2hsdzrfODG0Q6jjw/bqZy+KoAuKGI9vlmg
	 9j4z/cioSWEYGEhNxUoFEY8RfwlD7yi5avNVXQDiZHP/uo/BHMsaO8JkdV/lXN7ugY
	 nekNW+/Z8/CKnCN6W3dm5UiTLIFsnB3g3GCMpnAlDz4mIZ4LmKOgFEj8vDCUXfX0z5
	 93QixM387B9eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF69CC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 21:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934940277.31749.14603938780994619323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6399b7291552ab21f9abc5c8fa02b2350326fbcc8a14c46947bf9a0ba5f4288c
Date: Tue, 25 Jun 2024 21:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719349402
