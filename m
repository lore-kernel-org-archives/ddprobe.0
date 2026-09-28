Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD172D9796
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790604634; cv=none; b=p1pkqr9S1lBjuGceEVhzIwHGHEJgc8P8a48zGL+Ben/qHUJfNqP5OEn8gUXhOx3XEoT3lxr7LVBJh56LlLTZXyXAIN9AfVcVH+yVLAuJoGfNU7fo7R2mrox6TI+zXLjugfkMa5UkzsPovWuaoybBZRJ2osdgQMc6YgyFZpplNYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790604634; c=relaxed/simple;
	bh=Ft2HD4UlvbUCp4MT5tkfrjl7F6DdgzfuRnHwpSPnEIY=;
	h=To:Subject:From:Message-Id:Date; b=JhAxN+DG9/DF4a3PKlFYacK1a6ro/+m2D/zmAoB3Z9zvSlnSEvm3rSQu/+WPMLJ7tsYdmhIFGtBWdMo8zbvWd8BHC3BfyjGdv+ytesvjCIbkntzTv+FqvZJCK/5pnNrjaocVtDIbrkxcxSk8jfaQfnSYRbLxn8B18rp/4coM24Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxeX93oB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxeX93oB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0141C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790604633;
	bh=Ft2HD4UlvbUCp4MT5tkfrjl7F6DdgzfuRnHwpSPnEIY=;
	h=To:Subject:From:Date:From;
	b=hxeX93oBRhya0Ha684peJiav5uVJzkSlBjMV0zz8HaBaBoVeLOpDwny2dufYhfu3e
	 2L8a2oRuy7D7bsBJfXbUoOjX2qUqCgmZDEfshNDkyhmG6ia9efbdofpQxsdkdcymZ8
	 jshDJA0F3zyKhhn2jAoJk4GagVwNQmVB84niOA2zuenvu5pfP+mmT8tRKPTWX0oJE8
	 HctEA9MxLvLCQP+Oj45YJ8cTB+KBCzH0FndRa6BwO5fzxm+Vk9nBIj9jdYUiPATZgx
	 JcrhbvwaGIvAwzBvm8lI5Ct2gKInhKejvGQQa3ydwwTjlYOlpbT/4W3UD4C9BAmDSJ
	 q2pv9cudh5bHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD31ACA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060463370.32000.16094727915776469617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4647b411ce472e959aaf598c77f566325b85d4d253bb477d49afbf834bd3542a
Date: Mon, 28 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790604633
