Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BCC1F4706
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733525154; cv=none; b=BgF34zESgaI2xNKQnK6Y7DPsw4mw4wQ5mXLw7MBjE+P4mlmlbRgHzXM4tmR1IY5NzeHVWkjaTbRYvAvWO9J0uNuL/Fbw/q+ZlbHcgHhMdQFgjDyy+rubqgFbxLSGIVMc9MnbVzM6NN58D9DR/gnGbxH8rvss6umOExSJT63hHuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733525154; c=relaxed/simple;
	bh=e9LQdJslP/UmPtceS5yBLD2ku1z+6VQv4cIhdb+XlZ4=;
	h=To:Subject:From:Message-Id:Date; b=i2O9TzBBr5Y15v6ZBQZi0OpE2rXSS/bRVBvzG+mQhz8U5xERYYLTGa99DXtByG9aJcUWPCInFXeIYzDfkX2bNZwQn7iLgZNT3V97TfahFlNcPiFOtA9R8+R1R9bXpHyFxgb3yyr24nMCnV5L7AO2h7MqxcNfX/RL7kDcVwTYD+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibMGEdgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibMGEdgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF8C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733525153;
	bh=e9LQdJslP/UmPtceS5yBLD2ku1z+6VQv4cIhdb+XlZ4=;
	h=To:Subject:From:Date:From;
	b=ibMGEdgGHEA83vLgkUzF3l6CbyboORiKHajWU5HJV4Ha1iIAdNEQQNKBKvs3iASF+
	 Xnk3NuqDG7oG2iHuvBuspnDJmcOVMQ3sf30Pvf5tLHa5Wn2/dOTVAxaVVbRUrGbik+
	 lU/aBn/hEVIHG6Kwa00DVjQ1+d8zHqZHUiwAtIXyjZVyMg80c7Li0+5nBclFmm/I6S
	 YLlKQXy//s03S2RAvaXETpqmfUmQYbHcAvOzi9NkHuZCOMx7lCZk7tPRnwyhyEV0gA
	 JJb9e55aY4NiVCA2zUDLfBiX21vZLFoJLrnFbrY21EnHv4ZQa+gUsaCXjAFIvPegSN
	 LVue31nRAh98g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91680E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352515358.19009.4421065691419780886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afab63a41dd95efdc9c3dbda6ce81edc356341591df86795fa21842c9bebd7d0
Date: Fri, 06 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733525153
