Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5A2370ACE
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792326034; cv=none; b=rQWHWv/E9MOxSxKVbsLenDA8sDpy4Cv6BuGaDNBUR/WkKRJsgcQr+zeaXGFMdWJd07jr7kGbQIMe220KQtO1bUU+WhGxLO6aQ9Y7hEzYC1l5YA4Iw6ZfHRUDEvh5G3LjM5s09d5ufOnj1/FeBl7EZIimFsooKZnM7tcqa0igKhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792326034; c=relaxed/simple;
	bh=4lIxtuamFbV/p7WXkWvKgPrDuoE0lsQE500juIfSJm4=;
	h=To:Subject:From:Message-Id:Date; b=TxMWpKaR2OPzkrAqfrCLE4avLmuGYrZDO/hhfIEyTvCOwx4QfrqDb96L5fwH+ZPBf0HEISU+OrV3ZzyCt8GYcLlDdfN6kZxTznKP+u38Pa8IBISeEuhSmlEOywAIjZBdh+tWbEkye1jeeAlnKLehfTD8nJsnGuyWqX3uuAoEP8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usvOsoSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usvOsoSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4416C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792326033;
	bh=4lIxtuamFbV/p7WXkWvKgPrDuoE0lsQE500juIfSJm4=;
	h=To:Subject:From:Date:From;
	b=usvOsoSX9u0Wjpgjz8s1JjSW03tBBc98W/KUIdrOuMaQXLgGwJH8BwEq7KG0hH5t0
	 F7mJQhr0XSi4yeNuOMbIyle1tVxIykJakuwBlw/6fcj45MZGWYhuDS3BrCTwBGL0C/
	 CcpDsmLrlwF+vBA2Mi0tgMfbyqhHK8HUXvhjz3jUgJVok8Nydu/v2EMO6j9QCqEvlh
	 NaLI9pQZVqc9ehNEsDPPgY3BzxzRVxcKDI86xRtJh0p8XbD1jYY/yewshfscHcBU1i
	 hbm1cajaSsdKoF4DMBZ1QO6drGKxYbFAqt/QFEHvWNzq8IQC9Qm5iyHKZzEDl+ntZI
	 GRyMuluZaAbQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7CACCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232603368.23158.4132934309240657282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ba546d84b7dacbf99965fa85d6bdaa48f44b174060b477a2e14966814a75ba
Date: Sun, 18 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792326033
