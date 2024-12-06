Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEBD22C6C0
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733522753; cv=none; b=iv3boGLFQuRFUOApZieNQRysP6gok0YhJavwRYTbeOMCiH5NhgR5z3DQ/winC6uwLp4w3nbSP4oO8Gzel8N9auyR5Eibv3qnkUY4Og0yEmrc1tPpqvaHEn2/a9XFM4vffLa3t00PFWQb2IcScZg6+VNpMKRuSKTNdq6vRDRgutc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733522753; c=relaxed/simple;
	bh=0IhBmhZtLbUXahQVefhItKc/imuQvWHMeOHH7NLLEzc=;
	h=To:Subject:From:Message-Id:Date; b=NdVlx/VR1k/7HdbXmHYLD+3ghm8mV6FsWggoZmby8gbI7mjQxqA3QE8/xKq+xmWyO8mzzgykO8brD+JX5Loyqjoc34ICDe5tWRbsMC6ROdcZqu8/t1MkNV4gGeu8Hh1MvUi1GHFjOXWCJlmPbDWRtjhEiwrAuC2QT7VMS63Xnrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BObG7lhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BObG7lhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89C1C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733522753;
	bh=0IhBmhZtLbUXahQVefhItKc/imuQvWHMeOHH7NLLEzc=;
	h=To:Subject:From:Date:From;
	b=BObG7lhHs9UU+Q1jpXgoKn3iwerm/C9kaZq3oUkWtgoiKg0MFS2G3670KZv4zCjfS
	 uVAAMllQjxG3WDLPK6uq3Xm4U/45QorPoqD+dzedciHMmGt2FwUW2V0BhxqhfvajvI
	 LkNgekyOrg0fehEn47NpDsekHo8Gh8zJrBL+urwUehIOeZpIjq4uoJfG//2KIxP8sn
	 2l9mQ+AGOzvkP/S1Ep4lWRtIGiHjnRxfhJlB/qCTTNcn1g11eQAayRVwiXqx7tFfYw
	 nfFUmnzxKo+/XAi4XR/mbQK+WZqp9LYlbIWTTxrItf5q2ZW6VUfn/fzToJf+PxxOPv
	 UPLGP0rKkdglQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1125E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352275364.29919.5935728161468570523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e76f0a2944f776d990c9bdf9f7144d2b362b6e05a6d9be8aa6a8ad9f72ea20e
Date: Fri, 06 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733522753
