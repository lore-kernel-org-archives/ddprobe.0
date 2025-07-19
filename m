Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EF914F70
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752946794; cv=none; b=BUUy+rcalacq+Lm6lnaYlqYhrZ0M5jtoR2ZXS+Ec6GIBnXlZHu5wjZaS26pfZ8az+KanbkMeTqygeqNC/9uYf/re/0J+lvRb2oWQS3qKQMrtrSjgfeppwgOHG3d55bcNqV2MYvSFgA7CpKVTQlk+HnP1hWt4jg4MZNn6CxdwIr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752946794; c=relaxed/simple;
	bh=66IxSIR6jUyPasG7N43rmKDko43h2Uxc4ppZcFapSzg=;
	h=To:Subject:From:Message-Id:Date; b=IFIjUxagfMAUSIoMqT92H1Vg+xh1HLelmj+6gEHzKUWYCHBC+/5QrdQUEzE2ZsSeIe7WeNThA9kcV3WOUotXE0DnQL7iK1bg64v7wwhPPZ+EtolEig+tNNrFeAWq2b5STE5DEf5k2hEIedK4MTpDZduc+zwCWYIdKSdkJ9pVF3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpuS7nRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpuS7nRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F576C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752946793;
	bh=66IxSIR6jUyPasG7N43rmKDko43h2Uxc4ppZcFapSzg=;
	h=To:Subject:From:Date:From;
	b=fpuS7nRbSH6An9pmO8EmTWrbQPLM7u8J37ZHRzY4Av3lwzd/hdyfVLo2P4dMGSou9
	 CaV6o85sje4hTS4j6+n6Fw7tpXiSilmTrRAMqDzB7BxTWjA5FZPzVT2DL+s7eL1oIj
	 A9+XBnQZ1bct+6erceInp8c/RW/as7zA3xykgVAn3Z1gtRRYF3rvqTIbQNJydltEzj
	 vgVEL7zAnKKD0kCxgAbyKTkwgjeZjms3kROqJanFKwPSZpG9neyMC2AYgmd4K14KLU
	 N2l3VTwWCpgQtKZWgcinhAjS9VW5GM6xh7M8ATSYGu+29Fx4LX+qAiRtSe0iTnwGxu
	 yShZ4ijBzD9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC56C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294679357.24835.200837400224599854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a31255cef4df05faac64567126ffb8a5b26e0dd25916ca029d86de3927b5cb
Date: Sat, 19 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752946793
