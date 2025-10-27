Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB2216DC28
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761589794; cv=none; b=SlIyC991nM3NcH7rdW49Ul/+h/l6/D6i73MFUIO8HiaVsGlNpT2pxzNQqSoL1Fm2SI75UYNEU2092Zlkl7y8gJLUoL5vKMJ8mOVwv1YLtlxEVpw8D0i1lXr6z5sX0B+TmSbLPQW8Obq7H10itRNJ4+WyL+sngyY8PH1r/EnRxLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761589794; c=relaxed/simple;
	bh=kv4X1KMjZBmPXgtB0FujEbgSU0jQe2MeFOMrU4wAzuk=;
	h=To:Subject:From:Message-Id:Date; b=Mp1DAmJy0mED/9uBmfIkLb1YV/yOu1z75nXmyaeZsc9yntLENKDxi/d7aY2lmRtq3Dza53rAvov9V3AyUZY7LfLtDR8xYM0E2ha7ghJLNM/D4pjc0yMJrVb6YWpm13ug7wM90yIYHs/WU07bQq5zO+UscAtcppHPijBVm+aI/Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1QCA2TP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1QCA2TP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0129C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761589793;
	bh=kv4X1KMjZBmPXgtB0FujEbgSU0jQe2MeFOMrU4wAzuk=;
	h=To:Subject:From:Date:From;
	b=d1QCA2TPr7B78lNunKpd17R70mI6ajXZd+vgoJIc0A429sHuN5wVVCod2nEoKxIaK
	 21l5uD/1V1/thB96Mlbhy5XpikERRIkFBGXqB/2Hk9yhF65+rvhnQztcHf4oIQybeL
	 TzZkkA25uKWc2KswkC8jrBkg9fk7LoLDAhWLFWqurN2nH25u7eCLGQLbmjRm9gbIKb
	 JAcV3BxI/yavZlWZ9iigSbOP9WwIQcUPyrwE1DgWROYbXCJoy7eKNge1/QSZb5sjXb
	 qiArxq+FpoELfbvo8DZQNa84dQiy64824FH0trm6ebE/F9YuNLrvKx++dR7XI0bjTU
	 h0xGlaKOWg9Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93971CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158979359.4822.5938268421029322144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12efb7797a5549368ca2c5d44d589b063c489e4892b90aa327a8eaeb381d9fb1
Date: Mon, 27 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761589793
