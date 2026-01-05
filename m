Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E025478D
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767575034; cv=none; b=sgrSDmZkF0e/UjTUGU7vN4WO82RdKcGxgFXqfRBywNwk/fzUr5goC5UXUU8H1OUbMXMCXIeadiakrdMZfDXE1r6BYkQXRvwCNHI5U/wAFqHScruXNXz9SsqNOLzVM9xXqYb7MJCa81QeZZw3qopdS15D3GfSLKAAC78bOBLUsnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767575034; c=relaxed/simple;
	bh=VNd34Bb3QCNp0FhUTvxdsWwLkjXDXkcx3oXU2Dj1H40=;
	h=To:Subject:From:Message-Id:Date; b=dmcBJ7vOtH+4HFtDSJ3Y6Tmukp46LrHiWwu+0DRe0doO1I8VeWB6Bl6v0Be2qyQejsrqqVLJzZ48RKjEjtdzhTRwuVdTvItjjHMnhTGguZ+Azz7gGqHDgkRCljZzMCGSvQ1sT2ALN4T6x/T/TFg23801qUVvT/lf/0kwUxQT72I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohD0yyAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohD0yyAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B148C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767575033;
	bh=VNd34Bb3QCNp0FhUTvxdsWwLkjXDXkcx3oXU2Dj1H40=;
	h=To:Subject:From:Date:From;
	b=ohD0yyAjbo11JNQK/wwKwT+PRUCjjnYVuBoeCSq3rvtBECfdD6zjISVadRLVHXDLu
	 ffr/ObJAAx8tyRXgKbOWpeZ6wUN7egN3YkUOYN+1MAl+19hQCg7Ng7faStmOFo2lj/
	 +Ar3f0VmjC8e3nAO/4JjjukTA4wPFKWI/6AZ4Nw7SR6g56gRBsbd+cqxcWTblZ1nbb
	 /Su8jy8U867zB3N1DzaQDLAAURUyGs5ymAwxuP/pq91/LM9xYK8Ww4+A4Wa5fElocl
	 AiEB/KUrs/bnhxz6vk7rrEVVwEfsk7jN80VFU/Cx2Z5q02ejpCCXCeKX6fXcgelclx
	 ewxkTwHkrY6qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB4C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757503357.16410.8018690507550082007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9e1d84bed3ccf44537be74c35a037315010cede583aad37bed8834570f2322
Date: Mon, 05 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767575033
