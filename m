Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D2B43E9C8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778517034; cv=none; b=DfFjxaQHOWMDID3L/O/EL0SwkCnXgLxHiAfaCnjLN4KP95cJx8Jqdmj0lcy62mqOqiZH10L8Mbd6DA+9xCzwHaMi1JOyXEO6zcyzQi1K4TVbRzSlaYij7h69CZZhgGNkoNsyduUsqejNoHORsPt74Q1tIrfqjbvqv+y0vIdmyK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778517034; c=relaxed/simple;
	bh=Pdj8RycvFNXIcAGjXg89p1CKCDsYW46I9puhaho0USg=;
	h=To:Subject:From:Message-Id:Date; b=fkAsm1V8cjh4Op3EsuYTBmXVfWNTfm7hSFel1NFZ0Z2mr0gr+W7z4CsSH4po4r4rLt1dX9QVrq1KtL59G0T/yHCe/ircIz2DiU8ygyiOWPL1hJLhLQbjBykPCYdin3bQc4QkK5Y0LhkqfzCb8AXWb2Oi5OI6hJqAJMIwd4sKeuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ValFddno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ValFddno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF492C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778517033;
	bh=Pdj8RycvFNXIcAGjXg89p1CKCDsYW46I9puhaho0USg=;
	h=To:Subject:From:Date:From;
	b=ValFddno8YHGuFaAYzOj8oxheTmp7IPoFzntVQnEI+YllBhh+7QZK6ddFFqy2WBBp
	 ZFNDoN1OkrbVJOjnzoJTR5Ok1kkjWhpB8pFgvBXxwMSlxY+SAnbN3HSS+gIh4GBnJN
	 PD+NzN68xRGDhLveJHd7RIQzeVbW3V1NY3lSRt9ptKGRGcIjBcGkRRzKQNtuo27h9I
	 kflaHyc42VioH5/H8L3DgKhLUwrOylslJO/GsAZBgZAyvQ16CYmZeX32s4jq/0H4Y6
	 4haBX1l8RBnuv5gnsblo4SHQX0vDXO0qf/dovSuElEjIzzYGaPRj7Fu70iP5CLW/PP
	 WUJCGh0+szBew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0827CD484C
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851703369.30667.8406066141294202260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65798dfeac8d1f83aeac9049c5173c47ffad3cf7968b9678150c6d5c01efcdff
Date: Mon, 11 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778517033
