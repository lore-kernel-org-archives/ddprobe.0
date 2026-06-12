Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B8B377567
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781299594; cv=none; b=V5kA9G6BWeHEYBDBNuThionHD6WurMQiUZXSOCaucWwP+66SsO9Hc8oZEt+h3I0jTdMnNtcKuFAD7YpJ1vFatuEtuFL7PJT3DGVYIQLHnqThDQnnZuDStFdLy4rNhQdQH10sbXIxwdfCjz2IjfO19JSD1WPt0jyBS6Dbz3Fkxug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781299594; c=relaxed/simple;
	bh=cH1fxgopJ61/uDaoz3vls2Swhuhi70SJwaOYKfVFzN4=;
	h=To:Subject:From:Message-Id:Date; b=XUdtSC/9p7XyjzbUZWB8qWx9UBSH9zoRyMKOPJOw/SMFT+mnQHahemoVmHh29ejVuYBPz7A8OwZ79CY7FoQjEJsTO7acgGGS7NkMRYHXV+vHCqqUNgNFs9KCQejhE5AMMm3SB/ivkZUvOh4iBlQA7Y6r4CgdenppNeYCdcWoWmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+e2P/ii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+e2P/ii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38D7C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781299593;
	bh=cH1fxgopJ61/uDaoz3vls2Swhuhi70SJwaOYKfVFzN4=;
	h=To:Subject:From:Date:From;
	b=Y+e2P/iiFtcxcgFf1mqVdEVsmwWMivJ9ipFW5JQKDKI+XWitmozVpk51fWhQhgupQ
	 NE+AdbB17Q/x8s+7YvYMH18Qzg7p9zV9B8onk41onfBsSyZ5i5YOFP5BJ7mlCz2/Rt
	 zcm2LRXN0Me6gvAZcS7zgb89eEwPpu4DYsHq3Gsm9HGF7iGG5j0aCjQ4ry4Bp6miHj
	 a425LrBP38/l3vKEQtUf1RinQyNmjxKiV8zTrlcQ9dIxDFGL6FU7HkGb5lMLH8E+1q
	 m90sclJF+t9H3uZry4u1yanwXSm6p0rcgC7QSWs8g+YwBr6tw1DDy0/czYVJd2gn1k
	 3/8rOREhvXpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9185CD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129959368.30222.6642540869714538539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed028ff63a7128d62a0ae3f1f5146f782ddf6d349137c9a9668ea709d7abcfd3
Date: Fri, 12 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781299593
